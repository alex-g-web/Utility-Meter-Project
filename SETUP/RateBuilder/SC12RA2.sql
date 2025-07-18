USE [dbBilling]
GO
/****** Object:  StoredProcedure [dbo].[sp_Invoice_SC12RA2]    Script Date: 11/16/2016 12:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










/****** Object:  Stored Procedure dbo.sp_Invoice_SC4RA2    Script Date: 8/25/2005 10:51:01 AM ******/
ALTER  PROCEDURE [dbo].[sp_Invoice_SC12RA2] @group varchar(100),@by int, @bp int,@p tinyint as
-- set @group='INV_20050128130648'
-- set @by=2009
-- set @bp=11
-- set @p=0
/************************************************************************************/
--1/11/2007 N.Ambo modified the section dealing with selecting the season id (@sid)
--when blend = 1; criteria was added to only look at periods where effective date
--is null (or 1/1/1900) so that old seasons like 'November 2003 rates' will not be 
--picked up. This solution is temporary since we should really be using an end date 
--for this criteria (which will require a design change) and effective date should really
--remain as it is so that we would always know when a season became efective
--3/19/2008 N.Ambo modified to include dollar amount for on peak and offpeak KWH in 
--the energydetail field of tblbillbyperiod
--3/15/2009 rounded variable @onemac1a,@onemac1b,@offemac1a,@offemac1b,@oner1a,@oner1b,@offer1a,@offer1b
--5/14/2009 M.Truong and N.Ambo fixed variables so amounts are rounded properly, 
--amended formula for 'Total Consumption' (@energy variable), and included breakdown for demand
/************************************************************************************/
set nocount on
/*Created based on sp_Invoice_SC4RA2_org. Changes made to reflect new ConEd rate structure effective 4/1/2005. Procedure written to be reverse compatible.*/
/*declare @shadow tinyint,@INV_NOTE nvarchar(500),@display varchar(50),@commandline varchar(800),@sum decimal(18,2), @f float,@bldg varchar(20),@c int, @mc int,@aonfee decimal(18,4),@tnum varchar(20),@sqft int,@bname varchar(300),@utility int,@afee float,@rt int,@stax float,@energy decimal(18,2),@subamt decimal(18,2),@dstart datetime,@dend datetime,@ypid int,@id int,@lid int, @mult int,@op decimal(18,2),@taxexempt tinyint,@tstate char(2),@ofp decimal(18,2),@prev decimal(18,2),@curr decimal(18,2),@used decimal(18,2),@rprev decimal(18,2),@rawoff decimal(18,2),@rawon decimal(18,2),@rcurr decimal(18,2),@bcredit decimal(18,2),@rused decimal(18,2),@dpeak datetime,@cid float,@d decimal(18,2),@tstrt varchar(20),@tcity varchar(20),@tzip varchar(10),@tname varchar(100),@afeecost decimal(18,2),@aonfeecost decimal(18,2),@credit decimal(18,6),@bgs varchar(100),@btname varchar(50),@btstrt varchar(100),@btcity varchar(50),@btstate varchar(5),@btzip varchar(10),@dd decimal(18,5),@rtid tinyint,@rgid tinyint,@oner1 decimal(18,6),@offer1 decimal(18,6),@oner1a decimal(18,12),@offer1a decimal(18,12),@offer1b decimal(18,12),@sum2 decimal(18,2),@sum3 decimal(18,2),@pdemand decimal(18,2),@dr1 decimal(18,6),@dr2 decimal(18,6),@dr3 decimal(18,6),@pdemand1 decimal(18,2),@pdemand4 decimal(18,2),@pdemand2 decimal(18,2),@pdemand3 decimal(18,2),@fuel float,@increase decimal(18,4),@totalamt decimal(18,2), @sid smallint,@nocredit tinyint,@bid int,@energy1 decimal(18,2),@demand1 decimal(18,2),@demand decimal(18,2),@prorate decimal(18,6),@cfuel float,@admin float,@blend tinyint,@m1diff tinyint,@m2diff tinyint,@er1a decimal(18,6),@er1b decimal(18,6),@er2a decimal(18,6),@er2b decimal(18,6),@dr1a decimal(18,5),@edetail varchar(2000),@ddetail varchar(2000),@ondr1 decimal(18,5),@offdr1 decimal(18,5),@ondr1a decimal(18,5),@offdr1a decimal(18,5),@oner1b decimal(18,12),@ondr1b decimal(18,5),@offdr1b decimal(18,5),@fcost decimal(18,2),@grtcost decimal(18,2),@ecost decimal(18,2),@gdcost decimal(18,2),@dcost decimal(18,2),@m1 tinyint,@m2 tinyint,@sid1 int,@bid_id int,@mac decimal(18,6),@grt decimal(18,6),@td_tax decimal(18,6),@esco_cost decimal(18,6),@stax_cost decimal(18,6),@M_dollar decimal(18,2),@td_tax_cost decimal(18,2),@energy_esco decimal(18,2),@ext tinyint,@acnt int,@adjs decimal(18,2),
@onemac1 decimal(18,6),@onemac1a decimal(18,12),@onemac1b decimal(18,12),@offemac1 decimal(18,6),@offemac1a decimal(18,12),@offemac1b decimal(18,12),@ondmac1 decimal(18,6),@ondmac1a decimal(18,12),@ondmac1b decimal(18,12),@oneMSC1 decimal(18,6),@oneMSC1a decimal(18,6),@oneMSC1b decimal(18,6),@offeMSC1 decimal(18,6),@offeMSC1a decimal(18,6),@offeMSC1b decimal(18,6),@ondMSC1 decimal(18,6),@ondMSC1a decimal(18,6),@ondMSC1b decimal(18,6),@sum_eff_on decimal(18,2),@sum_eff_off decimal(18,2),@op_dollar decimal(18,2), @ofp_dollar decimal(18,2)
*/
--Michelle T. variables added for mid month rate change
declare   @SameMnthBlnd1 datetime,@MidMnthEnd1 datetime, @MidMnthEnd2 datetime,@MnthChnge int,@midmnthStrt1 datetime, @midmnthStrt2 datetime, @PdEndMonth int, @pdStrtMonth int,@ratesum22b int,@ratesum int,@ratesum1 int,@ratesum1a int,@ratesum1b int,@ratesum2 int, @ratesum2a int, @ratesum2b int, @ratesum3 int,@ratesum4 int, @PdYear int,@rateE1 decimal(18,6),@rateoff decimal(18,6),@rateE1a decimal(18,12),@rateE1b decimal(18,12),@rateE1c decimal(18,12), @rateE2 decimal(18,6)
declare @oner1c decimal(18,12),@offer1c decimal(18,12),@cmd varchar(200)
declare @clause varchar(20),@SameMnthBlnd datetime,@SameMnthDiff1 int, @SameMnthDiff2 int,@ratestrt datetime, @rateend datetime, @ratestrt2 datetime

