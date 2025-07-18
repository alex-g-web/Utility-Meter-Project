USE [dbBilling]
GO
/****** Object:  StoredProcedure [dbo].[sp_SC9R1]    Script Date: 11/16/2016 12:54:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








--[dbo].[sp_SC9R1_offint_test]'INV_0413955',2015,2,0
/****** Object:  Stored Procedure dbo.sp_SC9R1 Script Date: 8/25/2005 10:51:19 AM ******/
ALTER  PROCEDURE [dbo].[sp_SC9R1] @group varchar(100),@by int, @bp int ,@p tinyint AS
/*Created based on sp_SC9R1_org. Changes made to reflect new ConEd rate structure effective 4/1/2005. Procedure written to be reverse compatible.*/
set nocount on
/*******************************************************************************************/
--9/8/2008 N.Ambo amended decimal places from 5 to 6 fro teh delivery consumption rate (@er1) 
--to be consistent with rate sc9rht1

/*9/10/2008 N.Ambo amended ariables used in cost calculations - values need to be rounded off to six decimal figures only on the final calculated results, hence the variable types
for the variables used to hold the values in the intermediate calculations were changed to decimal(18,12) (so that the values won't be rounded off to early in the calculations) */
--9/23/2008 N.Ambo amended variables - changed all decimal(18,12) to decimal(18,12) to avoid imprecision and to make calculations more accurate
--10/17/2008.Michelle T. Modify code to accomodate to when blend=1 (energy credit). added line 102-131. added rounding function to @energy, and set variable @demand declared to 2 instead of 4 places. 
--12/09/2008. Kamto Cheng modify code (LN 285) to set @er1cr to 0 if it's null .  
--3/12/2009. Michelle T. Modify procedure to accomodate for 3 month blend, for jfk, pd.3/2009,lid=7343.
--9/19/2008. Michelle T. Added code to accomodate to Con Ed mid month rate change
/*******************************************************************************************/
--9/10/2008 N.Ambo blocked off and replaced with new line of decalred variables
--declare @shadow tinyint,@INV_NOTE nvarchar(500),@display varchar(50),@commandline varchar(800),@sum decimal(18,2), @f decimal(18,12),@bldg varchar(20),@c int, @mc int,@aonfee decimal(18,4),@tnum varchar(20),@sqft int,@bname varchar(300),@utility int,@afee decimal(18,12) ,@tgrtcost decimal(18,2),@ext tinyint,@rt int,@stax decimal(18,12),@energy decimal(18,2),@subamt decimal(18,2),@dstart datetime,@dend datetime,@ypid int,@id int,@lid int, @mult int,@op decimal(18,2),@bcredit decimal(18,2),@ofp decimal(18,2),@prev decimal(18,2),@curr decimal(18,2),@used decimal(18,2),@rprev decimal(18,2),@rawoff decimal(18,2),@rawon decimal(18,2),@rcurr decimal(18,2),@rused decimal(18,2),@dpeak datetime,@cid decimal(18,12),@d decimal(18,2),@tstrt varchar(200),@tcity varchar(20),@tzip varchar(10),@tname varchar(100),@afeedollar decimal(18,2),@credit decimal(18,6),@bgs varchar(100),@btname varchar(50),@btstrt varchar(100),@btcity varchar(50),@btstate varchar(5),@btzip varchar(10),@tstate char(2),@dd decimal(18,5),@rtid int,@rgid tinyint,@er1 decimal(18,5),@er2 decimal(18,5),@er3 decimal(18,5),@sum1 decimal(18,2),@dr1cost decimal(18,5),@taxexempt tinyint,@sum2 int,@pdemand decimal(18,2),@dr1 decimal(18,6),@dr2 decimal(18,6),@dr3 decimal(18,6),@pdemand1 decimal(18,2),@nocredit tinyint,@bid int,@pdemand2 decimal(18,2),@pdemand3 decimal(18,2),@grt decimal(18,12),@fuel decimal(18,12),@increase decimal(18,4),@totalamt decimal(18,2), @addonfeedollar decimal(18,2),@acnt int,@demand decimal(18,4),@prorate decimal(18,6),@cfuel decimal(18,12),@admin decimal(18,12),@blend tinyint,@m1diff tinyint,@m2diff tinyint,@er1a decimal(18,5),@er1b decimal(18,5),@er2a decimal(18,5),@er2b decimal(18,5),@dr1a decimal(18,5),@dr1b decimal(18,6),@dr2a decimal(18,6),@dr2b decimal(18,6),@dr3a decimal(18,6),@dr3b decimal(18,6),@m1 tinyint,@m2 tinyint,@edetail varchar(2000),@ddetail varchar(2000),@fcost decimal(18,2),@gecost decimal(18,2),@gdcost decimal(18,2),@bid_id int, @adjs decimal(18,2),@coincident tinyint,@demand_c decimal(18,6),@emac1 decimal(18,6),@emac1a decimal(18,6),@emac1b decimal(18,6),@dmac1 decimal(18,6),@dmac1a decimal(18,6),@dmac1b decimal(18,6),@eMSC1 decimal(18,6),@eMSC1a decimal(18,6),@eMSC1b decimal(18,6),@dMSC1 decimal(18,6),@dMSC1a decimal(18,6),@dMSC1b decimal(18,6),@sum_eff decimal(18,2)
--declare @shadow tinyint,@INV_NOTE nvarchar(500),@display varchar(50),@commandline varchar(800),@sum decimal(18,2), @f decimal(18,12),@bldg varchar(20),@c int, @mc int,@aonfee decimal(18,4),@tnum varchar(20),@sqft int,@bname varchar(300),@utility int,@afee decimal(18,12) ,@tgrtcost decimal(18,2),@ext tinyint,@rt int,@stax decimal(18,12),@energy decimal(18,2),@subamt decimal(18,2),@dstart datetime,@dend datetime,@ypid int,@id int,@lid int, @mult int,@op decimal(18,2),@bcredit decimal(18,2),@ofp decimal(18,2),@prev decimal(18,2),@curr decimal(18,2),@used decimal(18,2),@rprev decimal(18,2),@rawoff decimal(18,2),@rawon decimal(18,2),@rcurr decimal(18,2),@rused decimal(18,2),@dpeak datetime,@cid decimal(18,12),@d decimal(18,2),@tstrt varchar(200),@tcity varchar(20),@tzip varchar(10),@tname varchar(100),@afeedollar decimal(18,2),@credit decimal(18,6),@bgs varchar(100),@btname varchar(50),@btstrt varchar(100),@btcity varchar(50),@btstate varchar(5),@btzip varchar(10),@tstate char(2),@dd decimal(18,5),@rtid int,@rgid tinyint,@er1 decimal(18,6),@er2 decimal(18,6),@er3 decimal(18,5),@sum1 decimal(18,2),@dr1cost decimal(18,5),@taxexempt tinyint,@sum2 int,@pdemand decimal(18,2),@dr1 decimal(18,6),@dr2 decimal(18,6),@dr3 decimal(18,6),@pdemand1 decimal(18,2),@nocredit tinyint,@bid int,@pdemand2 decimal(18,2),@pdemand3 decimal(18,2),@grt decimal(18,12),@fuel decimal(18,12),@increase decimal(18,4),@totalamt decimal(18,2), @addonfeedollar decimal(18,2),@acnt int,@demand decimal(18,4),@prorate decimal(18,6),@cfuel decimal(18,12),@admin decimal(18,12),@blend tinyint,@m1diff tinyint,@m2diff tinyint,@er1a decimal(18,12),@er1b decimal(18,12),@er2a decimal(18,12),@er2b decimal(18,12),@dr1a decimal(18,12),@dr1b decimal(18,12),@dr2a decimal(18,12),@dr2b decimal(18,12),@dr3a decimal(18,12),@dr3b decimal(18,12),@m1 tinyint,@m2 tinyint,@edetail varchar(2000),@ddetail varchar(2000),@fcost decimal(18,2),@gecost decimal(18,2),@gdcost decimal(18,2),@bid_id int, @adjs decimal(18,2),@coincident tinyint,@demand_c decimal(18,6),@emac1 decimal(18,6),@emac1a decimal(18,12),@emac1b decimal(18,12),@dmac1 decimal(18,6),@dmac1a decimal(18,12),@dmac1b decimal(18,12),@eMSC1 decimal(18,6),@eMSC1a decimal(18,12),@eMSC1b decimal(18,12),@dMSC1 decimal(18,6),@dMSC1a decimal(18,12),@dMSC1b decimal(18,12),@sum_eff decimal(18,2)

