USE [dbBilling]
GO
/****** Object:  StoredProcedure [dbo].[sp_Invoice_SC9RA1]    Script Date: 11/16/2016 12:27:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










/****** Object:  Stored Procedure dbo.sp_Invoice_SC9RA1    Script Date: 8/25/2005 10:51:02 AM ******/
ALTER PROCEDURE [dbo].[sp_Invoice_SC9RA1] @group varchar(100),@by int, @bp int ,@p tinyint AS
/*Created based on sp_SC9R1_org. Changes made to reflect new ConEd rate structure effective 4/1/2005. Procedure written to be reverse compatible.*/
/***2/5/2008 Michelle T. line 220-227 added and commented out to accomodate for a single case where building is not using an esco for a specific account,billyear and billperiod. Value .2217 was hardcoded for a single case incident with portfolio Bromely companies, pd.8/2008 ******/

set nocount on
--Michelle T. 4/1/2009. commented declaration of variable below to modify rate variable to round to the requested decimal places.
--declare @shadow tinyint,@INV_NOTE nvarchar(500),@display varchar(50),@commandline varchar(800),@sum decimal(18,2), @f float,@bldg varchar(20),@c int, @mc int,@aonfee decimal(18,4),@tnum varchar(20),@sqft int,@bname varchar(300),@utility int,@afee float ,@tgrtcost decimal(18,2),@ext tinyint,@rt int,@stax float,@energy decimal(18,2),@subamt decimal(18,2),@dstart datetime,@dend datetime,@ypid int,@id int,@lid int, @mult int,@op decimal(18,2),@bcredit decimal(18,2),@ofp decimal(18,2),@prev decimal(18,2),@curr decimal(18,2),@used decimal(18,2),@rprev decimal(18,2),@rawoff decimal(18,2),@rawon decimal(18,2),@rcurr decimal(18,2),@rused decimal(18,2),@dpeak datetime,@cid float,@d decimal(18,2),@tstrt varchar(200),@tcity varchar(20),@tzip varchar(10),@tname varchar(100),@afeedollar decimal(18,2),@credit decimal(18,6),@bgs varchar(100),@btname varchar(50),@btstrt varchar(100),@btcity varchar(50),@btstate varchar(5),@btzip varchar(10),@tstate char(2),@dd decimal(18,5),@rtid int,@rgid tinyint,@er1 decimal(18,5),@er2 decimal(18,5),@er3 decimal(18,5),@sum1 decimal(18,2),@dr1cost decimal(18,5),@taxexempt tinyint,@sum2 int,@pdemand decimal(18,2),@dr1 decimal(18,6),@dr2 decimal(18,6),@dr3 decimal(18,6),@pdemand1 decimal(18,2),@nocredit tinyint,@bid int,@pdemand2 decimal(18,2),@pdemand3 decimal(18,2),@grt float,@fuel float,@increase decimal(18,4),@totalamt decimal(18,2), @addonfeedollar decimal(18,2),@acnt int,@demand decimal(18,4),@prorate decimal(18,6),@cfuel float,@admin float,@blend tinyint,@m1diff tinyint,@m2diff tinyint,@er1a decimal(18,5),@er1b decimal(18,5),@er2a decimal(18,5),@er2b decimal(18,5),@dr1a decimal(18,5),@dr1b decimal(18,6),@dr2a decimal(18,6),@dr2b decimal(18,6),@dr3a decimal(18,6),@dr3b decimal(18,6),@m1 tinyint,@m2 tinyint,@edetail varchar(4000),@ddetail varchar(2000),@fcost decimal(18,2),@gecost decimal(18,2),@gdcost decimal(18,2),@bid_id int, @adjs decimal(18,2),@coincident tinyint,@demand_c decimal(18,6),@emac1 decimal(18,6),@emac1a decimal(18,6),@emac1b decimal(18,6),@dmac1 decimal(18,6),@dmac1a decimal(18,6),@dmac1b decimal(18,6),@eMSC1 decimal(18,6),@eMSC1a decimal(18,6),@eMSC1b decimal(18,6),@dMSC1 decimal(18,6),@dMSC1a decimal(18,6),@dMSC1b decimal(18,6),@sum_eff decimal(18,2), @esco_cost decimal(18,6),@energy_esco decimal(18,2),@energy1 decimal(18,2)
--Michelle T. 5/18/2009 modify variable @demand decimal(18,4) to decimal(18,2) to show two places after the decimal.  Rounding function was applied where @demand variable was calculated.
--N.Ambo 5/19/2009 modified variables @dr1cost and @grt to hvae correct data type of decimla(18,6)
--Michelle T. 7/21/2009. ammended code to pull mac value only for bills with commodity figures and both MSC and MAC when Full service 
--Xiu F. 9/9/2009. modify to accomodate for mid month rate change		
--Michelle T. 10/21/2009. second mac adjustment rate not being picked up and number of days applied to that rate was not calculating properly

declare @shadow tinyint,@INV_NOTE nvarchar(500),@display varchar(50),@commandline varchar(800),@sum decimal(18,2), @f decimal(18,6), @escototamnt decimal(18,6),@bldg varchar(20),@c int, @mc int,@aonfee decimal(18,4),@tnum varchar(20),@sqft int,@bname varchar(300),@utility int,@afee float ,@tgrtcost decimal(18,2),@ext tinyint,@rt int,@stax float,@energy decimal(18,2),@subamt decimal(18,2),@dstart datetime,@dend datetime,@ypid int,@id int,@lid int, @mult int,@op decimal(18,2),@bcredit decimal(18,2),@ofp decimal(18,2),@prev decimal(18,2),@curr decimal(18,2),@used decimal(18,2),@rprev decimal(18,2),@rawoff decimal(18,2),@rawon decimal(18,2),@rcurr decimal(18,2),@rused decimal(18,2),@dpeak datetime,@cid float,@d decimal(18,2),@tstrt varchar(200),@tcity varchar(20),@tzip varchar(10),@tname varchar(100),@afeedollar decimal(18,2),@credit decimal(18,6),@bgs varchar(100),@btname varchar(50),@btstrt varchar(100),@btcity varchar(50),@btstate varchar(5),@btzip varchar(10),@tstate char(2),@dd decimal(18,5),@rtid int,@rgid tinyint,@er1 decimal(18,6),@er2 decimal(18,6),@er3 decimal(18,5),@sum1 decimal(18,2),@dr1cost decimal(18,6),@taxexempt tinyint,@sum2 int,@pdemand decimal(18,2),@dr1 decimal(18,6),@dr2 decimal(18,6),@dr3 decimal(18,6),@pdemand1 decimal(18,2),@nocredit tinyint,@bid int,@pdemand2 decimal(18,2),@pdemand3 decimal(18,2),@grt decimal(18,6),@fuel float,@increase decimal(18,4),@totalamt decimal(18,2), @addonfeedollar decimal(18,2),@acnt int,@demand decimal(18,2),@prorate decimal(18,6),@cfuel float,@admin float,@blend tinyint,@m1diff tinyint,@m2diff tinyint,@er1a decimal(18,12),@er1b decimal(18,12),@er2a decimal(18,12),@er2b decimal(18,12),@dr1a decimal(18,12),@dr1b decimal(18,12),@dr2a decimal(18,12),@dr2b decimal(18,12),@dr3a decimal(18,12),@dr3b decimal(18,12),@m1 tinyint,@m2 tinyint,@edetail varchar(4000),@ddetail varchar(2000),@fcost decimal(18,2),@gecost decimal(18,2),@gdcost decimal(18,2),@bid_id int, @adjs decimal(18,2),@coincident tinyint,@demand_c decimal(18,6),@emac1 decimal(18,6),@emac1a decimal(18,9),@emac1b decimal(18,9),@dmac1 decimal(18,6),@dmac1a decimal(18,7),@dmac1b decimal(18,7),@eMSC1 decimal(18,6),@eMSC1a decimal(18,6),@eMSC1b decimal(18,6),@dMSC1 decimal(18,6),@dMSC1a decimal(18,6),@dMSC1b decimal(18,6),@sum_eff decimal(18,2), @esco_cost decimal(18,6),@energy_esco decimal(18,2),@energy1 decimal(18,2)
declare @srate1 datetime, @erate1 datetime, @srate2 datetime, @erate2 datetime, @endMonDate DATETIME 