--5/18/2009 N.Ambo changed demand variables to correct decimal places
declare @shadow tinyint,@INV_NOTE nvarchar(500),@display varchar(50),@commandline varchar(800),@sum decimal(18,2), @f float,@bldg varchar(20),@c int, @mc int,@aonfee decimal(18,4),@tnum varchar(20),@sqft int,@bname varchar(300),@utility int,@afee float,@rt int,@stax float,@energy decimal(18,2),@subamt decimal(18,2),@dstart datetime,@dend datetime,@ypid int,@id int,@lid int, @mult int,@op decimal(18,2),@taxexempt tinyint,@tstate char(2),@ofp decimal(18,2),@prev decimal(18,2),@curr decimal(18,2),@used decimal(18,2),@rprev decimal(18,2),@rawoff decimal(18,2),@rawon decimal(18,2),@rcurr decimal(18,2),@bcredit decimal(18,2),@rused decimal(18,2),@dpeak datetime,@cid float,@d decimal(18,2),@tstrt varchar(20),@tcity varchar(20),@tzip varchar(10),@tname varchar(100),@afeecost decimal(18,2),@aonfeecost decimal(18,2),@credit decimal(18,6),@bgs varchar(100),@btname varchar(50),@btstrt varchar(100),@btcity varchar(50),@btstate varchar(5),@btzip varchar(10),@dd decimal(18,5),@rtid tinyint,@rgid tinyint,@oner1 decimal(18,6),@offer1 decimal(18,6),@oner1a decimal(18,12),@offer1a decimal(18,12),@offer1b decimal(18,12),@sum2 decimal(18,2),@sum3 decimal(18,2),@pdemand decimal(18,2),@dr1 decimal(18,6),@dr2 decimal(18,6),@dr3 decimal(18,6),@pdemand1 decimal(18,2),@pdemand4 decimal(18,2),@pdemand2 decimal(18,2),@pdemand3 decimal(18,2),@fuel float,@increase decimal(18,4),@totalamt decimal(18,2), @sid smallint,@nocredit tinyint,@bid int,@energy1 decimal(18,2),@demand1 decimal(18,2),@demand decimal(18,2),@prorate decimal(18,6),@cfuel float,@admin float,@blend tinyint,@m1diff tinyint,@m2diff tinyint,@er1a decimal(18,6),@er1b decimal(18,6),@er2a decimal(18,6),@er2b decimal(18,6),@dr1a decimal(18,12),@edetail varchar(2000),@ddetail varchar(2000),@ondr1 decimal(18,12),@offdr1 decimal(18,12),@ondr1a decimal(18,12),@offdr1a decimal(18,12),@oner1b decimal(18,12),@ondr1b decimal(18,12),@offdr1b decimal(18,12),@fcost decimal(18,2),@grtcost decimal(18,2),@ecost decimal(18,2),@gdcost decimal(18,2),@dcost decimal(18,2),@m1 tinyint,@m2 tinyint,@sid1 int,@bid_id int,@mac decimal(18,6),@grt decimal(18,6),@td_tax decimal(18,6),@esco_cost decimal(18,6),@stax_cost decimal(18,6),@M_dollar decimal(18,2),@td_tax_cost decimal(18,2),@energy_esco decimal(18,2),@ext tinyint,@acnt int,@adjs decimal(18,2),
@onemac1 decimal(18,6),@onemac1a decimal(18,12),@onemac1b decimal(18,12),@offemac1 decimal(18,6),@offemac1a decimal(18,12),@offemac1b decimal(18,12),@ondmac1 decimal(18,6),@ondmac1a decimal(18,12),@ondmac1b decimal(18,12),@oneMSC1 decimal(18,6),@oneMSC1a decimal(18,6),@oneMSC1b decimal(18,6),@offeMSC1 decimal(18,6),@offeMSC1a decimal(18,6),@offeMSC1b decimal(18,6),@ondMSC1 decimal(18,6),@ondMSC1a decimal(18,6),@ondMSC1b decimal(18,6),@sum_eff_on decimal(18,2),@sum_eff_off decimal(18,2),@op_dollar decimal(18,2), @ofp_dollar decimal(18,2)
declare @utilitybilltotalKWH int --rsm 10152015
declare @utilitybilltotalamount dec(18,2) --rsm 10152015
declare @utilitybilllmepcredit dec(18,2) --rsm 10152015


if @p=0
	begin
	set @commandline='declare x1 cursor for select distinct leaseutilityid,tenantnum,bldgnum,utility from ['+@group+'] where procname=''sp_Invoice_SC12RA2'' and leaseutilityid not in(select leaseutilityid from tblbillbyperiod where reject=0 and  billyear='+ltrim(str(@by))+' and billperiod='+ltrim(str(@bp))+') and ratetenant in(select id from ratetypes where typecheck=''SC12RA2'')'
	end