declare @shadow tinyint,@INV_NOTE nvarchar(500),@display varchar(50),@commandline varchar(800),@sum decimal(18,2), @f decimal(18,6),@bldg varchar(20),@c int 
declare @mc int,@aonfee decimal(18,4),@tnum varchar(20),@sqft int,@bname varchar(300),@utility int,@afee decimal(18,12) ,@tgrtcost decimal(18,2),@ext tinyint
declare @rt int,@stax decimal(18,12),@energy decimal(18,2),@subamt decimal(18,2),@dstart datetime,@dend datetime,@ypid int,@id int,@lid int, @mult int,@op decimal(18,2)
declare @bcredit decimal(18,2),@ofp decimal(18,2),@prev decimal(18,2),@curr decimal(18,2),@used decimal(18,2),@rprev decimal(18,2),@rawoff decimal(18,2),@rawon decimal(18,2)
declare @rcurr decimal(18,2),@rused decimal(18,2),@dpeak datetime,@cid decimal(18,12),@d decimal(18,2),@tstrt varchar(200),@tcity varchar(20),@tzip varchar(10),@tname varchar(100)
declare @afeedollar decimal(18,2),@credit decimal(18,6),@bgs varchar(100),@btname varchar(50),@btstrt varchar(100),@btcity varchar(50),@btstate varchar(5),@btzip varchar(10),@tstate char(2)
declare @dd decimal(18,5),@rtid int,@rgid tinyint,@er111 decimal(18,6),@er11 decimal(18,6),@er1 decimal(18,6),@er222 decimal(18,6),@er22 decimal(18,6),@er2 decimal(18,6),@er3 decimal(18,5)
declare @sum1 decimal(18,2),@dr1cost decimal(18,6),@taxexempt tinyint,@sum2 DECIMAL(18,2),@pdemand decimal(18,2),@dr1 decimal(18,6),@dr2 decimal(18,6),@dr3 decimal(18,6),@pdemand1 decimal(18,2)
declare @nocredit tinyint,@bid int,@pdemand2 decimal(18,2),@pdemand3 decimal(18,2),@grt decimal(18,6),@fuel decimal(18,12),@increase decimal(18,4),@totalamt decimal(18,2), @addonfeedollar decimal(18,2)
declare @acnt int,@demand decimal(18,2),@prorate decimal(18,6),@cfuel decimal(18,12),@admin decimal(18,12),@blend tinyint,@m1diff tinyint,@m2diff tinyint,@er1a decimal(18,12),@er1b decimal(18,12)
declare @er2a decimal(18,12),@er2b decimal(18,12),@dr1a decimal(18,12),@dr1b decimal(18,12),@dr2a decimal(18,12),@dr2b decimal(18,12),@dr3a decimal(18,12),@dr3b decimal(18,12),@m1 tinyint,@m2 tinyint
declare @edetail varchar(2000),@ddetail varchar(2000),@fcost decimal(18,2),@gecost decimal(18,2),@gdcost decimal(18,2),@bid_id int, @adjs decimal(18,2),@coincident tinyint,@demand_c decimal(18,6)
declare @emac111 decimal(18,6),@emac11 decimal(18,6),@emac1 decimal(18,6),@emac1a decimal(18,12),@emac1b decimal(18,12),@dmac111 decimal(18,6),@dmac11 decimal(18,6),@dmac1 decimal(18,6),@dmac1a decimal(18,12)
declare @dmac1b decimal(18,12),@eMSC111 decimal(18,6),@eMSC11 decimal(18,6),@eMSC1 decimal(18,6),@eMSC1a decimal(18,12),@eMSC1b decimal(18,12),@dMSC111 decimal(18,6),@dMSC11 decimal(18,6),@dMSC1 decimal(18,6)
declare @dMSC1a decimal(18,12),@dMSC1b decimal(18,12),@sum_eff decimal(18,2)
declare @er1cra decimal(18,12), @er1crb decimal(18,12), @er1cr decimal(18,6),@mdiff tinyint,@m3diff tinyint,@month datetime,@month2 datetime,@dstart1 datetime,@dstart2 datetime,@dstart3 datetime
declare @dr1c as decimal(18,12), @dr2c as decimal(18,12), @dr3c as decimal(18,12)
--Michelle T. variables below added to accomodate for a mid month rate change of rates within the same month
declare @pdstmonth int, @PdEndMonth int, @PdYear int,@rateE1 decimal(18,6),@rateE1a decimal(18,12),@rateE1b decimal(18,12),@rateE1c decimal(18,12), @rateE2 decimal(18,6)
declare @rateE2a decimal(18,12),@rateE2b decimal(18,12),@rateE2c decimal(18,12),@cmd varchar(200)
declare @clause varchar(20),@SameMnthBlnd datetime,@SameMnthDiff1 int, @SameMnthDiff2 int,@ratestrt datetime, @rateend datetime, @ratestrt2 datetime
declare @pdstrtmonth int, @ratesum1 int, @ratesum1a int, @ratesum1b int, @ratesum int, @ratesum2 int, @ratesum2a int, @ratesum2b int, @midMnthStrt1 datetime
declare @midMnthStrt2 datetime, @ratesum22b int, @MidMnthEnd1 datetime, @midMnthEnd2 datetime, @MnthChnge int
--rsm
declare @kwh decimal(18,2),@kwhoff decimal(18,2),@kwhint decimal(18,2),@extcount int, @leaseext int
declare @previousoff decimal(18,2),@currentoff decimal(18,2), @usedoff decimal(18,2)
declare @previousint decimal(18,2),@currentint decimal(18,2), @usedint decimal(18,2)
declare @rawpreviousoff decimal(18,2),@rawcurrentoff decimal(18,2), @rawusedoff decimal(18,2)
declare @rawpreviousint decimal(18,2),@rawcurrentint decimal(18,2), @rawusedint decimal(18,2)
declare @utilitybilltotalKWH int --rsm 10152015
declare @utilitybilltotalamount dec(18,2) --rsm 10152015
declare @utilitybilllmepcredit dec(18,2) --rsm 10152015
--rsm end
if @p=0
	begin
	set @commandline='declare x1 cursor read_only for select distinct leaseutilityid,tenantnum,bldgnum,utility from ['+@group+'] where procname=''sp_SC9R1'' and leaseutilityid not in(select leaseutilityid from tblbillbyperiod where reject=0 and  billyear='+ltrim(str(@by))+' and billperiod='+ltrim(str(@bp))+') and ratetenant in(select id from ratetypes where typecheck=''SC9R1'')'	
	end
else
	begin
	set @commandline='declare x1 cursor read_only for select distinct leaseutilityid,tenantnum,bldgnum,utility from ['+@group+'] where procname=''sp_SC9R1'' and leaseutilityid  not in(select leaseutilityid from tblbillbyperiod where reject=0 and  billyear='+ltrim(str(@by))+' and billperiod='+ltrim(str(@bp))+') and ratetenant in(select id from ratetypes where typecheck=''SC9R1'') and leaseutilityid in(select lid from billyrperiod_partial p,billyrperiod b where p.ypid=b.ypid and b.billyear='+ltrim(str(@by))+' and billperiod='+ltrim(str(@bp))+')'
	end
exec  (@commandline)

open x1
fetch next from x1 into @lid,@tnum,@bldg,@utility
	while (@@fetch_status <> -1)
	begin
		if (@@fetch_status <> -2)
		BEGIN

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
			select @rtid=id from ratetypes where type='SC9R1' and regionid=@rgid
			/*if @blend=1 billperiod only in one month else blend for 2 months*/
			if @p=0
				begin
				select @dstart=datestart,@dend=dateend,@mdiff=datediff(mm,datestart,dateend)+1 from billyrperiod where billyear=@by and billperiod=@bp and bldgnum=@bldg and utility=@utility
				
				if @mdiff=3
				begin
					--select @dstart=datestart,@dend=dateend, @month =datepart(mm,datestart)-1,@month2=datepart(mm,dateend)-1,@m1diff=case when Day(DateAdd(Month, 1, @month2) - Day(DateAdd(Month, 1, @month)))<0 then 0 else Day(DateAdd(Month, 1, @month2) - Day(DateAdd(Month, 1, @month))) end , @dd=datediff(dd,datestart,dateend)+1, @m2diff=case when datediff(dd,dateend-datepart(dd,dateend),dateend)<0 then 0 else datediff(dd,dateend-datepart(dd,dateend),dateend) end ,@m3diff=case when @dd-(@m1diff+@m2diff)<0 then 0  else @dd-(@m1diff+@m2diff) end,@ypid=ypid,@blend=case when datepart(month,datestart)=datepart(month,dateend) then 1 else 2 end  from billyrperiod where billyear=@by and billperiod=@bp and bldgnum=@bldg and utility=@utility
					select @dstart=datestart,@dend=dateend, @month =datepart(mm,datestart),@month2=DATEADD(mm, DATEDIFF(mm,0,dateend)-1, 0),@m1diff=case when Day(DateAdd(Month, 1, @month2) - Day(DateAdd(Month, 1, @dstart)))<0 then 0 else Day(DateAdd(Month, 1, @month2) - Day(DateAdd(Month, 1, @dstart))) end , @dd=datediff(dd,datestart,dateend)+1, @m2diff=case when datediff(dd,dateend-datepart(dd,dateend),dateend)<0 then 0 else datediff(dd,dateend-datepart(dd,dateend),dateend) end ,@m3diff=case when @dd-(@m1diff+@m2diff)<0 then 0  else @dd-(@m1diff+@m2diff) end,@ypid=ypid,@blend=case when datepart(month,datestart)=datepart(month,dateend) then 1 else 2 end  from billyrperiod where billyear=@by and billperiod=@bp and bldgnum=@bldg and utility=@utility
		
					end
			ELSE
				--IF @mdiff <> 3 AND @dstart < '4/1/2010'
				begin
				select @dstart=datestart,@dend=dateend,@dd=datediff(dd,datestart,dateend)+1,@m1diff=case when datediff(dd,datestart,dateend-datepart(dd,dateend))+1<0 then 0  else datediff(dd,datestart,dateend-datepart(dd,dateend))+1 end,@m2diff=case when datediff(dd,dateend-datepart(dd,dateend),dateend)<0 then 0 else datediff(dd,dateend-datepart(dd,dateend),dateend) end ,@ypid=ypid,@blend=case when datepart(month,datestart)=datepart(month,dateend) then 1 else 2 end  from billyrperiod where billyear=@by and billperiod=@bp and bldgnum=@bldg and utility=@utility
				
				END
			IF @dstart > = '4/1/2010' AND @blend=1
			BEGIN  
				SET @m2diff=@dd
		   END 
				
			set @prorate=@dd/30
			--rsm
			select @kwh=sum([used]), @kwhoff=sum([usedoff]),@kwhint=sum([usedint]) from consumption where meterid in(select meterid from meters where leaseutilityid=@lid and online=1 and nobill=0)  and billyear=@by and billperiod=@bp
			select @sum = @kwh + isnull(@kwhoff,0) + isnull(@kwhint,0)
			--set @sum=(select sum([used]) from consumption where meterid in(select meterid from meters where leaseutilityid=@lid and online=1 and nobill=0)  and billyear=@by and billperiod=@bp)
			--end rsm
			select distinct @stax=salestax ,@f=fueladj,@grt=grossreceipt,@credit=sum(isnull(unit_credit,0)) from utilitybill where ypid=@ypid group by salestax ,fueladj,grossreceipt
			select @utilitybilltotalKWH = sum(isnull(totalkwh,0)) from utilitybill where ypid=@ypid --rsm 10152015
			select @utilitybilltotalamount = sum(isnull(escobillamt,0)) from utilitybill where ypid=@ypid --rsm 10152015
			select @utilitybilllmepcredit = sum(isnull(lmepcredit,0)) from UtilityBill where ypid=@ypid --rsm 10152015

			select @credit = @utilitybilllmepcredit / ( case when @utilitybilltotalKWH > 0 then @utilitybilltotalKWH else 1 end) -- LI.2016.09.02 / divide by zero error
			end
			else  --rsm this entire else statement added is for partial bills added 04022015
			 begin
				--select @dstart=datestart,@dend=dateend,@mdiff=datediff(mm,datestart,dateend)+1 from billyrperiod where billyear=@by and billperiod=@bp and bldgnum=@bldg and utility=@utility
				select @dstart=p.datestart,@dend=p.dateend,@ypid=p.ypid,@mdiff=datediff(mm,p.datestart,p.dateend)+1 from billyrperiod b,billyrperiod_partial p where b.ypid=p.ypid and p.lid=@lid and b.billyear=@by and b.billperiod=@bp and b.bldgnum=@bldg and b.utility=@utility
				if @mdiff=3
				   begin
					--select @dstart=datestart,@dend=dateend, @month =datepart(mm,datestart)-1,@month2=datepart(mm,dateend)-1,@m1diff=case when Day(DateAdd(Month, 1, @month2) - Day(DateAdd(Month, 1, @month)))<0 then 0 else Day(DateAdd(Month, 1, @month2) - Day(DateAdd(Month, 1, @month))) end , @dd=datediff(dd,datestart,dateend)+1, @m2diff=case when datediff(dd,dateend-datepart(dd,dateend),dateend)<0 then 0 else datediff(dd,dateend-datepart(dd,dateend),dateend) end ,@m3diff=case when @dd-(@m1diff+@m2diff)<0 then 0  else @dd-(@m1diff+@m2diff) end,@ypid=ypid,@blend=case when datepart(month,datestart)=datepart(month,dateend) then 1 else 2 end  from billyrperiod where billyear=@by and billperiod=@bp and bldgnum=@bldg and utility=@utility
					select @dstart=p.datestart,@dend=p.dateend, @month =datepart(mm,p.datestart),@month2=DATEADD(mm, DATEDIFF(mm,0,p.dateend)-1, 0),@m1diff=case when Day(DateAdd(Month, 1, @month2) - Day(DateAdd(Month, 1, @dstart)))<0 then 0 else Day(DateAdd(Month, 1, @month2) - Day(DateAdd(Month, 1, @dstart))) end , @dd=datediff(dd,p.datestart,p.dateend)+1, @m2diff=case when datediff(dd,p.dateend-datepart(dd,p.dateend),p.dateend)<0 then 0 else datediff(dd,p.dateend-datepart(dd,p.dateend),p.dateend) end ,@m3diff=case when @dd-(@m1diff+@m2diff)<0 then 0  else @dd-(@m1diff+@m2diff) end,@ypid=p.ypid,@blend=case when datepart(month,p.datestart)=datepart(month,p.dateend) then 1 else 2 end  from billyrperiod b,billyrperiod_partial p where b.ypid=p.ypid and p.lid=@lid and b.billyear=@by and b.billperiod=@bp and b.bldgnum=@bldg and b.utility=@utility
		
					end
			    ELSE
				--IF @mdiff <> 3 AND @dstart < '4/1/2010'
				begin
				--select @dstart=datestart,@dend=dateend,@dd=datediff(dd,datestart,dateend)+1,@m1diff=case when datediff(dd,datestart,dateend-datepart(dd,dateend))+1<0 then 0  else datediff(dd,datestart,dateend-datepart(dd,dateend))+1 end,@m2diff=case when datediff(dd,dateend-datepart(dd,dateend),dateend)<0 then 0 else datediff(dd,dateend-datepart(dd,dateend),dateend) end ,@ypid=ypid,@blend=case when datepart(month,datestart)=datepart(month,dateend) then 1 else 2 end  from billyrperiod where billyear=@by and billperiod=@bp and bldgnum=@bldg and utility=@utility --rsm did not ccount for partial table
				  select @dstart=p.datestart,@dend=p.dateend,@dd=datediff(dd,p.datestart,p.dateend)+1,@m1diff=case when datediff(dd,p.datestart,p.dateend-datepart(dd,p.dateend))+1<0 then 0  else datediff(dd,p.datestart,p.dateend-datepart(dd,p.dateend))+1 end,@m2diff=case when datediff(dd,p.dateend-datepart(dd,p.dateend),p.dateend)<0 then 0 else datediff(dd,p.dateend-datepart(dd,p.dateend),p.dateend) end ,@ypid=p.ypid,@blend=case when datepart(month,p.datestart)=datepart(month,p.dateend) then 1 else 2 end  from billyrperiod b,billyrperiod_partial p where b.ypid=p.ypid and p.lid=@lid and b.billyear=@by and b.billperiod=@bp and b.bldgnum=@bldg and b.utility=@utility  --rsm
				END
			    IF @dstart > = '4/1/2010' AND @blend=1
			     BEGIN  
				  SET @m2diff=@dd
		         END 
				
				set @prorate=@dd/30
				--rsm
				select @kwh=sum([used]), @kwhoff=sum([usedoff]),@kwhint=sum([usedint]) from consumption where meterid in(select meterid from meters where leaseutilityid=@lid and online=1 and nobill=0)  and billyear=@by and billperiod=@bp
				select @sum = @kwh + isnull(@kwhoff,0) + isnull(@kwhint,0)
				--set @sum=(select sum([used]) from consumption where meterid in(select meterid from meters where leaseutilityid=@lid and online=1 and nobill=0)  and billyear=@by and billperiod=@bp)
				--end rsm
			    select distinct @stax=salestax ,@f=fueladj,@grt=grossreceipt,@credit=sum(isnull(unit_credit,0)) from utilitybill where ypid=@ypid group by salestax ,fueladj,grossreceipt
				select @utilitybilltotalKWH = sum(isnull(totalkwh,0)) from utilitybill where ypid=@ypid --rsm 10152015
			    select @utilitybilltotalamount = sum(isnull(escobillamt,0)) from utilitybill where ypid=@ypid --rsm 10152015
			    select @utilitybilllmepcredit = sum(isnull(lmepcredit,0)) from UtilityBill where ypid=@ypid --rsm 10152015

			    select @credit = ( case when @utilitybilllmepcredit>0 then @utilitybilllmepcredit else 1 end) / ( case when @utilitybilltotalKWH > 0 then @utilitybilltotalKWH else 1 end) -- LI.2016.09.02 / divide by zero error
			end  --rsm end

			/*FIND ENERGY RATES*/