declare @m3diff int, @mdiff int, @month int, @month2 int, @month3 varchar(2),@year varchar(4)
declare @dstart1 datetime
declare @emac1c decimal(18,12), @emsc1c decimal(18,12),  @er2c decimal(18,12)
declare @dr1c as decimal(18,12),@dr2c as decimal(18,12), @dr3c as decimal(18,12)
declare @dmac1c as decimal(18,12), @dmsc1c as decimal(18,12)

declare @m1diffmc decimal(18,2), @m2diffmc decimal(18,2),@mcStart1 datetime, @mcEnd1 datetime, @mcStart2 datetime, @mcEnd2 datetime
declare @utilitybilltotalKWH int --rsm 10152015
declare @utilitybilltotalamount dec(18,2) --rsm 10152015
declare @utilitybilllmepcredit dec(18,2) --rsm 10152015
declare @acctidid varchar(100) --rsm 11192015 


if @p=0
	begin
	set @commandline='declare x1 cursor read_only for select distinct leaseutilityid,tenantnum,bldgnum,utility from ['+@group+'] where procname=''sp_Invoice_SC9RA1'' and leaseutilityid not in(select leaseutilityid from tblbillbyperiod where reject=0 and  billyear='+ltrim(str(@by))+' and billperiod='+ltrim(str(@bp))+') and ratetenant in(select id from ratetypes where typecheck=''SC9RA1'')'
	end
else
	begin
	set @commandline='declare x1 cursor read_only for select distinct leaseutilityid,tenantnum,bldgnum,utility from ['+@group+'] where procname=''sp_Invoice_SC9RA1'' and leaseutilityid not in(select leaseutilityid from tblbillbyperiod where reject=0 and  billyear='+ltrim(str(@by))+' and billperiod='+ltrim(str(@bp))+') and ratetenant in(select id from ratetypes where typecheck=''SC9RA1'') and leaseutilityid in(select lid from billyrperiod_partial p,billyrperiod b where p.ypid=b.ypid and b.billyear='+ltrim(str(@by))+' and billperiod='+ltrim(str(@bp))+')'
	end

exec  (@commandline)
open x1
fetch next from x1 into @lid,@tnum,@bldg,@utility
	while (@@fetch_status <> -1)
	begin
		if (@@fetch_status <> -2)
		begin
		if exists(select * from consumption where meterid in(select meterid from meters where leaseutilityid=@lid)and billyear=@by and billperiod=@bp)
			begin
			if exists (select * from billyrperiod_partial where lid=@lid and ypid in(select ypid from billyrperiod where bldgnum=@bldg and billyear=@by and billperiod=@bp and utility=@utility))
				begin
				set @p=1
				end
			else
				begin
				set @p=0
				end
			select @shadow=shadow,@inv_note=bill_note from tblleasesutilityprices where leaseutilityid=@lid
			select @bgs=strt,@btname=btbldgname,@btstrt=btstrt,@btcity=btcity,@btstate=btstate from buildings where bldgnum=@bldg
			select @bid=l.billingid,@sqft=sqft,@bname=billingname,@afee=adminfee,@rt=tl.ratetenant ,@tname=tname,@tstrt=tstrt,@tcity=tcity,@tzip=tzip,@mc=count(meterid),@aonfee=addonfee,@tstate=tstate from tblleases l,tblleasesutilityprices tl,meters m where l.billingid=tl.billingid and tl.leaseutilityid=m.leaseutilityid and tl.leaseutilityid=@lid and m.online=1  and nobill=0  group by sqft,billingname,adminfee,tl.ratetenant ,tname,tstrt,tcity,tzip,addonfee,l.billingid,tstate
			select @coincident=coincident from tblleasesutilityprices where leaseutilityid=@lid 
			select @addonfeedollar=isnull(round(sum(cost),2),0)  from (select distinct b.addonfee * count(meterid) as cost from building_addonfee b,meterprices p where b.id=p.addonfee and meterid in(select meterid from meters where leaseutilityid=@lid and nobill=0  and online=1) group by b.addonfee)a
			select @acnt=count (distinct addonfee) from meterprices  where meterid in(select meterid from meters where online=1 and nobill=0 and leaseutilityid =@lid)
			if @acnt=1
				begin
				select distinct @aonfee= b.addonfee from building_addonfee b,meterprices p where b.id=p.addonfee and meterid in(select meterid from meters where online=1 and nobill=0 and leaseutilityid =@lid)
				end
			else
				begin
				set @aonfee=0
				end
			select @rgid=region from buildings where bldgnum=@bldg
			select @rtid=id from ratetypes where type='SC9RA1' and regionid=@rgid
			/*if @blend=1 billperiod only in one month else blend for 2 months*/
			if @p=0
				BEGIN
				select @dstart=datestart,@dend=dateend,@mdiff=datediff(mm,datestart,dateend)+1,@endMondate=dateend-datepart(dd,dateend),@dd=datediff(dd,datestart,dateend)+1,@m1diff=case when datediff(dd,datestart,dateend-datepart(dd,dateend))+1<0 then 0  else datediff(dd,datestart,dateend-datepart(dd,dateend))+1 end,@m2diff=case when datediff(dd,dateend-datepart(dd,dateend),dateend)<0 then 0 else datediff(dd,dateend-datepart(dd,dateend),dateend) end ,@ypid=ypid,@blend=case when datepart(month,datestart)=datepart(month,dateend) then 1 else 2 end  from billyrperiod where billyear=@by and billperiod=@bp and bldgnum=@bldg and utility=@utility
				
				if @mdiff=3
				begin
					--select @dstart=datestart,@dend=dateend, @month =datepart(mm,datestart)-1,@month2=datepart(mm,dateend)-1,@m1diff=case when Day(DateAdd(Month, 1, @month2) - Day(DateAdd(Month, 1, @month)))<0 then 0 else Day(DateAdd(Month, 1, @month2) - Day(DateAdd(Month, 1, @month))) end , @dd=datediff(dd,datestart,dateend)+1, @m2diff=case when datediff(dd,dateend-datepart(dd,dateend),dateend)<0 then 0 else datediff(dd,dateend-datepart(dd,dateend),dateend) end ,@m3diff=case when @dd-(@m1diff+@m2diff)<0 then 0  else @dd-(@m1diff+@m2diff) end,@ypid=ypid,@blend=case when datepart(month,datestart)=datepart(month,dateend) then 1 else 2 end  from billyrperiod where billyear=@by and billperiod=@bp and bldgnum=@bldg and utility=@utility
					select @dstart=datestart,@dend=dateend, @month =datepart(mm,datestart)-1,@month2=datepart(mm,dateend)-1,@m1diff=case when Day(DateAdd(Month, 1, @month2) - Day(DateAdd(Month, 1, @month)))+1<0 then 0 else Day(DateAdd(Month, 1, @month2) - Day(DateAdd(Month, 1, @month)))+1 end , @dd=datediff(dd,datestart,dateend)+1, @m2diff=case when datediff(dd,dateend-datepart(dd,dateend),dateend)<0 then 0 else datediff(dd,dateend-datepart(dd,dateend),dateend) end ,@m3diff=case when @dd-(@m1diff+@m2diff)<0 then 0  else @dd-(@m1diff+@m2diff) end,@ypid=ypid,@blend=case when datepart(month,datestart)=datepart(month,dateend) then 1 else 2 end  from billyrperiod where billyear=@by and billperiod=@bp and bldgnum=@bldg and utility=@utility
					
				end
				
				end
			else
				begin
				select @dstart=p.datestart,@dend=p.dateend,@endMondate=p.dateend-datepart(dd,p.dateend),@dd=datediff(dd,p.datestart,p.dateend)+1,@m1diff=case when datediff(dd,p.datestart,p.dateend-datepart(dd,p.dateend))+1<0 then 0  else datediff(dd,p.datestart,p.dateend-datepart(dd,p.dateend))+1 end,@m2diff=case when datediff(dd,p.dateend-datepart(dd,p.dateend),p.dateend)<0 then 0 else datediff(dd,p.dateend-datepart(dd,p.dateend),p.dateend) end ,@ypid=p.ypid,@blend=case when datepart(month,p.datestart)=datepart(month,p.dateend) then 1 else 2 end  from billyrperiod b,billyrperiod_partial p where b.ypid=p.ypid and p.lid=@lid and b.billyear=@by and b.billperiod=@bp and b.bldgnum=@bldg and b.utility=@utility
				END
			--Added for the case 2 rates in a month, 9/9/2009 --Xiu
			if @blend=1
			BEGIN
			
			IF @dstart > '4/1/2010'
			BEGIN
			SET @m2diff=@dd
			END 
			
			set @endMonDate=@dend-datepart(dd,@dend)+1
			 END 
			else
				set @endMonDate=@dend-datepart(dd,@dend)
				
			SELECT * FROM [Rate] where ratefrom='0' and enddate>@dstart and monthstart=datepart(MM, @endMonDate) and type=@rtid and ItemType='Energy' and linecharge=23
	
			if @@rowcount > 1
				BEGIN
				SET @blend=3
				DECLARE @dd2 INT 
					select @srate1=startdate, @erate1=enddate FROM [Rate] where enddate>=@dstart and startdate<=@dstart and type=12 and ItemType='Energy' and linecharge=23
					select @srate2=startdate, @erate2=enddate FROM [Rate] where enddate>=@dend and startdate<=@dend and type=12 and ItemType='Energy' and linecharge=23
					SET @dd2=DATEDIFF(DD,@erate1, @srate2)
					
					if @dd2=1--DATEDIFF(DD,@erate1, @srate2)=1
						begin
							set @m1diff=datediff(dd,@dstart,@erate1)+1
							set @m2diff=datediff(dd,@srate2,@dend)+1
						END
		
				END