else
	begin
	set @commandline='declare x1 cursor for select distinct leaseutilityid,tenantnum,bldgnum,utility from ['+@group+'] where procname=''sp_Invoice_SC12RA2'' and leaseutilityid not in(select leaseutilityid from tblbillbyperiod where reject=0 and  billyear='+ltrim(str(@by))+' and billperiod='+ltrim(str(@bp))+') and ratetenant in(select id from ratetypes where typecheck=''SC12RA2'') and leaseutilityid in(select lid from billyrperiod_partial p,billyrperiod b where p.ypid=b.ypid and b.billyear='+ltrim(str(@by))+' and billperiod='+ltrim(str(@bp))+')'
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
			select @shadow=shadow,@inv_note=bill_note from tblleasesutilityprices where leaseutilityid=@lid
			if exists (select * from billyrperiod_partial where lid=@lid and ypid in(select ypid from billyrperiod where bldgnum=@bldg and billyear=@by and billperiod=@bp and utility=@utility))
				begin
				set @p=1
				end
			else
				begin
				set @p=0
				end
			/*IF @BLEND=1 BILLPERIOD ONLY IN ONE MONTH ELSE BLEND FOR 2 MONTHS*/
			if @p=0
				begin
				select @dstart=datestart,@dend=dateend,@dd=datediff(dd,datestart,dateend)+1,@m1diff=case when datediff(dd,datestart,dateend-datepart(dd,dateend))+1<0 then 0  else datediff(dd,datestart,dateend-datepart(dd,dateend))+1 end,@m2diff=case when datediff(dd,dateend-datepart(dd,dateend),dateend)<0 then 0 else datediff(dd,dateend-datepart(dd,dateend),dateend) end ,@ypid=ypid,@blend=case when datepart(month,datestart)=datepart(month,dateend) then 1 else 2 end  from billyrperiod where billyear=@by and billperiod=@bp and bldgnum=@bldg and utility=@utility
				end
			else
				begin
				select @dstart=p.datestart,@dend=p.dateend,@dd=datediff(dd,p.datestart,p.dateend)+1,@m1diff=case when datediff(dd,p.datestart,p.dateend-datepart(dd,p.dateend))+1<0 then 0  else datediff(dd,p.datestart,p.dateend-datepart(dd,p.dateend))+1 end,@m2diff=case when datediff(dd,p.dateend-datepart(dd,p.dateend),p.dateend)<0 then 0 else datediff(dd,p.dateend-datepart(dd,p.dateend),p.dateend) end ,@ypid=p.ypid,@blend=case when datepart(month,p.datestart)=datepart(month,p.dateend) then 1 else 2 end  from billyrperiod b,billyrperiod_partial p where b.ypid=p.ypid and p.lid=@lid and b.billyear=@by and b.billperiod=@bp and b.bldgnum=@bldg and b.utility=@utility
				end
			select @c=coincident from tblleasesutilityprices where leaseutilityid=@lid
			select @bgs=strt,@btname=btbldgname,@btstrt=btstrt,@btcity=btcity,@btstate=btstate from buildings where bldgnum=@bldg
			select @bid=l.billingid,@sqft=sqft,@bname=billingname,@afee=adminfee,@rt=tl.ratetenant ,@tname=tname,@tstrt=tstrt,@tcity=tcity,@tzip=tzip,@mc=count(meterid),@aonfee=addonfee ,@tstate=tstate from tblleases l,tblleasesutilityprices tl,meters m where l.billingid=tl.billingid and tl.leaseutilityid=m.leaseutilityid and tl.leaseutilityid=@lid  and nobill=0 and online=1 group by sqft,billingname,adminfee,tl.ratetenant ,tname,tstrt,tcity,tzip,addonfee,l.billingid,tstate
			select @rgid=region from buildings where bldgnum=@bldg
			select @credit=sum(isnull(unit_credit,0)),@mac=cast(mac as decimal(18,8)),@grt=grossreceipt,@td_tax=tdsalestax,@esco_cost=sum(escoFixedRate),@stax_cost=salestax from utilitybill where ypid=@ypid group by mac,grossreceipt,tdsalestax,salestax
			select @utilitybilltotalKWH = sum(isnull(totalkwh,0)) from utilitybill where ypid=@ypid --rsm 10152015
			select @utilitybilltotalamount = sum(isnull(escobillamt,0)) from utilitybill where ypid=@ypid --rsm 10152015
			select @utilitybilllmepcredit = sum(isnull(lmepcredit,0)) from UtilityBill where ypid=@ypid --rsm 10152015

			select @credit = @utilitybilllmepcredit / @utilitybilltotalKWH --rsm 10152015
			select @esco_cost = @utilitybilltotalamount / @utilitybilltotalKWH  --rsm 10152015
			/*Inserted by JoseC*/
			select @acnt=count (distinct addonfee) from meterprices  where meterid in(select meterid from meters where online=1 and nobill=0 and leaseutilityid =@lid)
			if @acnt=1
				begin
				select distinct @aonfee= b.addonfee from building_addonfee b,meterprices p where b.id=p.addonfee and meterid in(select meterid from meters where online=1 and nobill=0 and leaseutilityid =@lid)
				end
			else
				begin
				set @aonfee=0
				end
			
			select @rtid=id from ratetypes where type='SC12RA2' and regionid=@rgid
			select @op=sum(onpeak),@ofp=sum(offpeak),@sum=sum([used]) from consumption where meterid in(select meterid from meters where leaseutilityid=@lid and online=1 and nobill=0)  and billyear=@by and billperiod=@bp
			if @c=0
				begin
				set @pdemand=(select sum([demand]) from peakdemand where meterid in(select meterid from meters where leaseutilityid=@lid and online=1 and nobill=0)  and billyear=@by and billperiod=@bp)	
				end
			else
				begin
				set @pdemand=(select sum([demand]) from coincidentdemand where leaseutilityid=@lid and billyear=@by and billperiod=@bp and type=1)
				end
			/*PRORATE USAGE IF  @DSTART<'4/1/2005' AND @DEND>='4/1/2005' */
			if @dstart<'4/1/2005' and @dend>='4/1/2005'
				begin
				set @sum_eff_on=@op*cast(datediff(dd,'4/1/2005',@dend+1) as decimal(18,2))/cast(@dd as decimal(18,2))
				set @sum_eff_off=@ofp*cast(datediff(dd,'4/1/2005',@dend+1) as decimal(18,2))/cast(@dd as decimal(18,2))
				end
			ELSE
				begin
				set @sum_eff_on=@op
				set @sum_eff_off=@ofp
				end
		
			/*FIND ENERGY/DEMAND RATES*/
			if @blend=1
				begin
				--seasonid
				if exists(select * from rateseasons where (datepart(month,@dstart)=smonth or datepart(month,@dend)=emonth) and regionid=@rgid
						and (effective_date is not null and effective_date > '1/1/1900')) --1/11/2007 N.Ambo added this line 
					begin
					 select top 1  @sid=id from rateseasons where ((datepart(month,@dstart)=smonth and datepart(day,@dstart)>=sday )or (datepart(month,@dend)=emonth and datepart(day,@dend)<=eday)) and regionid=@rgid and @dstart>effective_date order by effective_date desc
					end
				else
					begin 
					select top 1  @sid =id from rateseasons where ((datepart(month,@dstart) >smonth or datepart(month,@dend)<emonth)) and regionid=@rgid and @dstart>effective_date order by effective_date desc
					end
				
				--energy
				set @oner1=(select sum(distinct rate) from rate where itemtype='Energy' and type=@rtid and linecharge=23 and peak in(select id from ratepeak where peakname=1 and seasonid=@sid) and @dstart between startdate and enddate)
				set @offer1=(select distinct rate from rate where itemtype='Energy' and type=@rtid and linecharge=23 and peak in(select id from ratepeak where peakname=2 and seasonid=@sid) and @dstart between startdate and enddate)
				select distinct @OnEmac1=rate from rate where itemtype='Energy' and type=@rtid and linecharge=64 and peak in (select id from ratepeak where peakname=1) and @dend between startdate and enddate
				select distinct @OffEmac1=rate from rate where itemtype='Energy' and type=@rtid and linecharge=64 and peak in (select id from ratepeak where peakname=2) and @dend between startdate and enddate
				

			--demand
				set @ondr1=(select sum( distinct rate) from rate where itemtype='Demand' and type=@rtid and linecharge=24 and peak in(select id from ratepeak where peakname=1 and seasonid=@sid) and @dstart between startdate and enddate)
				set @offdr1=(select sum(distinct rate) from rate where itemtype='Demand' and type=@rtid and linecharge=24 and peak in(select id from ratepeak where peakname=2 and seasonid=@sid) and @dstart between startdate and enddate)
				set @dr1=@ondr1+@offdr1
				select distinct @OnDmac1=rate from rate where itemtype='Demand' and type=@rtid and linecharge=64 and peak in (select id from ratepeak where peakname=1) and @dend between startdate and enddate
				end
			else