-------------------------------------------------------------------------------------------------------------------------------------------------			
--Accomodate for a blend of 2 different rates within the same month
			
select @pdEndMonth=datepart(mm,@dend),@PdYear=datepart(yy,@dend)
SELECT @clause = '%'+convert(varchar(20),@PdYear)+'%'	
--code added to accomodate for all possible rate change conditions based on bill period start end date compared to rate start and end date----------------------------------------------------------------------------------------------------------------
select @pdEndMonth=datepart(mm,@dend),@pdStrtMonth=datepart(mm,@dstart),@PdYear=datepart(yy,@dend)
SELECT @clause = '%'+convert(varchar(20),@PdYear)+'%'	
IF @dend >='4/1/2010'	
BEGIN 
IF @dstart>='4/1/2010' 

BEGIN 
IF @blend=1 
BEGIN 
--select * from rate where type=19 and itemtype='energy' and linecharge=23 and monthstart=4 and startdate like '%2010%' 
SELECT @rtid AS rtid, @pdstrtmonth AS pdstrtmonth, @clause AS clause

SET @ratesum1=0


--check if there is a mid month blend on the second month
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdEndMonth and startdate like @clause order by startdate desc
set @ratesum2 = @@rowcount

if @ratesum2=2
begin
select @MidMnthStrt2=startdate ,@MidMnthEnd2=enddate, @MnthChnge=datepart(mm,startdate) from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdEndMonth and startdate like @clause order by startdate asc



--check if first part of the midmonth blend is being use for a billperiod
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthend=@pdEndMonth and startdate like @clause and @MidMnthStrt2-1 between startdate and enddate 
set @ratesum2a=@@rowcount

--check if second part of the midmonth blend is being use for a billperiod
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdEndMonth and startdate like @clause and @dend between startdate and enddate 
set @ratesum2b=@@rowcount

if @ratesum2b=2

begin
--if there is a midmonth change check if second part is being use, if not set @ratesum2b=0
select * from rate where @dend > (select top 1 startdate 
from rate where monthstart=@pdEndMonth and startdate 
like @clause and type=@rtid order by startdate desc) and startdate 
like @clause and monthstart=@pdEndMonth and type=@rtid and linecharge=23

set @ratesum22b=@@rowcount

if @ratesum22b>0
begin
set @ratesum2b=2
end
else
begin
set @ratesum2b=0
end

set @ratesum2=@ratesum2a+@ratesum2b
end
end
set @ratesum=@ratesum1+@ratesum2

ENd 
ELSE 
IF @blend =2
BEGIN 
SELECT @rtid AS rtid, @pdstrtmonth AS pdstrtmonth, @clause AS clause
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdStrtMonth and startdate like @clause 
set @ratesum1 = @@rowcount


--Check if rate change occur in the first of the two months involved
if @ratesum1=2
	
	begin
	select @MidMnthStrt1=startdate,@MidMnthEnd1=enddate from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdStrtMonth and startdate like @clause order by startdate asc
SELECT @midmnthstrt1 AS midmnthstrt, @midmnthEnd1 AS mindmnthend
--Check if rate change occur in the first part of the mid month rate change
	select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdStrtMonth and startdate like @clause and @dstart between startdate and enddate 
	set @ratesum1a=@@rowcount

--Check if rate change occur in the first part of the mid month rate change
	select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdStrtMonth and startdate like @clause and @MidMnthStrt1 between  startdate and enddate 
	set @ratesum1b=@@rowcount

	set @ratesum1=@ratesum1a+@ratesum1b
	end

--check if there is a mid month blend on the second month
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdEndMonth and startdate like @clause order by startdate desc
set @ratesum2 = @@rowcount

if @ratesum2=2
begin
select @MidMnthStrt2=startdate ,@MidMnthEnd2=enddate, @MnthChnge=datepart(mm,startdate) from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdEndMonth and startdate like @clause order by startdate asc

select @dend as dend2,@midmnthstrt2 as mndmthstrt,@midmnthend2 as midend2

--check if first part of the midmonth blend is being use for a billperiod
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthend=@pdEndMonth and startdate like @clause and @MidMnthStrt2-1 between startdate and enddate 
set @ratesum2a=@@rowcount

--check if second part of the midmonth blend is being use for a billperiod
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdEndMonth and startdate like @clause and @dend between startdate and enddate 
set @ratesum2b=@@rowcount

if @ratesum2b=2

begin
--if there is a midmonth change check if second part is being use, if not set @ratesum2b=0
select * from rate where @dend > (select top 1 startdate 
from rate where monthstart=@pdEndMonth and startdate 
like @clause and type=@rtid order by startdate desc) and startdate 
like @clause and monthstart=@pdEndMonth and type=@rtid and linecharge=23

set @ratesum22b=@@rowcount

if @ratesum22b>0
begin
set @ratesum2b=2
end
else
begin
set @ratesum2b=0
end

set @ratesum2=@ratesum2a+@ratesum2b
end
end
set @ratesum=@ratesum1+@ratesum2

END 
ENd 

ELSE IF @dstart < '4/1/2010'
begin
SET @ratesum=1
END 

END 
--------------------------------------------------------
ELSE 
IF @dend < '4/1/2010'
BEGIN
--check if mid month rate change exist
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdStrtMonth and startdate like @clause 
set @ratesum1 = @@rowcount