--code implemented for 3 month proration
			select @month3 = datepart(month,dateadd(month,1, @dstart))
			select @year = datepart(year,dateadd(month,1, @dstart))			
			select @dstart1= convert(datetime, @month3+'/1/'+@year)
			
		
			--end here 9/9/2009
			set @prorate=@dd/30
			set @sum=(select sum([used]) from consumption where meterid in(select meterid from meters where leaseutilityid=@lid and online=1 and nobill=0)  and billyear=@by and billperiod=@bp)
		--Michelle T. 7/21/2009 ammended code below to pull mac value only for bills with commodity figures and both MSC and MAC when Full service 
			select @acctidid = acctid from tblLeasesUtilityPrices where LeaseUtilityId = @lid  --rsm 11192015
			
			if @acctidid <> '' and @acctidid != '0' --rsm 11/19/2015
			   begin
			     select @escototamnt=escoBillAmt from utilitybill where ypid=@ypid  and acctid = @acctidid
			   end
			else
			   begin
			     select @escototamnt=sum(isnull(escoBillAmt,0)) from utilitybill where ypid=@ypid and AcctID in (select acctid from tblAcctSetup where bldgnum = @bldg and escoref <> '0')
			   end
			
			if @escototamnt=0
				Begin
				    select distinct @stax=salestax ,@f=fueladj,@grt=grossreceipt,@credit=sum(isnull(unit_credit,0)),@esco_cost=sum(escoFixedRate) from utilitybill where ypid=@ypid group by salestax ,fueladj,grossreceipt
				End
			else
			  if @acctidid <> '' and @acctidid != '0'
				Begin
					select @stax=salestax ,@f=mac,@grt=grossreceipt,@credit=isnull(unit_credit,0),@esco_cost=escoFixedRate from utilitybill where ypid=@ypid and AcctID = @acctidid
				END
			  else
			    Begin
					select distinct @stax=salestax ,@f=mac,@grt=grossreceipt,@credit=sum(isnull(unit_credit,0)),@esco_cost=escoFixedRate from utilitybill where ypid=@ypid and AcctID in (select acctid from tblAcctSetup where bldgnum = @bldg and escoref <> '0') group by salestax ,mac,grossreceipt, escofixedrate
				END


			if @acctidid <> '' and @acctidid != '0'
			   begin
				select @utilitybilltotalKWH = sum(isnull(totalkwh,0)) from utilitybill where ypid=@ypid and AcctID = @acctidid--rsm 11192015
				select @utilitybilltotalamount = sum(isnull(escobillamt,0)) from utilitybill where ypid=@ypid and AcctID = @acctidid--rsm 11192015
				select @utilitybilllmepcredit = sum(isnull(lmepcredit,0)) from UtilityBill where ypid=@ypid and AcctID = @acctidid--rsm 11192015
			   end
			else
			   begin
			    select @utilitybilltotalKWH = sum(isnull(totalkwh,0)) from utilitybill where ypid=@ypid and AcctID in (select acctid from tblAcctSetup where bldgnum = @bldg and escoref <> '0') --rsm 11192015 only from esco utility bills
			    select @utilitybilltotalamount = sum(isnull(escobillamt,0)) from utilitybill where ypid=@ypid and AcctID in (select acctid from tblAcctSetup where bldgnum = @bldg and escoref <> '0')--rsm 11192015
			    select @utilitybilllmepcredit = sum(isnull(lmepcredit,0)) from UtilityBill where ypid=@ypid and AcctID in (select acctid from tblAcctSetup where bldgnum = @bldg and escoref <> '0')--rsm 11192015
			   end

			select @credit = @utilitybilllmepcredit / @utilitybilltotalKWH --rsm 10152015
			select @esco_cost = @utilitybilltotalamount / @utilitybilltotalKWH  --rsm 10152015	
				
declare @MSCstr varchar(100), @MSCconvert decimal(18, 6), @MSCindex int
select distinct @MSCstr=MSCDetail from utilitybill where ypid=@ypid 
select @MSCstr
set @MSCindex= charindex('sc9rA1=', @MSCstr)
set @MSCstr= substring(@MSCstr, @MSCindex+7, len(@MSCstr)-@MSCindex-7)
select @MSCstr


set @MSCindex= charindex('|', @MSCstr)
set @MSCstr= substring(@MSCstr, 0, @MSCindex)

select @MSCstr

if(@mscstr = '')
  begin
     set @MSCstr = 0
  end