------blend = 2---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
				begin
				--seasonid
				select  top 1 @sid=id from rateseasons  where (datepart(month,@dstart)>=smonth or datepart(month,@dstart)<=emonth) and regionid=@rgid and effective_date<@dstart order by effective_date desc

				if exists(select  id from rateseasons  where (datepart(month,@dend)>=smonth or datepart(month,@dend) <= emonth) and regionid=@rgid)	
					begin
					select  top 1 @sid1=id from rateseasons  where (datepart(month,@dend)>=smonth or datepart(month,@dend) <= emonth)  and regionid=@rgid and @dend>effective_date order by effective_date desc
					end
				else
					begin
					select  top 1 @sid1=id from rateseasons  where datepart(month,@dend)>=smonth and regionid=@rgid and @dend>effective_date and effective_date<@dend order by effective_date desc
					end
					
------Michelle T. 9/18/2009 determine if mid month rate changes exist for billperiod------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


select @pdEndMonth=datepart(mm,@dend),@PdYear=datepart(yy,@dend)
SELECT @clause = '%'+convert(varchar(20),@PdYear)+'%'	
--code added to accomodate for all possible rate change conditions based on bill period start end date compared to rate start and end date----------------------------------------------------------------------------------------------------------------
select @pdEndMonth=datepart(mm,@dend),@pdStrtMonth=datepart(mm,@dstart),@PdYear=datepart(yy,@dend)
SELECT @clause = '%'+convert(varchar(20),@PdYear)+'%'	

select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdStrtMonth and startdate like @clause 
set @ratesum1 = @@rowcount

--Check if rate change occur in the first month


if @ratesum1=8
	
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


if @ratesum2=8
begin
select @MidMnthStrt2=startdate ,@MidMnthEnd2=enddate, @MnthChnge=datepart(mm,startdate) from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdEndMonth and startdate like @clause order by startdate asc

select @dend as dend2,@midmnthstrt2 as mndmthstrt,@midmnthend2 as midend2

--check if first part of the midmonth blend is being use for a billperiod
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthend=@pdEndMonth and startdate like @clause and @MidMnthStrt2-1 between startdate and enddate 
set @ratesum2a=@@rowcount

--check if second part of the midmonth blend is being use for a billperiod
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdEndMonth and startdate like @clause and @dend between startdate and enddate 
select * from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@pdEndMonth and startdate like @clause and @dend between startdate and enddate 

set @ratesum2b=@@rowcount

if @ratesum2b=4

begin
--if there is a midmonth change check if second part is being use, if not set @ratesum2b=0

select * from rate where @dend > (select top 1 startdate from rate where monthstart=@pdEndMonth and startdate like @clause and type=@rtid order by startdate desc) and startdate like @clause and monthstart=@pdEndMonth and type=@rtid and linecharge=23
set @ratesum22b=@@rowcount

if @ratesum22b>0
begin
set @ratesum2b=4
end
else
begin
set @ratesum2b=0
end

set @ratesum2=@ratesum2a+@ratesum2b
end
end
set @ratesum=@ratesum1+@ratesum2
---------------------------------
if @ratesum > 8

		begin
			select @pdEndMonth=datepart(mm,@dend),@pdStrtMonth=datepart(mm,@dstart),@PdYear=datepart(yy,@dend)
			SELECT @clause = '%'+convert(varchar(20),@PdYear)+'%'
			select @SameMnthBlnd=(select top 1 enddate from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@PdEndMonth and startdate like @clause order by startdate asc)
			set @SameMnthBlnd=dateadd(dd,1,@SameMnthBlnd)
			
			select @SameMnthBlnd1=(select top 1 startdate from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@PdEndMonth and startdate like @clause order by startdate asc)
		
		if @ratesum2 =8
		begin
				
		--Find # of days to apply rate to for the first half of the month
		select top 1 @ratestrt=startdate,@rateend=enddate from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@PdEndMonth and startdate like @clause order by startdate asc
		set	@SameMnthDiff1=(datepart(dd,@rateend)-datepart(dd,@ratestrt))+1