--Check if rate change occur in the first of the two months involved
if @ratesum1=4
	
	begin
	select @MidMnthStrt1=startdate,@MidMnthEnd1=enddate from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdStrtMonth and startdate like @clause order by startdate asc

--Check if rate change occur in the first part of the mid month rate change
	select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdStrtMonth and startdate like @clause and @dstart between startdate and enddate 
	set @ratesum1a=@@rowcount

--Check if rate change occur in the first part of the mid month rate change
	select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdStrtMonth and startdate like @clause and @MidMnthStrt1 between  startdate and enddate 
	set @ratesum1b=@@rowcount

	set @ratesum1=@ratesum1a+@ratesum1b
	end

--check if there is a mid month blend on the second month
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdEndMonth and startdate like @clause order by startdate desc
set @ratesum2 = @@rowcount

if @ratesum2=4
begin
select @MidMnthStrt2=startdate ,@MidMnthEnd2=enddate, @MnthChnge=datepart(mm,startdate) from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdEndMonth and startdate like @clause order by startdate asc


--check if first part of the midmonth blend is being use for a billperiod
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthend=@pdEndMonth and startdate like @clause and @MidMnthStrt2-1 between startdate and enddate 
set @ratesum2a=@@rowcount

--check if second part of the midmonth blend is being use for a billperiod
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdEndMonth and startdate like @clause and @dend between startdate and enddate 
set @ratesum2b=@@rowcount

if @ratesum2b=2

begin
--if there is a midmonth change check if second part is being use, if not set @ratesum2b=0
select * from rate where @dend > (select top 1 startdate 
from rate where monthstart=@pdEndMonth and startdate 
like @clause and type=@rtid order by startdate desc) and startdate 
like @clause and monthstart=@pdEndMonth and type=@rtid and linecharge=23

set @ratesum22b=@@rowcount

if @ratesum22b>0
begin
set @ratesum2b=2
end
else
begin
set @ratesum2b=0
end

set @ratesum2=@ratesum2a+@ratesum2b
end
end
set @ratesum=@ratesum1+@ratesum2
END 


declare @MSCstr varchar(100), @MSCconvert decimal(18, 6), @MSCindex int
select distinct @MSCstr=MSCDetail from utilitybill where ypid=@ypid 
select @MSCstr
set @MSCindex= charindex('sc9r1=', @MSCstr)
set @MSCstr= substring(@MSCstr, @MSCindex+6, len(@MSCstr)-@MSCindex-6)
select @MSCstr


set @MSCindex= charindex('|', @MSCstr)
set @MSCstr= substring(@MSCstr, 0, @MSCindex)
if @MSCstr='' 
begin
	set @MSCstr='0.0'
end
set @MSCconvert = Convert(decimal(18,6), @MSCstr)
			
			if @ratesum<=4 
			begin
			
				/*Block 1*/ --rate one
			select @dstart1=@dstart+30
			select @dstart2=DateAdd(Month, 1, @dstart)
			select @dstart3=DateAdd(Month, 1, @dstart2)

------------------------------------------------------------------------
			
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

		/*Block 1*/ --rate one
		END 

			ELSE 
			BEGIN 
			
			/*Block 1*/ --rate one
			
			select @er1=rate,@er1a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and ratefrom=0 and rateto=15000 and  @dstart between startdate and enddate
			select @er1b=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and ratefrom=0 and rateto=15000 and  @dend between startdate and enddate
			

			/*Block 2*/ --rate one
			
			select @er2=rate,@er2a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Energy'and type=@rtid and ratefrom=15001 and rateto>=99999 and @dstart between startdate and enddate
			select @er2b=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and ratefrom=15001 and rateto>=99999 and @dend between startdate and enddate
			
			
			
--added to accomodate to 3 month blend. Michelle T. 3/11/2009			
		
			if @mdiff=3
			begin
			
				
/*Block 1*/ --rate two
			
			select @er11=isnull(rate,'0') from rate where itemtype='Energy' and type=@rtid and ratefrom=0 and rateto=15000 and @dstart2 between startdate and enddate
			select @er22=rate from rate where itemtype='Energy'and type=@rtid and ratefrom=15001 and rateto>=99999 and @dstart2 between startdate and enddate
				

			--rate three
			
			select @er111=isnull(rate,0) from rate where itemtype='Energy' and type=@rtid and ratefrom=0 and rateto=15000 and @dstart3 between startdate and enddate
			select @er222=rate from rate where itemtype='Energy'and type=@rtid and ratefrom=15001 and rateto>=99999 and @dstart3 between startdate and enddate
			
			end
			
			else
			begin
			 set @er11=0 set @er111=0 
			 set @er22=0 set @er222=0 	
			end	
			
			end	
			end
			
----Michelle T. 9/19/2009. code below added to accomodate to mid month rate change-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------		
			else

--@ratesum determines if a midmonth rate change exist for billing period
			if @ratesum > 4 AND @dend < '4/1/2010'
			BEGIN   
			select @pdEndMonth=datepart(mm,@dend),@PdYear=datepart(yy,@dend)
			SELECT @clause = '%'+convert(varchar(20),@PdYear)+'%'
			select @SameMnthBlnd=(select top 1 enddate from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and monthstart=@PdEndMonth and startdate like @clause order by startdate asc)
			set @SameMnthBlnd=dateadd(dd,1,@SameMnthBlnd)
			set @pdstmonth=datepart(mm,@dstart)
		
--@ratesum2 determines if the second of the two month involve has a mid month rate change
		if @ratesum2=4
			begin

--Find # of days to apply rate to for the first half of the month
		select top 1 @ratestrt=startdate,@rateend=enddate from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and monthstart=@PdEndMonth and startdate like @clause order by startdate asc
		set	@SameMnthDiff1=(datepart(dd,@rateend)-datepart(dd,@ratestrt))+1

--Find # of days to apply rate to for the second half of the same month blend for billperiod
		select top 1 @ratestrt2=startdate from rate where  type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and startdate = @SameMnthBlnd
		set	@SameMnthDiff2=(datepart(dd,@dend)-datepart(dd,@ratestrt2))+1
					
--Find first rate block - (there is one rate for the month)---- (0-15000)
			select @RateE1a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and @dstart between startdate and enddate
--Find rate for the first part of the same month 	
			select @RateE1b=(select top 1 rate * cast(@SameMnthDiff1 as decimal(18,2))/@dd  from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and monthstart=@PdEndMonth and startdate like @clause order by startdate asc)
--Find rate for the second part of the same month 
			Select @RateE1c=rate * cast(@SameMnthDiff2 as decimal(18,2))/@dd  from rate where  type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and startdate = @SameMnthBlnd
			set @RateE1=(@RateE1a+@RateE1b+@RateE1c)
			
--Find first rate block - (there is one rate for the month)---- (15001-9999999)
			select @RateE2a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='15001' and rateto>=99999 and @dstart between startdate and enddate
--Find rate for the first part of the same month 	
			select @RateE2b=(select top 1 rate * cast(@SameMnthDiff1 as decimal(18,2))/@dd  from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='15001' and rateto>=99999 and monthstart=@PdEndMonth and startdate like @clause order by startdate asc)
--Find rate for the second part of the same month 
			Select @RateE2c=rate * cast(@SameMnthDiff2 as decimal(18,2))/@dd  from rate where  type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='15001' and rateto>=99999 and startdate = @SameMnthBlnd
			set @RateE2=(@RateE2a+@RateE2b+@RateE2c)
			
	end			
	else
	
--@ratesum1 determines if first of the two months involve has midmonth rate change.
	if @ratesum1=4
	begin
--Find # of days to apply rate to for the first half of the month
		select top 1 @ratestrt=startdate,@rateend=enddate from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and monthstart=@PdStMonth and startdate like @clause order by startdate asc
		set	@SameMnthDiff1=(datepart(dd,@rateend)-datepart(dd,@dstart))+1
	
--Find # of days to apply rate to for the second half of the same month blend for billperiod
		select top 1 @ratestrt2=enddate from rate where  type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and startdate = @rateend+1
		--set @rateend=dateadd(dd,@rateend,1)--@rateend+1
		set	@SameMnthDiff2=(datepart(dd,@ratestrt2-datepart(dd,dateadd(dd,1,@rateend))))+1
					
--Find first rate block - (there is one rate for the month)
		
		Select @RateE1c=rate * cast(@m2diff as decimal(18,2))/@dd  from rate where  type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and monthend = @pdendmonth and startdate like @clause	
				
		--Find rate for the first part of the same month 	
		select @RateE1a=rate*cast(@SameMnthDiff1 as decimal(18,2))/@dd from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and @dstart between startdate and enddate

		--Find rate for the second part of the same month 
		select @RateE1b=rate*cast(@SameMnthDiff2 as decimal(18,2))/@dd from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and @ratestrt2 between startdate and enddate

			set @rateE1=(@RateE1a+@RateE1b+@RateE1c)
			
--Find first rate block - (there is one rate for the month)
			select @RateE2a=rate*cast(@SameMnthDiff1 as decimal(18,2))/@dd from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and @dstart between startdate and enddate
--Find rate for the first part of the same month 	
			select @RateE2b=rate*cast(@SameMnthDiff2 as decimal(18,2))/@dd from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and @ratestrt2 between startdate and enddate
--Find rate for the second part of the same month 
		Select @RateE2c=rate * cast(@m2diff as decimal(18,2))/@dd  from rate where  type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and monthend = @pdendmonth and startdate like @clause	
		set @rateE2=(@RateE2a+@RateE2b+@RateE2c)
		

end 
ENd
		IF  @dend >= '4/1/2010'
			BEGIN
		IF @blend = 1
			BEGIN 
		IF @ratesum >= 2 
			BEGIN 
			select @pdEndMonth=datepart(mm,@dend),@PdYear=datepart(yy,@dend)
			SELECT @clause = '%'+convert(varchar(20),@PdYear)+'%'
			select @SameMnthBlnd=(select top 1 enddate from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and monthstart=@PdEndMonth and startdate like @clause order by startdate asc)
			set @SameMnthBlnd=dateadd(dd,1,@SameMnthBlnd)
			set @pdstmonth=datepart(mm,@dstart)
		
--@ratesum2 determines if the second of the two month involve has a mid month rate change
		if @ratesum2=2
		begin
		
		select top 1 @ratestrt=startdate,@rateend=enddate from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and monthstart=@PdEndMonth and startdate like @clause order by startdate asc
		set	@SameMnthDiff1=(datepart(dd,@rateend)-datepart(dd,@ratestrt))+1