set @MSCconvert = Convert(decimal(18,6), @MSCstr)
SET @MSCconvert=ISNULL(@MSCconvert,0)
select @MSCconvert


			/*FIND ENERGY RATES*/
			
			IF @dend >= '4/1/2010'
			BEGIN
			
			DECLARE @er1aa DECIMAL(18,12),@er2aa DECIMAL(18,12),@er1bb dECIMAL(18,12),@er2bb dECIMAL(18,12)

			IF @dstart < '4/1/2010'
			BEGIN 
				--extra variables declare to hold rates not part of the 4/1/2010 structure change
			select @er1aa=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and ratefrom=0 and rateto=15000 and  @dstart between startdate and enddate
			
			select @er2aa=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Energy'and type=@rtid and ratefrom=15001 and rateto>=99999 and @dstart between startdate and enddate
			SELECT  @er1aa=ISNULL(@er1aa,0),@er2aa=ISNULL(@er2aa,0)
			
			END 
			ELSE 
			IF @dstart >= '4/1/2010'
			begin 
			select @er1aa=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and linecharge=23 and ratefrom=0 and rateto>=99999 and  @dstart between startdate and enddate
			SET @er2aa=0
			SET  @er1aa=ISNULL(@er1aa,0)
			END
			--for end dates after 4/1/2010
			select @er1bb=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Energy' and linecharge=23 and type=@rtid and ratefrom=0 and rateto>=99999 and  @dend between startdate and enddate
			
			SET @er2bb=0
			SET @er1bb=ISNULL(@er1bb,0)
			SET @er1=@er1aa+@er1bb

			IF @blend = 3
			BEGIN 
			DECLARE @m1diffa INT, @m1diffb INT ,@er1c DECIMAL(18,12)
			SElect @m1diffa=DATEDIFF(dd,@dstart,@erate1)+1,@m1diffb=DATEDIFF(dd,@srate1,@erate1)+1
			select @er1a=rate*cast(@m1diffa as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid AND linecharge=23 and ratefrom=0 and rateto>=99999 and  @dstart between startdate and enddate
			SELECT @er1c=rate*cast(@m1diffb as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid AND linecharge=23 and ratefrom=0 and rateto>=99999 and  @erate1+1 between startdate and enddate
	
			
			select @er1b=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid AND linecharge=23 and ratefrom=0 and rateto>=99999 and  @dend between startdate and enddate
			SELECT @er1a=ISNULL(@er1a,0),@er1b=ISNULL(@er1b,0),@er1c=ISNULL(@er1c,0)
			SET @er1=ROUND(@er1a+@er1b+@er1c,6)
	
			END 
				if @mdiff=3
					begin
						select @Emac1c=rate * cast(@m3diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and linecharge=64 and datepart(month,dateadd(month,1, @dstart)) between monthstart and monthend
						and startdate between @dstart and @dend and enddate between @dstart and @dend

						select @Emsc1c=rate * cast(@m3diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and linecharge=63 and datepart(month,dateadd(month,1, @dstart)) between monthstart and monthend
						and startdate between @dstart and @dend and enddate between @dstart and @dend
						SELECT @Emac1c=ISNULL(@Emac1c,0),@Emsc1c=ISNULL(@Emsc1c,0)
						select  @er1c=isnull(rate,0) * (cast(@m3diff as decimal(18,2))/cast(@dd as decimal(18,2))) 
						from rate where itemtype='Energy' and type=@rtid AND 
						linecharge=23 and ratefrom=0 and rateto=99999
						and @dstart1 between startdate and enddate
						SET  @er1=@er1+@er1c					
						
						END

			END 

			ELSE 
			BEGIN 
			

			/*Block 1*/
			select @er1=rate,@er1a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and ratefrom=0 and rateto=15000 and  @dstart between startdate and enddate
			select @er1b=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and ratefrom=0 and rateto=15000 and  @dend between startdate and enddate
			
			/*Block 2*/
			select @er2=rate,@er2a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Energy'and type=@rtid and ratefrom=15001 and rateto>=99999 and @dstart between startdate and enddate
			select @er2b=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and ratefrom=15001 and rateto>=99999 and @dend between startdate and enddate
		
			end
			/*ENERGY MAC */
			if @dend>='4/1/2005' /*MAC charges added to rate effective 4/1/2005*/
				begin
				if @dstart<'4/1/2005'
					begin
					select @Emac1=rate from rate where itemtype='Energy' and type=@rtid and linecharge=64 and @dend between startdate and enddate
					end
				else
					begin
--Michelle T. 10/21/2009. second mac adjustment rate not being picked up, and number of days applied to that rate not calculating properly for mid month rate changes
--uncomment block below for a blend of mac adjustment and comment original emac1, emac1a and emac1b
					select @Emac1=rate,@Emac1a=rate * cast(@m1diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and linecharge=64 and @dstart between startdate and enddate
					select @Emac1b=rate * cast(@m2diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and linecharge=64 and @dend between startdate and enddate
					
					end
				END
			SET @Emac1=ISNULL(@Emac1a,0)+ISNULL(@emac1b,0)+ISNULL(@Emac1c,0)
-----------------------------------------------------------------------------------------				
				IF @dstart >= '1/31/2010'
				BEGIN 
					SET @emsc1=@mscConvert
				END 
			IF @dend >= '4/1/2010' AND @mdiff <> 3
			BEGIN 
			select @Emac1=rate,@Emac1a=rate * cast(@m1diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and linecharge=64 and @dstart between startdate and enddate
			select @Emac1b=rate * cast(@m2diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and linecharge=64 and @dend between startdate and enddate
			

			SET @Emac1a=ISNULL(@Emac1a,0)
			SET @Emac1b=ISNULL(@Emac1b,0)
			SET @Emsc1a=ISNULL(@Emsc1a,0)
			SET @Emsc1b=ISNULL(@Emsc1b,0)
			END 
			
			/*FIND ENERGY BLOCKS*/
			if @dstart<'4/1/2005' and @dend>='4/1/2005'
				begin
				set @sum_eff= @sum*cast(datediff(dd,'4/1/2005',@dend+1) as decimal(18,2))/cast(@dd as decimal(18,2))
				end
			else
				begin set @sum_eff=@sum end
			set @sum1=case when @sum>15000 then 15000 else @sum end
			/*Proration of 1st 15000 was commented out on 4/19/05 by coris per George Nemeth and ConEd...this is not suppose to be done*/
			--set @sum1=round((@sum1*@dd/30),2)
			if @sum>15000
				begin
				set @sum2=@sum-@sum1
				end
			else
				begin
				set @sum2=0
				end
	
	------------------------------------------------------------------------------		
			IF @dend > = '4/1/2010'
			BEGIN
			SELECT @sum1=0, @sum2=0
			IF @dstart < '4/1/2010'
			BEGIN 
			set @sum1=case when @sum>15000 then 15000 else @sum end
			/*Proration of 1st 15000 was commented out on 4/19/05 by coris per George Nemeth and ConEd...this is not suppose to be done*/
			--set @sum1=round((@sum1*@dd/30),2)
			if @sum>15000
				begin
				set @sum2=@sum-@sum1
				end
			else
				begin
				set @sum2=0
				end
			END 
			ELSE 
		--on 4/1/2010 all kwh will be charged on one rate tier (0-infinity)kwh
			IF @dstart >= '4/1/2010'
			begin 
			SET @sum=@sum
			END
			END 

			
			/*FIND DEMAND RATES*/
			if @coincident=0
				begin
				set @pdemand=(select sum([demand]) from peakdemand where meterid in(select meterid from meters where leaseutilityid=@lid and online=1 and nobill=0)  and billyear=@by and billperiod=@bp)		
				end
			else
				begin
				set @pdemand=(select demand from coincidentdemand where leaseutilityid=@lid and  billyear=@by and billperiod=@bp)		
				END
				
				
			IF @dend < '4/1/2010'
			BEGIN 	
			select @dr1=rate,@dr1a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=0 and rateto=5 and @dstart between startdate and enddate
			select @dr1b=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=0 and rateto=5 and @dend between startdate and enddate
			select @dr2=rate,@dr2a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=6 and rateto=900 and @dstart between startdate and enddate
			select @dr2b=rate*cast(@m2diff as decimal(18,2))/@dd  from rate where itemtype='Demand'and type=@rtid and ratefrom=6 and rateto=900  and @dend between startdate and enddate
			select @dr3=rate,@dr3a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand' and type=@rtid and ratefrom=901 and rateto>=999 and @dstart between startdate and enddate
			select @dr3b=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=901 and rateto>=999  and @dend between startdate and enddate
			END 
			IF @dend > ='4/1/2010'
				BEGIN 
			select @dr1b=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=0 and rateto=5 and @dend between startdate and enddate
			select @dr2b=rate*cast(@m2diff as decimal(18,2))/@dd  from rate where itemtype='Demand'and type=@rtid and ratefrom=6 and rateto=100  and @dend between startdate and enddate
			select @dr3b=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=101 and rateto>=999999  and @dend between startdate and enddate
	
			IF @dstart < '4/1/2010'
				BEGIN 
			
				select @dr1=rate,@dr1a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=0 and rateto=5 and @dstart between startdate and enddate
				select @dr2=rate,@dr2a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=6 and rateto=900 and @dstart between startdate and enddate
				select @dr3=rate,@dr3a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand' and type=@rtid and ratefrom=901 and rateto>=999 and @dstart between startdate and enddate
				END 
				IF @dstart >='4/1/2010'
				BEGIN 
				select @dr1=rate,@dr1a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=0 and rateto=5 and @dstart between startdate and enddate
				select @dr2=rate,@dr2a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=6 and rateto=100 and @dstart between startdate and enddate
				select @dr3=rate,@dr3a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand' and type=@rtid and ratefrom=101 and rateto>=999999 and @dstart between startdate and enddate
			
			if @mdiff = 3
			begin
				select @dr1c=rate*cast(@m3diff as decimal(18,2))/@dd 
				from rate where itemtype='Demand' 
				and linecharge = 24 and type=@rtid 
				and ratefrom=0 and rateto=5 and @dstart1 between startdate and enddate
				
				select @dr2c=rate*cast(@m3diff as decimal(18,2))/@dd  
				from rate where itemtype='Demand' and type=@rtid  
				and linecharge = 24 and ratefrom=6 and rateto=100  and @dstart1 between startdate and enddate

				select @dr3c=rate*cast(@m3diff as decimal(18,2))/@dd 
				from rate where itemtype='Demand' and linecharge = 24 
				and type=@rtid and ratefrom=101 and rateto>=999999  and @dstart1 between startdate and enddate					

				select @dr1a as dr1, @dr1b as dr1b, @dr1c as dr1c, @dr2a as dr2a, @dr2b as dr2b, @dr2c as dr2c, @dr3a as dr3a, @dr3b as dr3b, @dr3c as dr3c
			end
			
			
			
			
			END 
									
		END 
		
   
---------- Demand accomodation for April/2010 structure change--------------------------------------------------------------------------------------------------------	

			/*DEMAND MAC & MSC*/
			if @dend>='4/1/2005' /*MSC/MAC charges added to rate effective 4/1/2005*/
				begin
				if @dstart<'4/1/2005'
					begin
					select @dmac1=rate from rate where itemtype='Demand' and type=@rtid and linecharge=64 and @dend between startdate and enddate
					end
				else
					begin
					select @dmac1=rate,@dmac1a=rate * cast(@m1diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Demand' and type=@rtid and linecharge=64 and @dstart between startdate and enddate
					select @dmac1b=rate * cast(@m2diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Demand' and type=@rtid and linecharge=64 and @dend between startdate and enddate
					set @dmac1b=isnull(@dmac1b, 0)
					end
				end
--Michelle Truong. Comment demand blocks to accomodate for 4/1/2010 structure change
			/*FIND DEMAND BLOCKS*/
		
--amended code to accomodate for 4/1/12010 structure change Michelle Truong
				select @pdemand1 = 0, @pdemand2=0, @pdemand3=0
			DECLARE @pdemand2B DECIMAL(18,2),@pdemand3B DECIMAL(18,2)
		
			IF @dend>='4/1/2010'
			BEGIN 
			
			set @pdemand1=case when @pdemand<5 then 5 when @pdemand>5 then 5  else @pdemand end 
			if @pdemand>5
			BEGIN 
			IF @dstart < '4/1/2010'
			
				begin
				set @pdemand2=case when @pdemand>900 then 900-@pdemand1 else @pdemand-@pdemand1 end
				set @pdemand2b=case when @pdemand>100 then 100-@pdemand1 else @pdemand-@pdemand1 end
				
		
				IF @pdemand>100
				set @pdemand3b=@pdemand-100
				ELSE
				SET @pdemand3b=0
				
				
				
				if @pdemand>900
				set @pdemand3=@pdemand-900
				ELSE
				SET @pdemand3=0
				
			end
			ELSE
			IF @dstart >= '4/1/2010'
			begin
				set @pdemand2=case when @pdemand>100 then 100-@pdemand1 else @pdemand-@pdemand1 end
			
			
				if @pdemand>100
				BEGIN 	
				set @pdemand3=@pdemand-100
				END
				ELSE
				BEGIN
				SET @pdemand3b=0
				END
				
			
			END 
			END  
			END 
			ELSE 
			IF @dend <'4/1/2010'
			BEGIN 
			
			set @pdemand1=case when @pdemand<5 then 5 when @pdemand>5 then 5  else @pdemand end 
			if @pdemand>5
				begin
				set @pdemand2=case when @pdemand>900 then 900-@pdemand1 else @pdemand-@pdemand1 end
				end
			else	
				begin
				set @pdemand2=0
				end
			if @pdemand>900
				begin
				set @pdemand3=@pdemand-900
				end
			else
				begin
				set @pdemand3=0
				end
			END 

			/*BLEND RATES IF NECESSARY*/
			if @dend < '4/1/2010' AND @blend<>1 --or @er1a<>@er1b
				begin
				set @er1=@er1a+@er1b
				set @er2=@er2a+@er2b
				set @dr1=@dr1a+@dr1b
				set @dr2=@dr2a+@dr2b
				set @dr3=@dr3a+@dr3b
				if @dstart<='4/1/2005'
					begin
					set @Emac1=@Emac1
					set @Emsc1=0
					set @dmac1=@dmac1*cast(datediff(dd,'4/1/2005',@dend+1) as decimal(18,2))/cast(@dd as decimal(18,2))
					set @dmsc1=0
					end
				else
					begin
					set @Emac1=@Emac1a+@Emac1b
					set @Emsc1=0
					set @dmac1=@dmac1a+@dmac1b
					set @dmsc1=0
					end
				END
				IF @dstart>='1/31/2010'
				SET @Emsc1=@mscConvert
				/*IF @dend >= '4/1/2010' AND @blend =1
				BEGIN 
				SET @er1=@er1aa
				SET @er2=@er2aa
				END*/ 
				SET @dmac1=ISNULL(@dmac1,0)			

			/*CALC ENERGY COSTS*/
			
			
				IF @dend > = '4/1/2010'
				BEGIN 
			    DECLARE @energyM decimal(18,2),@energyMb decimal(18,2),@cchargeaa DECIMAL(18,2),@cchargebb decimal(18,2)
				DECLARE @emac1bb DECIMAL(18,6),@gemsc DECIMAL(18,6)
				SET @emac1bb=@emac1b

				IF @dstart < '4/1/2010'
				BEGIn 
				 SET @emsc1b=ROUND(ISNULL(@emsc1b,0),6)				
				 --SET @emsc1=ROUND(@emsc1a+@emsc1b,6)
				 
				 SET @emac1=ROUND(@emac1a,6)
				 set @fcost=round((@sum*@f),2)
				 SET @gemsc=@sum_eff*@Emsc1
				 SET @energyM=ROUND((@er1aa*@sum1),2)+ROUND((@er2aa*@sum2),2)+ROUND((@sum_eff*@Emac1a),2)
				 SET @energyMb=ROUND((@er1bb*@sum),2)+ROUND((@sum_eff*@emac1bb),2)
				 SET @gecost=ROUND((@energyM+@energyMb+@fcost+@gemsc)*@grt,2)
				 SET @energy=ROUND(@energyM+@energyMb+@fcost+@gecost,2)+ROUND(@sum_eff*@Emsc1,2)
 
					set @edetail=convert(varchar(20),@sum1)+'KWH @ $'+convert(varchar(20),@er1aa)+'= $'+convert(varchar(20),cast((@er1aa*@sum1)as decimal(18,2)))
					+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@er2aa)+'= $'+convert(varchar(20),cast((@er2aa*@sum2)as decimal(18,2)))
					--+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))
					+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) 
					+'|TOTAL MARCH CONSUMPTION = $'+convert(varchar(20),@energyM)
					+'|'
					+'|'+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@er1bb)+'= $'+convert(varchar(20),cast((@er1bb*@sum)as decimal(18,2)))
					--+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@mscConvert)+'= $'+convert(varchar(20),cast(@sum_eff*@mscConvert as decimal(18,2)))
					+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1bb)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1bb as decimal(18,2))) 
					+'|TOTAL APRIL CONSUMPTION = $'+convert(varchar(20),@energyMb)
					+'|'
					+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@emsc1 as decimal(18,2)))
					+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)
					+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) 
					+'|COMBINED TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)

					end

			ELSE 	

	IF @dstart >= '4/1/2010' 
	BEGIN 
		IF @mdiff <> 3
			SET @emac1=@emac1a+@emac1b 
		ELSE 
			SET @emac1=@emac1