--Find # of days to apply rate to for the second half of the same month blend for billperiod
		select top 1 @ratestrt2=startdate from rate where  type=@rtid and itemtype='energy' and linecharge=23 and startdate = @midmnthstrt1
		set	@SameMnthDiff2=(datepart(dd,@dend -datepart(dd,@sameMnthBlnd)))+1	
		set @oner1a=(select sum(distinct rate)*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and linecharge=23 and peak in(select id from ratepeak where peakname=1 and seasonid=@sid) and @dstart between startdate and enddate)
	
--Find rate for the first part of the same month 	
			select @oner1b=(select top 1 rate * cast(@SameMnthDiff1 as decimal(18,2))/@dd  from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@PdEndMonth and startdate like @clause and  @SameMnthBlnd1 between startdate and enddate)--order by startdate asc)
--select top 1 rate,( rate * 16)/31  from rate where type=13 and itemtype='energy' and linecharge=23 and monthstart=8 and startdate like '%2009%' and '2009-08-1 00:00:00.000' between startdate and enddate--order by startdate asc)


--Find rate for the second part of the same month 
			Select @oner1c=rate * cast(@SameMnthDiff2 as decimal(18,2))/@dd  from rate where  type=@rtid and itemtype='energy' and linecharge=23  and @SameMnthBlnd between startdate and enddate
			set @oner1=(@oner1a+@oner1b+@oner1c)
			set @offer1=@oner1
	end
	else
	if @ratesum1=8
	begin
	
--Find # of days to apply rate to for the first half of the month
		select top 1 @ratestrt=startdate,@rateend=enddate from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@Pdstrtmonth and startdate like @clause order by startdate asc
		set	@SameMnthDiff1=(datepart(dd,@rateend)-datepart(dd,@ratestrt))

--Find # of days to apply rate to for the second half of the same month blend for billperiod
		select top 1 @ratestrt2=startdate from rate where  type=@rtid and itemtype='energy' and linecharge=23 and startdate = @midmnthstrt1
		set	@SameMnthDiff2=datediff(dd,@dstart,@rateend)+1		
		select @oner1a=(select distinct rate * cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and linecharge=23 and startdate like @clause and @dend between startdate and enddate)
	
--Find rate for the first part of the same month 	
			select @oner1b=(select top 1 rate * cast(@SameMnthDiff1 as decimal(18,2))/@dd  from rate where type=@rtid and itemtype='energy' and linecharge=23 and monthstart=@PdEndMonth and startdate like @clause and  @SameMnthBlnd1 between startdate and enddate)

--Find rate for the second part of the same month 
			Select @oner1c=rate * cast(@SameMnthDiff2 as decimal(18,2))/@dd  from rate where  type=@rtid and itemtype='energy' and linecharge=23  and @ratestrt between startdate and enddate
			set @oner1=(@oner1a+@oner1b+@oner1c)
			set @offer1=@oner1
	end
	
	end
	else 
	if @ratesum<=8
	begin
	--this problem should be solved by adjusting the days of @m1diff and @m2diff