--Find # of days to apply rate to for the second half of the same month blend for billperiod
		select top 1 @ratestrt2=startdate from rate where  type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and startdate = @SameMnthBlnd
		set	@SameMnthDiff2=(datepart(dd,@dend)-datepart(dd,@ratestrt2))+1

--Find first rate block - (there is one rate for the month)---- (0-15000)
			select @RateE1a=rate*cast(@SameMnthDiff1 as decimal(18,2))/@dd from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and @ratestrt between startdate and enddate
--Find rate for the first part of the same month 	
			select @RateE1b=(select top 1 rate * cast(@SameMnthDiff2 as decimal(18,2))/@dd  from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and @ratestrt2 between startdate and enddate)--and ratefrom='0' and rateto>=99999 AND monthstart=@PdEndMonth and startdate like @clause order by startdate asc)
--Find rate for the second part of the same month 
			--Select @RateE1c=rate * cast(@SameMnthDiff2 as decimal(18,2))/@dd  from rate where  type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto='15000' and startdate = @SameMnthBlnd
			set @RateE1=(@RateE1a+@RateE1b)
			
		END 
		END 
		END 
		ELSE
		IF @blend =2
		begin 
		
	select @pdEndMonth=datepart(mm,@dend),@PdYear=datepart(yy,@dend)
SELECT @clause = '%'+convert(varchar(20),@PdYear)+'%'	
--code added to accomodate for all possible rate change conditions based on bill period start end date compared to rate start and end date----------------------------------------------------------------------------------------------------------------
select @pdEndMonth=datepart(mm,@dend),@pdStrtMonth=datepart(mm,@dstart),@PdYear=datepart(yy,@dend)
SELECT @clause = '%'+convert(varchar(20),@PdYear)+'%'	

	if @ratesum1=2
	BEGIN

--Find # of days to apply rate to for the first half of the month
		select top 1 @ratestrt=startdate,@rateend=enddate from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and monthstart=@PdStrtMonth and startdate like @clause order by startdate asc
		set	@SameMnthDiff1=(datepart(dd,@rateend)-datepart(dd,@dstart))+1
	
--Find # of days to apply rate to for the second half of the same month blend for billperiod
		select top 1 @ratestrt2=enddate from rate where  type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and startdate = @rateend+1
		--set @rateend=dateadd(dd,@rateend,1)--@rateend+1
		set	@SameMnthDiff2=(datepart(dd,@ratestrt2-datepart(dd,dateadd(dd,1,@rateend))))+1
					
--Find first rate block - (there is one rate for the month)
		
		Select @RateE1c=rate * cast(@m2diff as decimal(18,2))/@dd  from rate where  type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and monthend = @pdendmonth and startdate like @clause	
				
		--Find rate for the first part of the same month 	
		select @RateE1a=rate*cast(@SameMnthDiff1 as decimal(18,2))/@dd from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and @dstart between startdate and enddate

		--Find rate for the second part of the same month 
		select @RateE1b=rate*cast(@SameMnthDiff2 as decimal(18,2))/@dd from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and @ratestrt2 between startdate and enddate

			set @rateE1=(@RateE1a+@RateE1b+@RateE1c)
	END
	
--********Case where @ratesum2=2 NOT YET TESTED	
	if @ratesum2=2
	BEGIN

--Find # of days to apply rate to for the first half of the month
		select top 1 @ratestrt=startdate,@rateend=enddate from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and monthstart=@PdStrtMonth and startdate like @clause order by startdate asc
		set	@SameMnthDiff1=(datepart(dd,@rateend)-datepart(dd,@dstart))+1
	
--Find # of days to apply rate to for the second half of the same month blend for billperiod
		select top 1 @ratestrt2=enddate from rate where  type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and startdate = @rateend+1
		--set @rateend=dateadd(dd,@rateend,1)--@rateend+1
		set	@SameMnthDiff2=(datepart(dd,@ratestrt2-datepart(dd,dateadd(dd,1,@rateend))))+1
					
--Find first rate block - (there is one rate for the month)
		
		Select @RateE1c=rate * cast(@m2diff as decimal(18,2))/@dd  from rate where  type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and monthend = @pdendmonth and startdate like @clause	
				
		--Find rate for the first part of the same month 	
		select @RateE1a=rate*cast(@SameMnthDiff1 as decimal(18,2))/@dd from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and @dstart between startdate and enddate

		--Find rate for the second part of the same month 
		select @RateE1b=rate*cast(@SameMnthDiff2 as decimal(18,2))/@dd from rate where type=@rtid and itemtype='energy' and linecharge=23 and ratefrom='0' and rateto>=99999 and @ratestrt2 between startdate and enddate

			set @rateE1=(@RateE1a+@RateE1b+@RateE1c)
			
	END    
END 
END
-------------------------------------------------------------------------------------------------------------------------------------		


			/*ENERGY CREDIT*/ --added by Michelle T. 10/17/1008 for credit charge

-- For a period where the rate begins or the rate ends, the rate may be need to be prorated differently (just for the number of days 
--in the bill period for the month for which the rate is active). This is usually needed when the rate ends or begins on a day
--other than the first or the last of the month. fro teh credit rate, we will check whether the period end date and the rate start
--date occurs in the same month, or the period start date and the rate enddate occurs in teh same month. If this is true, the the following
--calculation will determine the prorate number of days: (period end-periodstart) + 1
declare @xdiff1 as int --holds number of days difference between the rate start date and the period enddate
declare @zdiff2 as int --holds number of days difference between the rate end date and the period startdate
declare @startr1 as datetime, @endr1 as datetime, @startr2 as datetime, @endr2 as datetime  --start and end dates for rates occuring in first part of period and second part of period

select @startr1 = startdate, @endr1 = enddate
from rate where type = @rtid and linecharge=20 and ratefrom=0 and rateto>=99999 
and  @dstart between startdate and enddate

select @startr2=startdate, @endr2 = enddate
from rate where type = @rtid and linecharge=20 and ratefrom=0 and rateto>=99999 
and  @dend between startdate and enddate

--if rate start date and period end date occurs in the same month or rate enddate and period start date occurs in the same month
if ((datepart(month,@startr1) = datepart(month,@dend) and datepart(year,@startr1) = datepart(year,@dend))
OR (datepart(month,@endr1) = datepart(month,@dstart) and datepart(year,@endr1) = datepart(year,@dstart)))
begin	
	select @xdiff1=datediff(day,@dstart,@endr1)+1	
end

--if rate start date and period end date occurs in the same month or rate enddate and period start date occurs in the same month
if ((datepart(month,@startr2) = datepart(month,@dend) and datepart(year,@startr2) = datepart(year,@dend))
OR (datepart(month,@endr2) = datepart(month,@dstart) and datepart(year,@endr2) = datepart(year,@dstart)))
begin	
	select @zdiff2=datediff(day,@startr2,@dend)+1