set @gecost=((@er1*@sum)+(@sum*@f)+ (case when @dend>='4/1/2005' then @sum_eff*@Emac1 else 0 end))*@grt  --rsm  07012013 to make sure added to @energy
set @energy=
	((round((@ER1*@sum),2)+
	round((@sum*@f),2)+round((@sum_eff*@Emac1),2) +
	 round((@sum_eff*@mscConvert),2)  *
	(1+@grt))) + @gecost --rsm added @gecost  
set @fcost=round((@sum*@f),2)
--set @gecost=((@er1*@sum)+(@sum*@f)+ (case when @dend>='4/1/2005' then @sum_eff*@Emac1 else 0 end))*@grt  --rsm moved above

	
	
		set @edetail=convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@er1)+'= $'+convert(varchar(20),cast((@er1*@sum)as decimal(18,2)))
		--+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@er2)+'= $'+convert(varchar(20),cast((@er2*@sum2)as decimal(18,2)))
		+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)
		+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@mscConvert)+'= $'+convert(varchar(20),cast(@sum_eff*@mscConvert as decimal(18,2)))
		+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) 
		+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) 
		+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
	END 
	END 
	ELSE 
		IF @dend < '4/1/2010'
		BEGIN 

			set @energy=
				/*first 15000 (prorated)*/((@er1*@sum1)+
				/*>15000*/(@sum2*@er2)+
				/*fuel adj*/(@sum*@f)+
				/*MAC >4/1/2005*/case when @dend>='4/1/2005' then @sum_eff*@Emac1 else 0 end)*
				/*Gross Receipt*/(1+@grt)
			set @fcost=round((@sum*@f),2)
			set @gecost=((@er1*@sum1)+(@sum2*@er2)+(@sum*@f)+ (case when @dend>='4/1/2005' then @sum_eff*@Emac1 else 0 end))*@grt

			if @dend<'4/1/2005'

				begin
				set @edetail=convert(varchar(20),@sum1)+' KWH @ $'+convert(varchar(20),@er1)+'= $'+convert(varchar(20),cast((@er1*@sum1)as decimal(18,2)))+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@er2)+'= $'+convert(varchar(20),cast((@er2*@sum2)as decimal(18,2)))+'|Fuel Adj. '+convert(varchar(20),@sum)+'@ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost)+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
				end

			else
				begin
				set @edetail=convert(varchar(20),@sum1)+' KWH @ $'+convert(varchar(20),@er1)+'= $'+convert(varchar(20),cast((@er1*@sum1)as decimal(18,2)))+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@er2)+'= $'+convert(varchar(20),cast((@er2*@sum2)as decimal(18,2)))+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2)))+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost)+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
				end
		END 

		IF @dend >='4/1/2010'
		BEGIN  
		IF @dstart < '4/1/2010'
		BEGIN 
		SELECT @dr1=@dr1a,@dr2=@dr2a, @dr3=@dr3a
		
		END 
		ELSE
		BEGIN 
		SELECT @dr1=ISNULL(@dr1a,0)+ISNULL(@dr1b,0)+ISNULL(@dr1c,0)
		SELECT @dr2=ISNULL(@dr2a,0)+ISNULL(@dr2b,0)+ISNULL(@dr2c,0)
		SELECT @dr3=ISNULL(@dr3a,0)+ISNULL(@dr3b,0)+ISNULL(@dr3c,0)
		END 
		END 


			/*Demand Costs*/
			set @dr1cost=@dr1/5
			
		--5/18/2009 Michelle T. commented block above to incorporate rounding
			set @demand=
				/*first 5 (flat charge)*/((case when @pdemand1>0 then round((@dr1*@dd/30),2) else 0 end)+
				/*6-900*/round(((@dr2*@dd/30)*(@pdemand2)),2)+
				/*>900*/round(((@dr3*@dd/30)*(@pdemand3)),2)+
				/*MAC >4/1/2005*/case when @dend>='4/1/2005' then round(((@dmac1*@dd/30)*@pdemand),2) else 0 end)*
				/*Gross Receipt*/(1+@grt)
			set @gdcost=(((@dr1cost*@dd/30)*@pdemand1)+((@dr2*@dd/30)*@pdemand2)+((@dr3*@dd/30)*@pdemand3)+(case when @dend>='4/1/2005' then ((@dmac1*@dd/30)*@pdemand) else 0 end))*@grt
			
			set @subamt=(@energy+isnull(@demand,0))