--start from here, the code will handle the case in which 3 rates in a blended billing cycle
declare @srateStart datetime, @srateEnd datetime, @erateStart datetime, @erateEnd datetime
declare @tmpDate datetime, @mrateStart datetime, @mrateEnd datetime, @mmdiff int, @sidm int
declare @srate decimal(18,6), @erate decimal(18,6)
				select @srateStart=startdate, @srateEnd=enddate, @srate=rate from rate where itemtype='Energy' and type=@rtid and linecharge=23 and peak in(select id from ratepeak where peakname=1 and seasonid=@sid) and @dstart between startdate and enddate
				select @erateStart=startdate, @erateEnd=enddate, @erate=rate from rate where itemtype='Energy' and type=@rtid and linecharge=23 and peak in(select id from ratepeak where peakname=1 and seasonid=@sid1) and @dend between startdate and enddate
				--this reset midiff and m2diff block code seems silly one, but it necessary
				--we need to change the whole code implementation design
				if @erate<>@srate
					begin
						set @m1diff=datediff(dd,@dstart,@srateEnd)+1
						set @m2diff=datediff(dd,@erateStart, @dend)+1
					end
				
				if datediff(dd, @srateEnd, @erateStart)<>1 and @srateEnd<>@erateEnd
					begin
						set @tmpDate=dateadd(day, 1, @srateEnd)
						select  top 1 @sidm=id from rateseasons  where datepart(month,@tmpDate)>=smonth and regionid=@rgid and @tmpDate>effective_date and effective_date<@dend order by effective_date desc
						select @mrateStart=startdate, @mrateEnd=enddate from rate where itemtype='Energy' and type=@rtid and linecharge=23 and peak in(select id from ratepeak where peakname=1 and seasonid=@sidm) and @tmpDate between startdate and enddate
						--reset m#diff
						set @m1diff=datediff(dd,@dstart,@srateEnd)+1
						set @mmdiff=datediff(dd,@mrateStart,@mrateEnd)+1
						set @m2diff=datediff(dd,@erateStart,@dend)+1
					end
				else
					begin
						set @mmdiff=0
						set @tmpDate=@dstart --in case @tmpDate is not set
						set @sidm=@sid
					end
				--end resetting, 12/21/2009	


		--energy
				set @oner1a=(select sum(distinct rate)*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and linecharge=23 and peak in(select id from ratepeak where peakname=1 and seasonid=@sid) and @dstart between startdate and enddate)
				set @oner1b=(select sum(distinct rate)*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and linecharge=23 and peak in(select id from ratepeak where peakname=1 and seasonid=@sid1) and @dend between startdate and enddate)
				set @offer1a=(select  distinct rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and linecharge=23 and peak in(select id from ratepeak where peakname=2 and seasonid=@sid) and @dstart between startdate and enddate)
				set @offer1b=(select distinct rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Energy' and type=@rtid and linecharge=23 and peak in(select id from ratepeak where peakname=2 and seasonid=@sid1) and @dend between startdate and enddate)
				set @oner1=@oner1a+@oner1b
				set @offer1=@offer1a+@offer1b
					
	end
	--end			

--start to process Emac
declare @OnEmac1m decimal(18,12), @OffEmac1m decimal(18,12)

				declare @emacSrate decimal(18,6), @emacErate decimal(18,6), @emacMrate decimal(18,6)
				declare @m1diffEmac tinyint, @m2diffEmac tinyint, @mmdiffEmac tinyint
				declare @emac1aEnd datetime, @emac1bStart datetime, @emac1mStart datetime, @emac1mEnd datetime, @emacTmpDate datetime
				select distinct @emacSrate=rate, @emac1aEnd=enddate from rate where itemtype='Energy' and type=@rtid and linecharge=64 and peak in (select id from ratepeak where peakname=1) and @dstart between startdate and enddate
				select distinct @emacErate=rate, @emac1bStart=startdate from rate where itemtype='Energy' and type=@rtid and  linecharge=64 and peak in (select id from ratepeak where peakname=1) and @dend between startdate and enddate
				if @emacSrate<>@emacErate
					begin 
						set @m1diffEmac=datediff(dd,@dstart,@emac1aEnd)+1
						set @m2diffEmac=datediff(dd,@emac1bStart, @dend)+1
					end
				
				if (@m1diffEmac + @m2diffEmac) <> @dd
					begin
						set @emacTmpDate=dateadd(day, 1, @emac1aEnd)
						select  top 1 @sidm=id from rateseasons  where datepart(month,@emacTmpDate)>=smonth and regionid=@rgid and @emacTmpDate>effective_date and effective_date<@dend order by effective_date desc
						select @emac1mStart=startdate, @emac1mEnd=enddate from rate where itemtype='Energy' and type=@rtid and linecharge=64 and peak in(select id from ratepeak where peakname=1 and seasonid=@sidm) and @emac1aEnd<startdate and @emac1bStart>enddate
						--reset m#diff
						set @mmdiffEmac=datediff(dd,@emac1mStart,@emac1mEnd)+1
						
					end
				else
					begin
						set @mmdiffEmac=0
						set @emacTmpDate=@dstart --in case @tmpDate is not set
						set @sidm=@sid
					end
--end of reset Emac m#diff
select distinct @OnEmac1=rate,@OnEmac1a=rate * cast(@m1diffEmac as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and linecharge=64 and peak in (select id from ratepeak where peakname=1) and @dstart between startdate and enddate
select distinct @OnEmac1b=rate * cast(@m2diffEmac as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and  linecharge=64 and peak in (select id from ratepeak where peakname=1) and @dend between startdate and enddate
select distinct @OnEmac1m=rate * cast(@mmdiffEmac as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and  linecharge=64 and peak in (select id from ratepeak where peakname=1) and @emacTmpDate between startdate and enddate
select distinct @OffEmac1=rate,@OffEmac1a=rate * cast(@m1diffEmac as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid  and linecharge=64 and peak in (select id from ratepeak where peakname=2) and @dstart between startdate and enddate
select distinct @OffEmac1b=rate * cast(@m2diffEmac as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid  and linecharge=64 and peak in (select id from ratepeak where peakname=2) and @dend between startdate and enddate
select distinct @OffEmac1m=rate * cast(@mmdiffEmac as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid  and linecharge=64 and peak in (select id from ratepeak where peakname=2) and @emacTmpDate between startdate and enddate			
				--select distinct @OnEmac1=rate,@OnEmac1a=rate * cast(@m1diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and linecharge=64 and peak in (select id from ratepeak where peakname=1) and @dstart between startdate and enddate
				--select distinct @OnEmac1b=rate * cast(@m2diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid and  linecharge=64 and peak in (select id from ratepeak where peakname=1) and @dend between startdate and enddate
				--select distinct @OffEmac1=rate,@OffEmac1a=rate * cast(@m1diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid  and linecharge=64 and peak in (select id from ratepeak where peakname=2) and @dstart between startdate and enddate
				--select distinct @OffEmac1b=rate * cast(@m2diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Energy' and type=@rtid  and linecharge=64 and peak in (select id from ratepeak where peakname=2) and @dend between startdate and enddate

				--demand
				set @ondr1a=(select sum(distinct rate)*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand' and type=@rtid and linecharge=24 and peak in(select id from ratepeak where peakname=1 and seasonid=@sid) and @dstart between startdate and enddate)
				set @ondr1b=(select  sum(distinct rate)*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Demand' and type=@rtid and linecharge=24 and peak in(select id from ratepeak where peakname=1 and seasonid=@sid1) and @dend between startdate and enddate)
				set @offdr1a=(select  distinct rate*cast(@m1diff as decimal(18,2))/@dd from rate where itemtype='Demand' and type=@rtid and linecharge=24 and peak in(select id from ratepeak where peakname=2 and seasonid=@sid) and @dstart between startdate and enddate)
				set @offdr1b=(select  distinct rate*cast(@m2diff as decimal(18,2))/@dd from rate where itemtype='Demand' and type=@rtid and linecharge=24 and peak in(select id from ratepeak where peakname=2 and seasonid=@sid1) and @dend between startdate and enddate)
				set @dr1=@ondr1a+@ondr1b+@offdr1a+@offdr1b

				select distinct @OnDmac1=rate,@OnDmac1a=rate * cast(@m1diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Demand' and type=@rtid and linecharge=64 and peak in (select id from ratepeak where peakname=1) and @dstart between startdate and enddate
				--print 'mac #s'
				--print @ondmac1
				--print @ondmac1a
				
				select distinct @OnDmac1b=rate * cast(@m2diff as decimal(18,2))/cast(@dd as decimal(18,2)) from rate where itemtype='Demand' and type=@rtid and linecharge=64 and peak in (select id from ratepeak where peakname=1) and @dend between startdate and enddate
				--print @m2diff
				--print @dd
				--print @dend				
				--print @ondmac1b
				/*MAC*/
				if @dstart<'4/1/2005'
					begin
					set @onEmac1=@onEmac1
					set @offEmac1=@offEmac1
					set @OnDmac1=@OnDmac1*cast(datediff(dd,'4/1/2005',@dend+1) as decimal(18,2))/cast(@dd as decimal(18,2))
					end
				else
					begin
					SET @onEmac1=@OnEmac1a+@OnEmac1b+@OnEmac1m
					SET @offEmac1=@offEmac1a+@offEmac1b+@OffEmac1m
					SET @onDmac1=@OnDmac1a+@OnDmac1b
					end
				end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	
	
			set @op_dollar = round((@op*@oner1),2)  --3/19/2008 N.Ambo added to show onpeak KWH dollar amount
			set @ofp_dollar =  round((@ofp*@offer1),2) --3/19/2008 N.Ambo added to show offpeak KWH dollar amount

			/*CALC ENERGY COSTS*/
			--5/13/2009 N.Ambo added rounding to each part of the calculation so it will always add up with what is shown on screen
			--set @energy=/*onpeak*/round(((@op*@oner1)+/*offpeak*/(@ofp*@offer1)+(case when @dend>='4/1/2005' then @sum_eff_on*@onEmac1 else 0 end)+(case when @dend>='4/1/2005' then @sum_eff_off*@offEmac1 else 0 end)),2)
			set @energy=/*onpeak*/round(@op*@oner1,2)+/*offpeak*/round(@ofp*@offer1,2)+(case when @dend>='4/1/2005' then round((@sum_eff_on*@onEmac1),2) else 0 end)+(case when @dend>='4/1/2005' then round((@sum_eff_off*@offEmac1),2) else 0 end)
			
			/*CALC DEMAND COSTS*/
			set @demand=/*demand rate prorated for 30 days*/round((((@dr1*@dd)/30)*@pdemand)+(case when @dend>='4/1/2005' then (@onDmac1*@dd/30)*@pdemand else 0 end),2)
			
			/*CALC MACUSTMENT*/
			set @M_dollar=round(@mac*@sum,2)
			/*CALC GRT COST*/
			set @grtcost=round((@energy+@demand+@m_dollar )*@grt,2)
			/*Calc Subtotal*/
			set @subamt=round(@energy+@demand+@m_dollar+@grtcost,2)
			/*Calc TD Tax*/
			set @TD_tax_cost=round(@subamt*@td_tax,2)
			/*Calc TD Subtotal*/
			set @subamt=round(@subamt+@td_tax_cost,2)
			set @demand1=@subamt
			/*CALC ESCO COSTS*/
			set @energy_esco=round(@sum*@esco_cost,2) 
			set @energy1=@energy_esco
			set @subamt=@subamt+@energy_esco

			--3/19/2008 N.Ambo amended to include dollar moaunt for offpeak and onpeak KWH in energydetail field
			if @dend>='4/1/2005'
				begin
				--set @edetail=convert(varchar(20),@op)+' KWH ON Peak @ $'+convert(varchar(20),@oner1)+'= $'+convert(varchar(20),@op_dollar)+'|'+convert(varchar(20),@ofp)+' KWH Off Peak @ $'+convert(varchar(20),@offer1)+'= $'+convert(varchar(20),@ofp_dollar)+'|MAC On Peak '+convert(varchar(20),@sum_eff_on)+' KWH * '+convert(varchar(20),@onEmac1)+'= $'+convert(varchar(20),cast(round(@sum_eff_on*@onEmac1,2)as decimal(18,2)))+'|MAC Off Peak '+convert(varchar(20),@sum_eff_off)+' KWH * '+convert(varchar(20),@offEmac1)+'= $'+convert(varchar(20),cast(round(@sum_eff_off*@offEmac1,2)as decimal(18,2)))+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)+'|'+convert(varchar(20),@pdemand) +' KW @ $'+convert(varchar(20),@dr1)+'() ProRated At '+ltrim(str(@dd))+'/30|MAC On Peak '+convert(varchar(20),@pdemand)+' KW @ '+convert(varchar(20),@onDmac1)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(round(((@onDmac1*@dd/30)*@pdemand),2)as decimal(18,2)))+'|TOTAL DEMAND = $'+convert(varchar(20),@demand)+'|Fuel Adj. '+convert(varchar(20),@sum)+'@ '+convert(varchar(20),@mac)+'= $'+convert(varchar(20),@M_dollar)+'|Gross Receipt @ '+convert(varchar(20),@grt)+' = $'+convert(varchar(20),@grtcost)+'|T+D Sales Tax @ '+convert(varchar(20),@td_tax)+' = $'+convert(varchar(20),@TD_tax_cost)+'|T+D Total Cost = $'+convert(varchar(20),@demand1)+'|ESCO Total Cost = '+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@esco_cost)+'= $'+convert(varchar(20),cast((@energy_esco)as decimal(18,2)))+'|Total = $'+convert(varchar(20),@energy1)+' + $'+convert(varchar(20),@demand1)+'= $'+convert(varchar(20),@subamt)
				--5/14/2009 Michelle T. Modify @edetail to accomodate to KW total cost to appear in bills line detail
				set @edetail=convert(varchar(20),@op)+' KWH ON Peak @ $'+convert(varchar(20),@oner1)+'= $'+convert(varchar(20),@op_dollar)+'|'+convert(varchar(20),@ofp)+' KWH Off Peak @ $'+convert(varchar(20),@offer1)+'= $'+convert(varchar(20),@ofp_dollar)+'|MAC On Peak '+convert(varchar(20),@sum_eff_on)+' KWH * '+convert(varchar(20),@onEmac1)+'= $'+convert(varchar(20),cast(round(@sum_eff_on*@onEmac1,2)as decimal(18,2)))+'|MAC Off Peak '+convert(varchar(20),@sum_eff_off)+' KWH * '+convert(varchar(20),@offEmac1)+'= $'+convert(varchar(20),cast(round(@sum_eff_off*@offEmac1,2)as decimal(18,2)))+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)+'|'+convert(varchar(20),@pdemand) +' KW @ $'+convert(varchar(20),@dr1)+'() ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast((@dr1*@dd/30)* @pdemand as decimal(18,2)))+'|MAC On Peak '+convert(varchar(20),@pdemand)+' KW @ '+convert(varchar(20),@onDmac1)+' () ProRated At '+ltrim(str(@dd))+'/30 = $'+convert(varchar(20),cast(round(((@onDmac1*@dd/30)*@pdemand),2)as decimal(18,2)))+'|TOTAL DEMAND = $'+convert(varchar(20),@demand)+'|Fuel Adj. '+convert(varchar(20),@sum)+'@ '+convert(varchar(20),@mac)+'= $'+convert(varchar(20),@M_dollar)+'|Gross Receipt @ '+convert(varchar(20),@grt)+' = $'+convert(varchar(20),@grtcost)+'|T+D Sales Tax @ '+convert(varchar(20),@td_tax)+' = $'+convert(varchar(20),@TD_tax_cost)+'|T+D Total Cost = $'+convert(varchar(20),@demand1)+'|ESCO Total Cost = '+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@esco_cost)+'= $'+convert(varchar(20),cast((@energy_esco)as decimal(18,2)))+'|Total = $'+convert(varchar(20),@energy1)+' + $'+convert(varchar(20),@demand1)+'= $'+convert(varchar(20),@subamt)
				
				end
			else
				begin
				set @edetail=convert(varchar(20),@op)+' KWH ON Peak @ $'+convert(varchar(20),@oner1)+'= $'+convert(varchar(20),@op_dollar)+'|'+convert(varchar(20),@ofp)+' KWH Off Peak @ $'+convert(varchar(20),@offer1)+'= $'+convert(varchar(20),@ofp_dollar)+'|TOTAL CONSUMPTION = $'+convert(varchar(20),@energy)+'|'+convert(varchar(20),@pdemand) +' KW @ $'+convert(varchar(20),@dr1)+'() ProRated At '+ltrim(str(@dd))+'/30 |TOTAL DEMAND = $'+convert(varchar(20),@demand)+'|Fuel Adj. '+convert(varchar(20),@sum)+'@ '+convert(varchar(20),@mac)+'= $'+convert(varchar(20),@M_dollar)+'|Gross Receipt @ '+convert(varchar(20),@grt)+' = $'+convert(varchar(20),@grtcost)+'|T+D Sales Tax @ '+convert(varchar(20),@td_tax)+' = $'+convert(varchar(20),@TD_tax_cost)+'|T+D Total Cost = $'+convert(varchar(20),@demand1)+'|ESCO Total Cost = '+convert(varchar(20),@sum)+' KWH @ $'+convert(varchar(20),@esco_cost)+'= $'+convert(varchar(20),cast((@energy_esco)as decimal(18,2)))+'|Total = $'+convert(varchar(20),@energy1)+' + $'+convert(varchar(20),@demand1)+'= $'+convert(varchar(20),@subamt)
				end


			/*GET EXEMPT INFO*/
			select @nocredit=lmepexempt,@taxexempt=taxexempt from tblleases where billingid=@bid
			/*FIND ANY CREDITS*/
			/*Calc Credits (-) - Added 10/14/2004 - CoriS*/
			if @nocredit=1
				begin
				set @bcredit=0
				if exists(select amt from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1 and amt<0)
					begin
					select @credit=sum(abs(amt)) from Misc_Inv_Credit where leaseutilityid=@lid and billyear=@by and billperiod=@bp and credit=1 and amt<0
					end
				else
					begin
					set @credit=0
					end
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
				end	

			set @subamt=@subamt-@credit
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
			/*CALC SERVICE/ADD ON FEE*/
			--set @aonfeecost=round((@mc*@aonfee),2)
			--below inserted by JoseC
			select @aonfeecost=isnull(round(sum(cost),2),0)  from (select distinct b.addonfee * count(meterid) as cost from building_addonfee b,meterprices p where b.id=p.addonfee and meterid in(select meterid from meters where leaseutilityid=@lid and nobill=0  and online=1) group by b.addonfee)a

			/*CALC ADMIN FEE*/
			set @afeecost=round(@afee*@subamt,2)
			/*CALC FINAL PRE-TAX SUB AMT*/
			set @subamt=round(@subamt+@afeecost+@aonfeecost,2)

			if @taxexempt=1
				begin
				set @stax_cost=0
				end
			/*CALC TAX $ COST*/
			set @stax=round(@subamt*@stax_cost,2)
			/*CALC TOTAL AMOUNT*/
			set @totalamt=@subamt+@stax
			select @bgs=strt,@btname=btbldgname,@btstrt=btstrt,@btcity=btcity,@btstate=btstate from buildings where bldgnum=@bldg
			select @sqft=sqft,@bname=billingname,@afee=adminfee,@rt=tl.ratetenant ,@tname=tname,@tstrt=tstrt,@tcity=tcity,@tzip=tzip,@mc=count(meterid),@aonfee=addonfee from tblleases l,tblleasesutilityprices tl,meters m where l.billingid=tl.billingid and tl.leaseutilityid=m.leaseutilityid and tl.leaseutilityid=@lid and m.online=1 group by sqft,billingname,adminfee,tl.ratetenant ,tname,tstrt,tcity,tzip,addonfee

		
			insert into tblbillbyperiod (leaseutilityid,ypid,subtotal,salestax,tax,totalamt,tenantname,adminfee,ratetenant,billyear,billperiod,datestart,dateend,bldgnum,tenantnum,billingname,fueladj,sqft,utility,tstrt,tcity,tzip,energy,energydetail,demand,demanddetail,metercount,credit,addonfee,btbldgname,btstrt,btcity,btstate,btzip,strt,servicefee,adminfeedollar,taxexempt,fuel,grt,grtdollar,tstate,[PARTIAL],shadow,invoice_note,adjustment) values (@lid,@ypid,@subamt,@stax_cost,@stax,@totalamt,@tname,@afee,@rt,@by,@bp,@dstart,@dend,@bldg,@tnum,@bname,@mac,@sqft,@utility ,@tstrt,@tcity,@tzip,@energy1,@edetail,@demand1,@ddetail,@mc,@credit,@aonfee ,@btname ,@btstrt ,@btcity ,@btstate ,@btzip ,@bgs,@aonfeecost,@afeecost,@taxexempt,@fcost,@grt,@grtcost,@tstate,@p,@shadow,@inv_note,@adjs)
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
				    insert into tblmetersbyperiod (leaseutilityid,ypid,meterid,bldgnum,meternum,multiplier,billyear,billperiod,online,datestart,dateoffline,datelastread,coincident,onpeak,offpeak,prev,[current],used,rawonpeak,rawoffpeak,rawprevious,rawcurrent,rawused,demand_p,manualmultiplier,bill_id,demand_c,mextusg)select  @lid,@ypid,@id,@bldg,meternum,multiplier,@by,@bp,online,datestart,dateoffline,datelastread,@c,@op,@ofp,@prev,@curr,@used,@rawon,@rawoff,@rprev,@rcurr,@rused,@d,manualmultiplier,@bid_id,@pdemand,@ext from meters where meterid=@id
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