end

			--gets credit rate for the period if there is one
			
			select @er1cr=isnull(rate,0),@er1cra=rate*cast(case when @xdiff1 is not null then @xdiff1 else @m1diff end as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and linecharge=20 and ratefrom=0 and rateto>=99999 and  @dstart between startdate and enddate
			select @er1crb=rate*cast(case when @zdiff2 is not null then @zdiff2 else @m2diff end as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and linecharge=20 and ratefrom=0 and rateto>=99999 and  @dend between startdate and enddate


			/*ENERGY MAC & MSC*/
			if @dend>='4/1/2005' /*MSC/MAC charges added to rate effective 4/1/2005*/
				begin
				if @dstart<'4/1/2005'
					begin
					select @Emac1=rate from rate where itemtype='Energy' and type=@rtid and linecharge=64 and @dend between startdate and enddate
					select @Emsc1=rate from rate where itemtype='Energy' and type=@rtid and linecharge=63 and @dend between startdate and enddate
					end
				else
					begin
					select @Emac1=rate,@Emac1a=rate * cast(@m1diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and linecharge=64 and @dstart between startdate and enddate
					select @Emac1b=rate * cast(@m2diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and linecharge=64 and @dend between startdate and enddate
					select @Emsc1=rate,@Emsc1a=rate * cast(@m1diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and linecharge=63 and @dstart between startdate and enddate
					select @Emsc1b=rate * cast(@m2diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and linecharge=63 and @dend between startdate and enddate

--added code to accomodate to 3 month blend. Michelle T. 3/11/2009					
						
					if @mdiff=3
					begin
				--2nd month
					select @Emac11=isnull(rate,0) from rate where itemtype='Energy' and type=@rtid and linecharge=64 and @dstart2 between startdate and enddate
					select @Emsc11=rate from rate where itemtype='Energy' and type=@rtid and linecharge=63 and @dstart2 between startdate and enddate
					
				--3rd month
					select @Emac111=rate from rate where itemtype='Energy' and type=@rtid and linecharge=64 and @dstart3 between startdate and enddate
					select @Emsc111=rate from rate where itemtype='Energy' and type=@rtid and linecharge=63 and @dstart3 between startdate and enddate
					end
				else
					begin
					set @Emac11=0 set @Emac111=0 
					set @Emsc11=0 set @Emsc111=0 
					end
				end
			END
			
-----------code below to accomodate for Coned structure change starting 4/1/2010. Michelle Truong----------------------------------------------------------------------------------------------------			
			IF @dstart >= '1/31/2010'
		BEGIN 
		SET @emsc1=@mscConvert
		END 
			IF @dend >= '4/1/2010'
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
			select @dr3=rate,@dr3a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand' and type=@rtid and ratefrom=901 and rateto>=99999 and @dstart between startdate and enddate
			select @dr3b=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=901 and rateto>=99999  and @dend between startdate and enddate
		

			--3/13/2009 Ambo/Truong amended to accomodate for the three-month pro-rating for the demand rate
			if @mdiff= 3
			begin
				select @dr1c=rate*cast(@m3diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=0 and rateto=5  and @dstart3 between startdate and enddate
				select @dr2c=rate*cast(@m3diff as decimal(18,2))/@dd  from rate where itemtype='Demand'and type=@rtid and ratefrom=6 and rateto=900  and @dstart3 between startdate and enddate
				select @dr3c=rate*cast(@m3diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=901 and rateto>=99999  and @dstart3 between startdate and enddate
			
			end

			else 
			  begin
				set @dr1c = 0
				set @dr2c = 0
				set @dr3c = 0
			   end 
			   
			   END 
	--Find Demand rates accomodating to Coned structure change 4/1/2010. Michelle Truong
			   	IF @dend > ='4/1/2010'
				BEGIN 
			select @dr1b=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=0 and rateto=5 and @dend between startdate and enddate
			select @dr2b=rate*cast(@m2diff as decimal(18,2))/@dd  from rate where itemtype='Demand'and type=@rtid and ratefrom=6 and rateto=100  and @dend between startdate and enddate
			select @dr3b=rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=101 and rateto>=99999   and @dend between startdate and enddate
	
			IF @dstart < '4/1/2010'
				BEGIN 
			
				select @dr1=rate,@dr1a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=0 and rateto=5 and @dstart between startdate and enddate
				select @dr2=rate,@dr2a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=6 and rateto=900 and @dstart between startdate and enddate
				select @dr3=rate,@dr3a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand' and type=@rtid and ratefrom=901 and rateto>=99999 and @dstart between startdate and enddate
				END 
				IF @dstart >='4/1/2010'
				BEGIN 
				select @dr1=rate,@dr1a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=0 and rateto=5 and @dstart between startdate and enddate
				select @dr2=rate,@dr2a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand'and type=@rtid and ratefrom=6 and rateto=100 and @dstart between startdate and enddate
				select @dr3=rate,@dr3a=rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand' and type=@rtid and ratefrom=101 and rateto>=99999  and @dstart between startdate and enddate
				END 		
	SELECT @dr1a AS dr1a, @dr1b AS dr1b, @dr2b AS dr2b, @dr3b AS dfr3b	
		END 

			/*DEMAND MAC & MSC*/
			if @dend>='4/1/2005' /*MSC/MAC charges added to rate effective 4/1/2005*/
				begin
				if @dstart<'4/1/2005'
					begin
					select @dmac1=rate from rate where itemtype='Demand' and type=@rtid and linecharge=64 and @dend between startdate and enddate
					select @dmsc1=rate from rate where itemtype='Demand' and type=@rtid and linecharge=63 and @dend between startdate and enddate
					end
				else
					begin
					select @dmac1=rate,@dmac1a=rate * cast(@m1diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Demand' and type=@rtid and linecharge=64 and @dstart between startdate and enddate
					select @dmac1b=rate * cast(@m2diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Demand' and type=@rtid and linecharge=64 and @dend between startdate and enddate
					select @dmsc1=rate,@dmsc1a=rate * cast(@m1diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Demand' and type=@rtid and linecharge=63 and @dstart between startdate and enddate
					select @dmsc1b=rate * cast(@m2diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Demand' and type=@rtid and linecharge=63 and @dend between startdate and enddate
					
--added code to accomodate to 3 month blend. Michelle T. 3/12/2009
		
			if @mdiff=3
				begin
					
					select @dmsc11=rate,@dmsc1a=rate * cast(@m1diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Demand' and type=@rtid and linecharge=63 and @dstart1 between startdate and enddate
					select @dmsc111=rate from rate where itemtype='Demand' and type=@rtid and linecharge=63 and @dstart2 between startdate and enddate
					
				end
			else
					begin
					
					set @dmsc11=0 set @dmsc111=0
					end
			end
		end
				
				select @pdemand1 = 0, @pdemand2=0, @pdemand3=0
			DECLARE @pdemand2B DECIMAL(18,2),@pdemand3B DECIMAL(18,2)
		select @pdemand2B=0, @pdemand3B=0
	IF @dend>='4/1/2010'
			BEGIN  
			
			set @pdemand1=case when @pdemand<5 then 5 when @pdemand>5 then 5  else @pdemand end 
			--if @pdemand>5
			--BEGIN 
			IF @dstart < '4/1/2010'
			
				BEGIN
				IF @pdemand>5
				BEGIN 
				set @pdemand2=case when @pdemand>900 then 900-@pdemand1 else @pdemand-@pdemand1 end
				set @pdemand2b=case when @pdemand>100 then 100-@pdemand1 else @pdemand-@pdemand1 END
				END 
				ELSE 
				begin 
				SET @pdemand2=0
				SET @pdemand2b=0
				end
			
				IF @pdemand>100
				
				set @pdemand3b=@pdemand-100
				 
				ELSE
				
				SET @pdemand3b=0
				 
				
				
				if @pdemand>900
				set @pdemand3=@pdemand-900
				ELSE
				SET @pdemand3=0
				
			END 
			ELSE
			IF @dstart >= '4/1/2010'
			BEGIN
			if @pdemand>5
				begin
				set @pdemand2=case when @pdemand>100 then 100-@pdemand1 else @pdemand-@pdemand1 end
				END 
				ELSE
				BEGIN 
				SET @pdemand2=0
				END 
				
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
			--3/13/2009 Ambo/Truong amended to accomodate for the three-month pro-rating for the demand rate

				if @blend<>1 and @mdiff=3
				begin
				set @er1=(((@er1*@m1diff)+(@er11*@m3diff)+(@er111*@m2diff))/@dd)
				set @er2=(((@er2*@m1diff)+(@er22*@m3diff)+(@er222*@m2diff))/@dd)	
				set @dr1=@dr1a+@dr1b+isnull(@dr1c,0)
				set @dr2=@dr2a+@dr2b+isnull(@dr2c,0)
				set @dr3=@dr3a+@dr3b+isnull(@dr3c,0)
				set @er1cr = isnull(@er1cra,0) + isnull(@er1crb,0) --Michelle T. amended 10/6/2008
				

				if @dstart<='4/1/2005'
					begin
					set @Emac1=@Emac1
					set @Emsc1=@Emsc1
					set @dmac1=@dmac1*cast(datediff(dd,'4/1/2005',@dend+1) as decimal(18,2))/cast(@dd as decimal(18,2))
					set @dmsc1=@dmsc1*cast(datediff(dd,'4/1/2005',@dend+1) as decimal(18,2))/cast(@dd as decimal(18,2))
					end
				else
					begin
					set @Emac1=(((@Emac1*@m1diff)+(@Emac11*@m3diff)+(@Emac111*@m2diff))/@dd)
					set @Emsc1=(((@Emsc1*@m1diff)+(@Emsc11*@m3diff)+(@Emsc111*@m2diff))/@dd)
					set @dmac1=@dmac1a+@dmac1b
					set @dmsc1=(((@dmsc1*@m1diff)+(@dmsc11*@m3diff)+(@dmsc111*@m2diff))/@dd)
					end
				end
				else
				if @blend<>1 
				begin
				set @er1=@er1a+@er1b
				set @er2=@er2a+@er2b
				set @dr1=@dr1a+@dr1b
				set @dr2=@dr2a+@dr2b
				set @dr3=@dr3a+@dr3b
				set @er1cr = isnull(@er1cra,0) + isnull(@er1crb,0) --Michelle T. amended 10/6/2008

				
				if @dstart<='4/1/2005'
					begin
					set @Emac1=@Emac1
					set @Emsc1=@Emsc1
					set @dmac1=@dmac1*cast(datediff(dd,'4/1/2005',@dend+1) as decimal(18,2))/cast(@dd as decimal(18,2))
					set @dmsc1=@dmsc1*cast(datediff(dd,'4/1/2005',@dend+1) as decimal(18,2))/cast(@dd as decimal(18,2))
					end
				else
					begin
					set @Emac1=@Emac1a+@Emac1b
					set @Emsc1=@Emsc1a+@Emsc1b
					set @dmac1=@dmac1a+@dmac1b
					set @dmsc1=@dmsc1a+@dmsc1b
					end
				END
				
				IF @dstart>='1/31/2010'
				SET @Emsc1=@mscConvert
				IF @dend >= '4/1/2010'
				BEGIN 
				SET @er1=@er1aa
				SET @er2=@er2aa
				END 
				

---------9/19/2009 Michelle T. code below to accomodate to mid month rate change----------------------------------------------------------------------------------------------------------------
		
		if @ratesum > 4 
				BEGIN   
					set @energy=
					/*first 15000 (prorated)*/((round((@RateE1*@sum1),2)+
					/*>15000*/round((@sum2*@RateE2),2)+
					/*fuel adj*/round((@sum*@f),2)+
					/*MAC >4/1/2005*/ round((@sum_eff*@Emac1),2) +
					/*MSC >4/1/2005*/ round((@sum_eff*@Emsc1),2)) *
					/*Gross Receipt*/(1+@grt))+
				/*Credit*/isnull(round((@sum*@er1cr),2),0)
	
				
					
			set @fcost=round((@sum*@f),2)
			set @gecost=(round((@RateE1*@sum1),2)+round((@sum2*@RateE2),2)+round((@sum*@f),2)+ (case when @dend>='4/1/2005' then round(@sum_eff*@Emac1,2) else 0 end)+(case when @dend>='4/1/2005' then round(@sum_eff*@Emsc1,2) else 0 end))*@grt
		
		
				if @dend<'4/1/2005'
				begin
				set @edetail=convert(varchar(20),@sum1)+' KWH @ $'+convert(varchar(20),@RateE1)+'= $'+convert(varchar(20),cast((@RateE1*@sum1)as decimal(18,2)))+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@RateE2)+'= $'+convert(varchar(20),cast((@RateE2*@sum2)as decimal(18,2)))+'|Fuel Adj. '+convert(varchar(20),@sum)+'@ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost)+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
				end
			else
			--Michelle T. amended 10/15/2008
				if isnull(@er1cr,0) = 0 
				
					set @edetail=convert(varchar(20),@sum1)+' KWH @ $'+convert(varchar(20),@RateE1)+'= $'+convert(varchar(20),cast((@RateE1*@sum1)as decimal(18,2)))+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@RateE2)+'= $'+convert(varchar(20),cast((@RateE2*@sum2)as decimal(18,2)))+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) + '|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) + '|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
				
					else
			
					set @edetail=convert(varchar(20),@sum1)+' KWH @ $'+convert(varchar(20),@RateE1)+'= $'+convert(varchar(20),cast((@RateE1*@sum1)as decimal(18,2)))+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@RateE2)+'= $'+convert(varchar(20),cast((@RateE2*@sum2)as decimal(18,2)))+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) + '|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) + '|Credit '+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@er1cr)+'= $'+convert(varchar(20),cast((@er1cr*@sum)as decimal(18,2)))+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
				
			END 
	--	END removed, 6/21/2010 Michelle T.
	-----------------------------------------------------------------------------
			
			
				IF @dend > = '4/1/2010'
				BEGIN   
			    DECLARE @energyM decimal(18,2),@energyMb decimal(18,2),@cchargeaa DECIMAL(18,2),@cchargebb decimal(18,2),@energy1 DECIMAL(18,2)
				DECLARE @emac1bb DECIMAL(18,6),@gemsc DECIMAL(18,6)
				SET @emac1bb=@emac1b

				IF @dstart < '4/1/2010'
				BEGIN 
				 SET @emsc1b=ROUND(ISNULL(@emsc1b,0),6)				
				-- SET @emsc1=ROUND(@emsc1a+@emsc1b,6)
				 SET @emac1=ROUND(@emac1a,6)
				 set @fcost=round((@sum*@f),2)
				 SET @gemsc=@sum_eff*@Emsc1
				 SET @energyM=ROUND((@er1aa*@sum1),2)+ROUND((@er2aa*@sum2),2)+ROUND((@sum_eff*@Emac1a),2)
				 SET @energyMb=ROUND((@er1bb*@sum),2)+ROUND((@sum_eff*@emac1bb),2)
				 SET @gecost=ROUND((@energyM+@energyMb+@fcost+@gemsc)*@grt,2)
				 SET @energy=ROUND(@energyM+@energyMb+@fcost+@gecost+(@sum*@er1cr),2)+ROUND((@sum_eff*@Emsc1),2)

				 if isnull(@er1cr,0) = 0 
				 BEGIN 
					set @edetail=convert(varchar(20),@sum1)+' KWH @ $'+convert(varchar(20),@er1aa)+'= $'+convert(varchar(20),cast((@er1aa*@sum1)as decimal(18,2)))
					+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@er2aa)+'= $'+convert(varchar(20),cast((@er2aa*@sum2)as decimal(18,2)))
					--+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))z
					+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) 
					+'|TOTAL MARCH CONSUMPTION = $'+convert(varchar(20),@energyM)
					+'|'
					+'|'+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@er1bb)+'= $'+convert(varchar(20),cast((@er1bb*@sum)as decimal(18,2)))
					--+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@mscConvert)+'= $'+convert(varchar(20),cast(@sum_eff*@mscConvert as decimal(18,2)))
					+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1bb)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1bb as decimal(18,2))) 
					+ '|TOTAL APRIL CONSUMPTION = $'+convert(varchar(20),@energyMb)
					+'|'
					+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@emsc1 as decimal(18,2)))
					+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)
					+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) 
					+'|COMBINE TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)

	
				END 
			ELSE 
				BEGIN 
				
				set @edetail=convert(varchar(20),@sum1)+' KWH @ $'+convert(varchar(20),@er1aa)+'= $'+convert(varchar(20),cast((@er1aa*@sum1)as decimal(18,2)))
					+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@er2aa)+'= $'+convert(varchar(20),cast((@er2aa*@sum2)as decimal(18,2)))
					--+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))
					+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) 
					+'|TOTAL MARCH CONSUMPTION = $'+convert(varchar(20),@energyM)
					+'|'
					+'|'+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@er1bb)+'= $'+convert(varchar(20),cast((@er1bb*@sum)as decimal(18,2)))
					--+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@mscConvert)+'= $'+convert(varchar(20),cast(@sum_eff*@mscConvert as decimal(18,2)))
					+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) 
					+ '|TOTAL APRIL CONSUMPTION = $'+convert(varchar(20),@energyMb)
					+'|'
					+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@emsc1 as decimal(18,2)))
					+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)
					+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) 
					+'|Credit '+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@er1cr)+'= $'+convert(varchar(20),cast((@er1cr*@sum)as decimal(18,2)))
					+'|COMBINE TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)

					END
					END
					
				ELSE 
				IF @dstart > = '4/1/2010'
				BEGIN 
				IF @blend=1 AND @ratesum>=2
				BEGIN   
			
				
				set @fcost=round((@sum*@f),2)
				--set @gecost=(round((@rateE1*@sum),2)+round(@sum_eff*@Emac1,2)+round(@sum_eff*@Emsc1,2)*@grt)
				set @gecost=(round((@RateE1*@sum),2)+round((@sum*@f),2)+ (case when @dend>='4/1/2005' then round(@sum_eff*@Emac1,2) else 0 end)+(case when @dend>='4/1/2005' then round(@sum_eff*@Emsc1,2) else 0 end))*@grt
				SET @energy=(@sum_eff*@rateE1)+
							round((@sum_eff*@Emac1),2)+ 
							ROUND((@sum_eff*@Emsc1),2)+@gecost+@fcost+
							isnull(round((@sum*@er1cr),2),0)
			if isnull(@er1cr,0) = 0 
				set @edetail=convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@rateE1)+'= $'+convert(varchar(20),cast((@rateE1*@sum)as decimal(18,2)))
				+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)
				+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))
				+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) 
				+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) 
				+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
			else
				set @edetail=convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@rateE1)+'= $'+convert(varchar(20),cast((@rateE1*@sum)as decimal(18,2)))
				+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)
				+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))
				+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) 
				+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) 
				+'|Credit '+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@er1cr)+'= $'+convert(varchar(20),cast((@er1cr*@sum)as decimal(18,2)))
				+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
			END
			
			ELSE 
			IF @blend =2 AND @ratesum > 2
			BEGIN 
				set @fcost=round((@sum*@f),2)
				--set @gecost=(round((@rateE1*@sum),2)+round(@sum_eff*@Emac1,2)+round(@sum_eff*@Emsc1,2)*@grt)
				set @gecost=(round((@RateE1*@sum),2)+round((@sum*@f),2)+ (case when @dend>='4/1/2005' then round(@sum_eff*@Emac1,2) else 0 end)+(case when @dend>='4/1/2005' then round(@sum_eff*@Emsc1,2) else 0 end))*@grt
				SET @energy=(@sum_eff*@rateE1)+
							round((@sum_eff*@Emac1),2)+ 
							ROUND((@sum_eff*@Emsc1),2)+@gecost+@fcost+
							isnull(round((@sum*@er1cr),2),0)
			if isnull(@er1cr,0) = 0 
				set @edetail=convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@rateE1)+'= $'+convert(varchar(20),cast((@rateE1*@sum)as decimal(18,2)))
				+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)
				+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))
				+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) 
				+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) 
				+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
			else
				set @edetail=convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@rateE1)+'= $'+convert(varchar(20),cast((@rateE1*@sum)as decimal(18,2)))
				+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)
				+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))
				+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) 
				+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) 
				+'|Credit '+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@er1cr)+'= $'+convert(varchar(20),cast((@er1cr*@sum)as decimal(18,2)))
				+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
			
			
			
			END 
					
		ELSE
		IF  @ratesum <=2
		BEGIN  

		SET @er1=ROUND(@er1aa+@er1bb,6)

		set @energy=
					/*first 15000 (prorated)*/((round((@er1*@sum),2)+
					--/*>15000*/round((@sum2*@er2),2)+
					/*fuel adj*/round((@sum*@f),2)+
					/*MAC >4/1/2005*/case when @dend>='4/1/2005' then round((@sum_eff*@Emac1),2) else 0 end +
					/*MSC >4/1/2005*/case when @dend>='4/1/2005' then round((@sum_eff*@Emsc1),2) else 0 end) *
					/*Gross Receipt*/(1+@grt))+
					/*Credit*/isnull(round((@sum*@er1cr),2),0)
				
			
			set @fcost=round((@sum*@f),2)
			set @gecost=(round((@er1*@sum),2)+round((@sum*@f),2)+ (case when @dend>='4/1/2005' then round(@sum_eff*@Emac1,2) else 0 end)+(case when @dend>='4/1/2005' then round(@sum_eff*@Emsc1,2) else 0 end))*@grt
			
				if isnull(@er1cr,0) = 0 
					set @edetail=convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@er1)+'= $'+convert(varchar(20),cast((@er1*@sum)as decimal(18,2)))
					--+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@er2)+'= $'+convert(varchar(20),cast((@er2*@sum2)as decimal(18,2)))
					+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)
					+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))
					+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) 
					+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) 
					+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
				
					else
				
					set @edetail=convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@er1)+'= $'+convert(varchar(20),cast((@er1*@sum)as decimal(18,2)))
					--+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@er2)+'= $'+convert(varchar(20),cast((@er2*@sum2)as decimal(18,2)))
					+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)
					+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))
					+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) 
					+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) + '|Credit '+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@er1cr)+'= $'+convert(varchar(20),cast((@er1cr*@sum)as decimal(18,2)))
					+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)

	
		END 
		 			
	END 
	 
	   
	END --added, 6/21/2010 Michelle T.