--moved block of code lower down to pick up right demand value due to 4/1/2010 structure change. Michelle Truong
			/*CALC ESCO COSTS
			if @esco_cost > 0 
				begin
					set @energy_esco=round(@sum*@esco_cost,2) 
					set @energy1=@energy_esco
         				set @subamt=@subamt+@energy_esco
					set @edetail = @edetail + '| |ESCO Total Cost = '+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@esco_cost)+'= $'+convert(varchar(20),cast((@energy_esco)as decimal(18,2)))+'|Total = $'+convert(varchar(20),@energy1)+' + $'+convert(varchar(20), @demand + @energy)+'= $'+convert(varchar(20),@subamt)
				end	*/

--2/5/2008 Michelle T. block commented below used for a single case accomodating to consumption charges when no esco is used, value 0.2217 was hard coded for a specific account,billyear and billperiod. 
			/*else
				begin
					set @energy_esco=round(@sum*0.22172)	
					set @energy1=@energy_esco
					set @subamt=@subamt+@energy_esco
					set @edetail=@edetail + '| |ESCO Total Cost = '+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@esco_cost)+'= $'+convert(varchar(20),cast((@energy_esco)as decimal(18,2)))+'|Total = $'+convert(varchar(20),@energy1)+' + $'+convert(varchar(20), @demand + @energy)+'= $'+convert(varchar(20),@subamt)
				end
			*/
			if @dend<'4/1/2005'
				begin
				set @ddetail=convert(varchar(20),@pdemand1)+' KW @ $'+convert(varchar(20),@dr1cost)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr1cost*@dd/30)*@pdemand1 as decimal(18,2)))+'|'+convert(varchar(20),@pdemand2)+' KW @ $'+convert(varchar(20),@dr2)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr2*@dd/30)*@pdemand2 as decimal(18,2)))+'|'+convert(varchar(20),@pdemand3)+' KW @ $'+convert(varchar(20),@dr3)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr3*@dd/30)*@pdemand3 as decimal(18,2)))+'|Gross Receipt @ '+convert(varchar(20),@grt)+' = $'+convert(varchar(20),@gdcost)+'|TOTAL DEMAND = '+convert(varchar(20),@demand)
				end
			ELSE

			IF @dend >= '4/1/2010'
			BEGIN 
			DECLARE @dr1costB DECIMAL(18,6),@gdcostA DECIMAL(18,2),@gdcostB DECIMAL(18,2),@demandA DECIMAL(18,2), 
			@demandB DECIMAL(18,2),@dr22b DECIMAL(18,6),@dr33b DECIMAL(18,6)
			SET @dr1costB=@dr1b/5
			SET @dr22b=@dr2b
			SET @dr33b=@dr3b
			
				IF @dstart < '4/1/2010'
				BEGIN 
				
				set @demandA=
				((case when @pdemand1>0 then round((@dr1*@dd/30),2) else 0 end)+
				round((@dr2*@dd/30)*(@pdemand2),2)+
				round((@dr3*@dd/30)*(@pdemand3),2))--*(1+@grt))
					
			set @demandB=
				((case when @pdemand1>0 then round((@dr1b*@dd/30),2) else 0 end)+
				round((@dr22b*@dd/30)*(@pdemand2b),2)+
				round((@dr33b*@dd/30)*(@pdemand3b),2))--*(1+@grt))
				
				SET @gdcost=(@demandA+@demandB+ROUND(((@dmac1*@dd/30)*@pdemand),2) +round(((@dmsc1*@dd/30)*@pdemand),2)) *@grt
				SET @demand=@demandA+@demandB+@gdcost+ROUND(((@dmac1*@dd/30)*@pdemand),2) +round(((@dmsc1*@dd/30)*@pdemand),2) 
				set @subamt=(@energy+isnull(@demand,0))
				set @ddetail=convert(varchar(20),@pdemand1)+' KW @ $'+convert(varchar(20),@dr1cost)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr1cost*@dd/30)*@pdemand1 as decimal(18,2)))
				+'|'+convert(varchar(20),@pdemand2)+' KW @ $'+convert(varchar(20),@dr2)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr2*@dd/30)*@pdemand2 as decimal(18,2)))
				+'|'+convert(varchar(20),@pdemand3)+' KW @ $'+convert(varchar(20),@dr3)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr3*@dd/30)*@pdemand3 as decimal(18,2)))
				+'|MARCH TOTAL DEMAND = '+convert(varchar(20),@demandA)
				+'|'
				+'|'+convert(varchar(20),@pdemand1)+' KW @ $'+convert(varchar(20),@dr1costB)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(ROUND((@dr1costB*@dd/30)*@pdemand1,2) as decimal(18,2)))
				+'|'+convert(varchar(20),@pdemand2b)+' KW @ $'+convert(varchar(20),@dr22b)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(ROUND((@dr2b*@dd/30)*@pdemand2b,2) as decimal(18,2)))
				+'|'+convert(varchar(20),@pdemand3b)+' KW @ $'+convert(varchar(20),@dr33b)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(ROUND((@dr3b*@dd/30)*@pdemand3b,2) as decimal(18,2)))
				+'|APRIL TOTAL DEMAND = '+convert(varchar(20),@demandB)
				+'|'
				+'|MSC Adj Factor '+convert(varchar(20),@pdemand)+' KW @ $'+convert(varchar(20),@dmsc1)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(((@dmsc1*@dd/30)*@pdemand) as decimal(18,2)))
				+'|MAC Adj Factor '+convert(varchar(20),@pdemand)+' KW @ $'+convert(varchar(20),@dmac1)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(((@dmac1*@dd/30)*@pdemand) as decimal(18,2)))
				+'|Gross Receipt @ '+convert(varchar(20),@grt)+' = $'+convert(varchar(20),@gdcost)
				+'|TOTAL DEMAND= '+convert(varchar(20),@demand)
				
			
			
			END 
			
			IF @dstart>='4/1/2010'
			BEGIN 
			SET @dmsc1=0
			set @dr1cost=@dr1/5
			--5/18/2009 Michelle T. commented block above to incorporate rounding

			set @demand=
				/*first 5 (flat charge)*/((case when @pdemand1>0 then round((@dr1*@dd/30),2) else 0 end)+
				/*6-900*/round(((@dr2*@dd/30)*(@pdemand2)),2)+
				/*>900*/round(((@dr3*@dd/30)*(@pdemand3)),2)+
				/*MAC >4/1/2005*/case when @dend>='4/1/2005' then round(((@dmac1*@dd/30)*@pdemand),2) else 0 end)*
				/*Gross Receipt*/(1+@grt)
			set @gdcost=(((@dr1cost*@dd/30)*@pdemand1)+((@dr2*@dd/30)*@pdemand2)+((@dr3*@dd/30)*@pdemand3)+(case when @dend>='4/1/2005' then ((@dmac1*@dd/30)*@pdemand) else 0 end))*@grt
			
			set @subamt=(@energy+isnull(@demand,0))
			set @ddetail=convert(varchar(20),@pdemand1)+' KW @ $'+convert(varchar(20),@dr1cost)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr1cost*@dd/30)*@pdemand1 as decimal(18,2)))+'|'+convert(varchar(20),@pdemand2)+' KW @ $'+convert(varchar(20),@dr2)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr2*@dd/30)*@pdemand2 as decimal(18,2)))+'|'+convert(varchar(20),@pdemand3)+' KW @ $'+convert(varchar(20),@dr3)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr3*@dd/30)*@pdemand3 as decimal(18,2)))+'|MSC Adj Factor '+convert(varchar(20),@pdemand)+' KW @ $'+convert(varchar(20),@dmsc1)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(((@dmsc1*@dd/30)*@pdemand) as decimal(18,2)))+'|MAC Adj Factor '+convert(varchar(20),@pdemand)+' KW @ $'+convert(varchar(20),@dmac1)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(((@dmac1*@dd/30)*@pdemand) as decimal(18,2)))+'|Gross Receipt @ '+convert(varchar(20),@grt)+' = $'+convert(varchar(20),@gdcost)+'|TOTAL DEMAND = '+convert(varchar(20),@demand)

			SELECT cast((@dr1cost*@dd/30)*@pdemand1 as decimal(18,2)),cast((@dr2*@dd/30)*@pdemand2 as decimal(18,2))	
			SELECT cast(((@dmsc1*@dd/30)*@pdemand) as decimal(18,2)) AS msc,cast(((@dmac1*@dd/30)*@pdemand) as decimal(18,2)) AS mac	
			END 
			
			END 
			else
			IF @dend<'4/1/2010'
			
				begin
				set @ddetail=convert(varchar(20),@pdemand1)+' KW @ $'+convert(varchar(20),@dr1cost)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr1cost*@dd/30)*@pdemand1 as decimal(18,2)))+'|'+convert(varchar(20),@pdemand2)+' KW @ $'+convert(varchar(20),@dr2)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr2*@dd/30)*@pdemand2 as decimal(18,2)))+'|'+convert(varchar(20),@pdemand3)+' KW @ $'+convert(varchar(20),@dr3)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr3*@dd/30)*@pdemand3 as decimal(18,2)))+'|MAC Adj Factor '+convert(varchar(20),@pdemand)+' KW @ $'+convert(varchar(20),@dmac1)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(((@dmac1*@dd/30)*@pdemand) as decimal(18,2)))+'|Gross Receipt @ '+convert(varchar(20),@grt)+' = $'+convert(varchar(20),@gdcost)+'|TOTAL DEMAND = '+convert(varchar(20),@demand)
				END



		/*CALC ESCO COSTS*/
			if @esco_cost > 0 
				begin
					set @energy_esco=round(@sum*@esco_cost,2) 
					set @energy1=@energy_esco
         			set @subamt=@subamt+@energy_esco
					set @edetail = @edetail + '| |ESCO Total Cost = '+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@esco_cost)+'= $'+convert(varchar(20),cast((@energy_esco)as decimal(18,2)))+'|Total = $'+convert(varchar(20),@energy1)+' + $'+convert(varchar(20), @demand + @energy)+'= $'+convert(varchar(20),@subamt)
				end	

			set @tgrtcost=@gdcost+@gecost
			select @nocredit=lmepexempt,@taxexempt=taxexempt from tblleases where billingid=@bid
			/*Calc Adjustments (+) - Added 10/14/2004 - CoriS*/
			if exists(select *  from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1 and amt>0)
				begin
				select @adjs=sum(abs(amt)) from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1  and amt>0
				set @subamt=@subamt+@adjs
				end
			else
				begin
				set @adjs=0
				END

			/*Calc Credit (-) - Added 10/14/2004 - CoriS*/
			if @nocredit=1
				begin
				set @bcredit=0
				if exists(select amt from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1 and amt<0)
					begin
					select @credit=sum(abs(amt)) from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1  and amt<0
					end
				else
					begin
					set @credit=0
					end
				--set @subamt=@subamt-@credit --rsm original code 8012013
				set @subamt=@subamt
				set @afeedollar=round(@subamt*@afee,2)
				set @subamt=@subamt+@afeedollar+@addonfeedollar
				end
			else
				begin
				set @bcredit=round(@credit*@sum,2)
				if exists(select amt from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1 and amt<0)
					begin
					select @credit=@bcredit+sum(abs(amt)) from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1 and amt<0
					end
				else
					begin
					set @credit=@bcredit+0
					end
				--set @subamt=round(@subamt-@credit,2)  --rsm original code 08012013
				set @subamt=round(@subamt,2)
				set @afeedollar=round((@subamt)*@afee,2)
				set @subamt=round(@subamt+@afeedollar+@addonfeedollar,2)
				end	
			if @taxexempt=1
				begin
				set @stax=0
				end

			--set @totalamt=round(@subamt+(round((@subamt*@stax),2)),2)  --rsm 08012013 original logic
			set @totalamt=round(@subamt+(round((@subamt*@stax),2)),2) - @credit

			insert into tblbillbyperiod (leaseutilityid,ypid,subtotal,salestax,tax,totalamt,tenantname,adminfee,ratetenant,billyear,billperiod,datestart,dateend,bldgnum,tenantnum,billingname,fueladj,sqft,utility,tstrt,tcity,tzip,energy,energydetail,demand,demanddetail,metercount,credit,addonfee,btbldgname,btstrt,btcity,btstate,btzip,strt,servicefee,adminfeedollar,taxexempt,fuel,grtdollar,grt,tstate,[partial],shadow,invoice_note,adjustment,coincident) values(@lid,@ypid,@subamt,@stax,round((@subamt*(@stax)),2),@totalamt,@tname,@afee,@rt,@by,@bp,@dstart,@dend,@bldg,@tnum,@bname,@f,@sqft,@utility ,@tstrt,@tcity,@tzip,@energy_esco,@edetail,@demand+@energy,@ddetail,@mc,@credit,@aonfee ,@btname ,@btstrt ,@btcity ,@btstate ,@btzip ,@bgs,@addonfeedollar,@afeedollar,@taxexempt,@fcost,@tgrtcost,@grt,@tstate,@p,@shadow,@inv_note,@adjs,@coincident)
			select @bid_id= max(id) from tblbillbyperiod where leaseutilityid=@lid and ypid=@ypid and reject=0
			insert tblcreditbyperiod (leaseutilityid,billyear,billperiod,ypid,credit,description,bill_id) values (@lid,@by,@bp,@ypid,@bcredit*-1,'LMEP Credit',@bid_id)
			insert tblcreditbyperiod (leaseutilityid,billyear,billperiod,ypid,credit,description,bill_id, adj) select leaseutilityid,billyear,billperiod,@ypid,amt,note,@bid_id ,case when amt>0 then 1 else 0 end from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1
				declare d1 cursor for select meterid,extusg from meters where leaseutilityid=@lid and online=1 and nobill=0
				open d1
				fetch next from d1 into @id,@ext
					while (@@fetch_status <> -1)
					begin
						if (@@fetch_status <> -2)
						begin
						select @c=coincident from tblleasesutilityprices where leaseutilityid=@lid
						if @c=1
							begin
							select @demand_c=demand from coincidentdemand where billyear=@by and billperiod=@bp and leaseutilityid=@lid
							end	
						else
							begin
							set @demand_c=0
							end
						if exists (select * from consumption c ,peakdemand p where p.meterid=c.meterid and  p.billyear=c.billyear and p.billperiod=c.billperiod and c.meterid=@id and c.billyear=@by and c.billperiod=@bp)
							begin
							select @op=onpeak,@ofp=offpeak,@prev=prev,@curr=[current],@used=used,@rawon=rawonpeak,@rawoff=rawoffpeak,@rprev=rawprevious,@rcurr=rawcurrent,@rused=rawused,@dpeak=datepeak,@d=demand from consumption c ,peakdemand p where p.meterid=c.meterid and  p.billyear=c.billyear and p.billperiod=c.billperiod and c.meterid=@id and c.billyear=@by and c.billperiod=@bp
							end
						else
							begin
							set @op=0
							set @ofp=0
							set @prev=0
							set @curr=0
							set @used=0
							set @rawon=0
							set @rawoff=0
							set @rprev=0
							set @rcurr=0
							set @rused=0
							set @dpeak=0
							set @d=0
							end
						select @display=utility from tblutility where utilityid=@utility
						select @aonfee=b.addonfee from building_addonfee b,meterprices p where b.id=p.addonfee and p.meterid=@id
						insert into tblmetersbyperiod (leaseutilityid,ypid,meterid,bldgnum,meternum,multiplier,billyear,billperiod,online,datestart,dateoffline,datelastread,coincident,onpeak,offpeak,prev,[current],used,rawonpeak,rawoffpeak,rawprevious,rawcurrent,rawused,demand_p,manualmultiplier,bill_id,addonfee,mextusg,demand_c)select  @lid,@ypid,@id,@bldg,meternum,multiplier,@by,@bp,online,datestart,dateoffline,datelastread,@c,@op,@ofp,@prev,@curr,@used,@rawon,@rawoff,@rprev,@rcurr,@rused,@d,manualmultiplier,@bid_id,@aonfee,@ext,@demand_c from meters where meterid=@id
						end
				fetch next from d1 into @id,@ext
				end
				close d1
				deallocate d1
			end
		end
	fetch next from x1 into @lid,@tnum,@bldg,@utility
	end
close x1
deallocate x1














