ELSE 
		IF @dend < '4/1/2010' AND @ratesum <= 4
		BEGIN 	
					set @energy=
					/*first 15000 (prorated)*/((round((@er1*@sum1),2)+
					/*>15000*/round((@sum2*@er2),2)+
					/*fuel adj*/round((@sum*@f),2)+
					/*MAC >4/1/2005*/case when @dend>='4/1/2005' then round((@sum_eff*@Emac1),2) else 0 end +
					/*MSC >4/1/2005*/case when @dend>='4/1/2005' then round((@sum_eff*@Emsc1),2) else 0 end) *
					/*Gross Receipt*/(1+@grt))+
					/*Credit*/isnull(round((@sum*@er1cr),2),0)
				
			set @fcost=round((@sum*@f),2)
			set @gecost=(round((@er1*@sum1),2)+round((@sum2*@er2),2)+round((@sum*@f),2)+ (case when @dend>='4/1/2005' then round(@sum_eff*@Emac1,2) else 0 end)+(case when @dend>='4/1/2005' then round(@sum_eff*@Emsc1,2) else 0 end))*@grt
				

				if @dend<'4/1/2005'
				begin
				set @edetail=convert(varchar(20),@sum1)+' KWH @ $'+convert(varchar(20),@er1)+'= $'+convert(varchar(20),cast((@er1*@sum1)as decimal(18,2)))+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@er2)+'= $'+convert(varchar(20),cast((@er2*@sum2)as decimal(18,2)))+'|Fuel Adj. '+convert(varchar(20),@sum)+'@ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)+'|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost)+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
				end
			else
				begin --Michelle T. amended 10/15/2008
				if isnull(@er1cr,0) = 0 
					set @edetail=convert(varchar(20),@sum1)+' KWH @ $'+convert(varchar(20),@er1)+'= $'+convert(varchar(20),cast((@er1*@sum1)as decimal(18,2)))+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@er2)+'= $'+convert(varchar(20),cast((@er2*@sum2)as decimal(18,2)))+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) + '|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) + '|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)
				
					else
				
					set @edetail=convert(varchar(20),@sum1)+' KWH @ $'+convert(varchar(20),@er1)+'= $'+convert(varchar(20),cast((@er1*@sum1)as decimal(18,2)))+'|'+convert(varchar(20),@sum2)+' KWH @ $'+convert(varchar(20),@er2)+'= $'+convert(varchar(20),cast((@er2*@sum2)as decimal(18,2)))+'|Fuel Adj. '+convert(varchar(20),@sum)+'KWH @ '+convert(varchar(20),@f)+'= $'+convert(varchar(20),@fcost)+'|MSC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emsc1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emsc1 as decimal(18,2)))+'|MAC Adj Factor '+convert(varchar(20),@sum_eff)+' KWH @ '+convert(varchar(20),@Emac1)+'= $'+convert(varchar(20),cast(@sum_eff*@Emac1 as decimal(18,2))) + '|Gross Receipt @ '+convert(varchar(20),@grt)+'= $'+convert(varchar(20),@gecost) + '|Credit '+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@er1cr)+'= $'+convert(varchar(20),cast((@er1cr*@sum)as decimal(18,2)))+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)

					END
			END 
	
		IF @dend >='4/1/2010'
		BEGIN  
		IF @dstart < '4/1/2010'
		BEGIN 
		SELECT @dr1=@dr1a,@dr2=@dr2a, @dr3=@dr3a
		
		END 
		ELSE
		BEGIN 
		SELECT @dr1=@dr1a+@dr1b,@dr2=@dr2a+@dr2b,@dr3=@dr3a+@dr3b
		END 
		END 
		
			--Demand Costs
			
			set @dr1cost=@dr1/5
			
			set @demand=
				/*first 5 (flat charge)*/((case when @pdemand1>0 then round((@dr1*@dd/30),2) else 0 end)+
				/*6-900*/round((@dr2*@dd/30)*(@pdemand2),2)+
				/*>900*/round((@dr3*@dd/30)*(@pdemand3),2)+
				/*MAC >4/1/2005*/(case when @dend>='4/1/2005' then round(((@dmac1*@dd/30)*@pdemand),2) else 0 end) +
				/*MSC >4/1/2005*/(case when @dend>='4/1/2005' then round(((@dmsc1*@dd/30)*@pdemand),2) else 0 end)) *
				/*Gross Receipt*/(1+@grt)
			set @gdcost=(round(((@dr1cost*@dd/30)*@pdemand1),2)+round(((@dr2*@dd/30)*@pdemand2),2)+round(((@dr3*@dd/30)*@pdemand3),2)+(case when @dend>='4/1/2005' then round(((@dmac1*@dd/30)*@pdemand),2) else 0 end)+(case when @dend>='4/1/2005' then round(((@dmsc1*@dd/30)*@pdemand),2) else 0 end))*@grt
	
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
			
			set @ddetail=convert(varchar(20),@pdemand1)+' KW @ $'+convert(varchar(20),@dr1cost)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr1cost*@dd/30)*@pdemand1 as decimal(18,2)))+'|'+convert(varchar(20),@pdemand2)+' KW @ $'+convert(varchar(20),@dr2)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr2*@dd/30)*@pdemand2 as decimal(18,2)))+'|'+convert(varchar(20),@pdemand3)+' KW @ $'+convert(varchar(20),@dr3)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr3*@dd/30)*@pdemand3 as decimal(18,2)))+'|MSC Adj Factor '+convert(varchar(20),@pdemand)+' KW @ $'+convert(varchar(20),@dmsc1)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(((@dmsc1*@dd/30)*@pdemand) as decimal(18,2)))+'|MAC Adj Factor '+convert(varchar(20),@pdemand)+' KW @ $'+convert(varchar(20),@dmac1)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(((@dmac1*@dd/30)*@pdemand) as decimal(18,2)))+'|Gross Receipt @ '+convert(varchar(20),@grt)+' = $'+convert(varchar(20),@gdcost)+'|TOTAL DEMAND = '+convert(varchar(20),@demand)

			END 
			
			END 
			else
			IF @dend<'4/1/2010' 
			
			
				begin
					set @ddetail=convert(varchar(20),@pdemand1)+' KW @ $'+convert(varchar(20),@dr1cost)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr1cost*@dd/30)*@pdemand1 as decimal(18,2)))+'|'+convert(varchar(20),@pdemand2)+' KW @ $'+convert(varchar(20),@dr2)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr2*@dd/30)*@pdemand2 as decimal(18,2)))+'|'+convert(varchar(20),@pdemand3)+' KW @ $'+convert(varchar(20),@dr3)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr3*@dd/30)*@pdemand3 as decimal(18,2)))+'|MSC Adj Factor '+convert(varchar(20),@pdemand)+' KW @ $'+convert(varchar(20),@dmsc1)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(((@dmsc1*@dd/30)*@pdemand) as decimal(18,2)))+'|MAC Adj Factor '+convert(varchar(20),@pdemand)+' KW @ $'+convert(varchar(20),@dmac1)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(((@dmac1*@dd/30)*@pdemand) as decimal(18,2)))+'|Gross Receipt @ '+convert(varchar(20),@grt)+' = $'+convert(varchar(20),@gdcost)+'|TOTAL DEMAND = '+convert(varchar(20),@demand)
				end
			set @tgrtcost=@gdcost+@gecost

			select @nocredit=lmepexempt,@taxexempt=taxexempt from tblleases where billingid=@bid
			set @subamt=(@energy+isnull(@demand,0))
	
			/*Calc Adjustments (+) - Added 10/14/2004 - CoriS*/
			if exists(select *  from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1 and amt>0)
				begin
				select @adjs=sum(abs(amt)) from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1  and amt>0
				set @subamt=@subamt+@adjs
				end
			else
				begin
				set @adjs=0
				end
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
				set @subamt=@subamt-@credit
				set @afeedollar=round(@subamt*@afee,2)
				set @subamt=@subamt+@afeedollar+@addonfeedollar
				end
			else
				begin
				set @bcredit=round(@credit*@sum,2)
				if exists(select amt from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1 and amt<0)
					begin
					--select @credit=@bcredit+sum(abs(amt)) from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1 and amt<0
					select @credit=sum(abs(amt)) from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1 and amt<0
					end
				else
					begin
					--set @credit=@bcredit+0
					set @credit=0
					end
				set @subamt=round(@subamt-@credit,2)
				set @afeedollar=round((@subamt)*@afee,2)
				set @subamt=round(@subamt+@afeedollar+@addonfeedollar,2)
				end	
			if @taxexempt=1
				begin
				set @stax=0
				end
							
			set @totalamt=round(@subamt+(round((@subamt*@stax),2)),2)

			if @nocredit=0
				begin
					set @totalamt=@totalamt - @bcredit
				end
			set @credit=@credit + @bcredit
			--rsm need to add extusg to tblbillbyperiod
			select @extcount = 0
			select @leaseext = 0
			select @extcount = count(*) from meters where leaseutilityid=@lid and online=1 and nobill=0 and extusg = 1
			if @extcount >= 1
			   begin
			      set @leaseext = 1
			   end
			else
			   begin
			      set @leaseext = 0
			   end
			--rsm end
			
			insert into tblbillbyperiod (leaseutilityid,ypid,subtotal,salestax,tax,totalamt,tenantname,adminfee,ratetenant,billyear,billperiod,datestart,dateend,bldgnum,tenantnum,billingname,fueladj,sqft,utility,tstrt,tcity,tzip,energy,energydetail,demand,demanddetail,metercount,credit,addonfee,btbldgname,btstrt,btcity,btstate,btzip,strt,servicefee,adminfeedollar,taxexempt,fuel,grtdollar,grt,tstate,[partial],shadow,invoice_note,adjustment,coincident,extusg) --rsm added extusg
			values(@lid,@ypid,@subamt,@stax,round((@subamt*(@stax)),2),@totalamt,@tname,@afee,@rt,@by,@bp,@dstart,@dend,@bldg,@tnum,@bname,@f,@sqft,@utility ,@tstrt,@tcity,@tzip,@energy,@edetail,@demand,@ddetail,@mc,@credit,@aonfee ,@btname ,@btstrt ,@btcity ,@btstate ,@btzip ,@bgs,@addonfeedollar,@afeedollar,@taxexempt,@fcost,@tgrtcost,@grt,@tstate,@p,@shadow,@inv_note,@adjs,@coincident,@leaseext) --rsm added @leaseext
			--select @lid as lid,@ypid as ypid,@subamt as subamt,@stax AS Stax,round((@subamt*(@stax)),2) AS [Subamt_stax],@totalamt as TotalAmt,@tname as tName,@afee,@rt,@by,@bp,@dstart,@dend,@bldg,@tnum,@bname,@f,@sqft,@utility ,@tstrt,@tcity,@tzip,@energy,@edetail,@demand,@ddetail,@mc,@credit,@aonfee ,@btname ,@btstrt ,@btcity ,@btstate ,@btzip ,@bgs,@addonfeedollar,@afeedollar,@taxexempt,@fcost,@tgrtcost,@grt,@tstate,@p,@shadow,@inv_note,@adjs,@coincident
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
							select @op=onpeak,@ofp=offpeak,@prev=prev,@curr=[current],@used=used,@rawon=rawonpeak,@rawoff=rawoffpeak,@rprev=rawprevious,@rcurr=rawcurrent,@rused=rawused,@dpeak=datepeak,@d=demand,@previousoff=previousoff,@currentoff=currentoff,@usedoff=usedoff,@previousint=previousint,@currentint=currentint,@usedint=usedint,@rawpreviousoff=rawpreviousoff,@rawcurrentoff=rawcurrentoff,@rawusedoff=rawusedoff,@rawpreviousint=rawpreviousint,@rawcurrentint=rawcurrentint,@rawusedint=rawusedint from consumption c ,peakdemand p where p.meterid=c.meterid and  p.billyear=c.billyear and p.billperiod=c.billperiod and c.meterid=@id and c.billyear=@by and c.billperiod=@bp  --rsm added OFF/INT fields
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
					    insert into tblmetersbyperiod (leaseutilityid,ypid,meterid,bldgnum,meternum,multiplier,billyear,billperiod,online,datestart,dateoffline,datelastread,coincident,onpeak,offpeak,prev,[current],used,rawonpeak,rawoffpeak,rawprevious,rawcurrent,rawused,demand_p,manualmultiplier,bill_id,addonfee,mextusg,demand_c,previousoff,currentoff,usedoff,previousint,currentint,usedint,rawpreviousoff,rawcurrentoff,rawusedoff,rawpreviousint,rawcurrentint,rawusedint) select  @lid,@ypid,@id,@bldg,meternum,multiplier,@by,@bp,online,datestart,dateoffline,datelastread,@c,@op,@ofp,@prev,@curr,@used,@rawon,@rawoff,@rprev,@rcurr,@rused,@d,manualmultiplier,@bid_id,@aonfee,@ext,@demand_c,@previousoff,@currentoff,@usedoff,@previousint,@currentint,@usedint,@rawpreviousoff,@rawcurrentoff,@rawusedoff,@rawpreviousint,@rawcurrentint,@rawusedint from meters where meterid=@id  --rsm addedOFF/INT fields
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










































