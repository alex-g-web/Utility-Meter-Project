<%option explicit%>
<!--METADATA TYPE="typelib" FILE="\Program Files\Common Files\System\ado\msado15.dll"-->
<!--#INCLUDE FILE="XmlSessions.asp"-->
<%
server.scripttimeout = 7200
dim pdfsession
pdfsession = request("pdf")
if request.servervariables("HTTP_REFERER")="Webster://Internal/315" and isempty(session("xmlUserObj")) or ( pdfsession ="yes" ) then 'this is for pdf sessions
  loadNewXML("activepdf")
  'loadIps(0)
end if


dim pid, building, billingid, leaseutilityid, billingaddress, utilitybillname, billyear, pdf, qs, sqft, utilityid, tenant, hideposted
billyear = trim(Request("syear"))
pid = trim(Request("pid"))
building = trim(Request("building"))
billingid = trim(Request("billingid"))
leaseutilityid = trim(Request("leaseutilityid"))
billyear = trim(Request("syear"))
utilityid = trim(Request("utilityid"))
tenant = trim(request("tenant"))
if trim(request("pdf"))<>"" then pdf = true else pdf = false
qs = request.servervariables("SCRIPT_NAME")&"?"&request.servervariables("QUERY_STRING")
dim isadjusted
dim originaltotal
Dim cnn1, rst1, rst2, rst3,sql, umeasure, dmeasure
Set cnn1 = Server.CreateObject("ADODB.connection")
Set rst1 = Server.CreateObject("ADODB.recordset")
Set rst2 = Server.CreateObject("ADODB.recordset")
Set rst3= Server.CreateObject("ADODB.recordset")

dim all : all = "ALL"
dim plu : plu = "ies"
if leaseutilityid <> "" then
	all = ""
	plu = "y"
end if
if tenant="1" then
	hideposted = " and postdate is not null "
else
	hideposted = ""
end if
   if building<>"" then cnn1.Open "Provider=SQLOLEDB;Data Source=SERV-DB\max1;User Id=genergy1;Password=g1appg1;Initial Catalog="	
%>
<html>
<head>
<title>Tenant Bill Yearly Report</title>
</head>
<link rel="Stylesheet" href="/genergy2/styles.css" type="text/css">
<body bgcolor="white">
<%if not(pdf) then%>
<table border=0 cellpadding="3" cellspacing="0"  width="50%"><tr><td>&nbsp;</td></tr>
<tr bgcolor="white"><td colspan="3" align="center"><font size="5"><a href="#" onclick="window.open('/genergy2/billing/loading.asp?url=<%=server.urlencode("http://pdfmaker.genergyonline.com/pdfmaker/pdfReport.asp?devIP="&request.servervariables("SERVER_NAME")&"&qs="&server.URLEncode(qs)&"&pdf=yes")%>','','width=600,height=400,scrollbars=no,resizable=yes');">Download <%= all %> BillSummar<%= plu %></a></font></td></tr><tr><td>&nbsp;</td></tr>
</table>
<%end if%>
<%
if billingid<>"" then
	printPage utilityid, building, billyear, leaseutilityid
elseif building<>"" and utilityid<>"" then
	sql = "SELECT * FROM tblleasesutilityprices lup INNER JOIN tblleases l on l.billingid=lup.billingid WHERE bldgnum='"&building&"' and utility="&utilityid&" and billsummaryexempt=0 and LeaseExpired=0"
	rst2.open sql, cnn1
	do until rst2.eof
		printPage rst2("utility"), building, billyear, rst2("leaseutilityid")
		%><WxPrinter PageBreak><%
		rst2.movenext
	loop
	rst2.close
end if
%>


</body>
</html>

<%sub printPage(u, building, billyear, leaseutilityid)%>

<%if not(pdf) then%>
<%
end if
if pid<>"" and building<>"" and leaseutilityid<>"" then
  sql = "SELECT * FROM tblleases l INNER JOIN tblleasesutilityprices lup ON lup.billingid=l.billingid INNER JOIN buildings b ON b.bldgnum=l.bldgnum WHERE portfolioid="&pid&" and b.bldgnum='"&building&"' and leaseutilityid="&leaseutilityid
  rst1.open sql, cnn1
  if not rst1.eof then billingaddress = "<font size=""+1"">"&rst1("billingname")&"<br>"&rst1("tstrt")&"<br>"&rst1("tcity")&", "&rst1("tstate")&"&nbsp;"&rst1("tzip")&"<br>("&rst1("tenantnum")&")</font>"
  rst1.close
end if

sql = "SELECT u.* FROM tblutility u WHERE u.utilityid="&utilityid
rst1.open sql, getConnect(pid,building,"billing")
if not rst1.eof then
	utilitybillname = rst1("utility")
	umeasure = rst1("umeasure")
	dmeasure = rst1("dmeasure")
end if
rst1.close

'start of report
if leaseutilityid<>"" then%>
<table align="center" cellpadding="0" cellspacing="0" width="650">
<tr valign="bottom"><td><img src="/images/invoice_logo_2.jpg" border="0"></td><td align="right"><%=billingaddress%></td></tr>
<tr><td>Tenant Submetered <%=utilitybillname%> Bill Report: <%=billyear%></td></tr>

</table>
&nbsp;<br>
<table>
<tr>
<td width="80"> &nbsp; </td>
<td>Available Bill History:</td> 
	<%
		sql = "SELECT distinct year(bbp.datestart) as year FROM billyrperiod byp LEFT JOIN tblbillbyperiod bbp ON bbp.ypid=byp.ypid LEFT JOIN tblmetersbyperiod mbp ON mbp.bill_id=bbp.id WHERE bbp.reject=0 and byp.bldgnum='"&building&"' and postdate is not null  and bbp.leaseutilityid="&leaseutilityid&" GROUP BY bbp.DateStart"
		rst1.open sql, cnn1
		do until rst1.eof
	%><td>
		<form name="summaryyear" method="get" action="tenantBillSummary.asp">
			<input type="submit" value='<%=rst1("year")%>' class="standard" />
			<input type="hidden" value="<%=pid%>" name="pid"/>        
			<input type="hidden" value="<%=building%>" name="building"/>        
			<input type="hidden" value="<%=billingid%>" name="billingid"/>        
			<input type="hidden" value="<%=leaseutilityid%>" name="leaseutilityid"/>        
			<input type="hidden" value="<%=rst1("year")%>" name="syear"/>        
			<input type="hidden" value="<%=utilityid%>" name="utilityid"/>        
		</form>
		</td>
	<%  
		
		rst1.movenext	
		loop
		rst1.close
	%>
</tr>
</table>
&nbsp;</br>
<table bgcolor="#cccccc" cellpadding="3" cellspacing="1" width="650" align="center">
<tr bgcolor="#eeeeee">
    <td><b>From</b></td>
    <td><b>To</b></td>
    <td><b># Days</b></td>
    <td align="right"><b><%=umeasure%></b></td>
    <%if not(utilityid="3" or utilityid="4" or utilityid="10") then%><td align="right"><b><%=dmeasure%></b></td><%end if%>
    <td align="right"><b>Cost/SQFT</b></td>
    <td align="right" colspan=2><b>Sub-Total</b></td>
    <td align="right"><b>Sales Tax</b></td>
    <td align="right"><b>Total</b></td>
</tr>

<!--added if statement for PA pid=108 so that tenant bills dates and days matches bill summary.  7/31/2008 Michelle T.-->
<%if building<>"" then
    if pid = "108" then 
        'sql = "SELECT bbp.sqft, bbp.DateStart-1 as datebegin, bbp.DateEnd, datediff(day,bbp.DateStart,bbp.DateEnd)+1 as days, sum(Used+usedoff+usedint) as usage, case when mbp.coincident=0 then sum(demand_p) else max(demand_c) end as demand, isnull(Subtotal,0) as subtotal, isnull(tax,0) as tax, isnull(TotalAmt,0) as TotalAmt FROM billyrperiod byp LEFT JOIN tblbillbyperiod bbp ON bbp.ypid=byp.ypid LEFT JOIN tblmetersbyperiod mbp ON mbp.bill_id=bbp.id WHERE bbp.reject=0 and byp.bldgnum='"&building&"' and bbp.billyear='"&billyear&"' and bbp.leaseutilityid="&leaseutilityid&" GROUP BY bbp.DateStart, bbp.DateEnd, bbp.DateStart, bbp.DateEnd, Subtotal, tax, TotalAmt, bbp.billperiod, mbp.coincident, bbp.sqft ORDER BY bbp.billperiod"
        sql = "SELECT bbp.sqft, bbp.DateStart-1 as datebegin, bbp.DateEnd, datediff(day,bbp.DateStart,bbp.DateEnd)+1 as days, sum(Used+usedoff+usedint) as usage, case when mbp.coincident=0 then sum(demand_p) else max(demand_c) end as demand, isnull(Subtotal,0) as subtotal, isnull(tax,0) as tax, isnull(TotalAmt,0) as TotalAmt, adjusted, originaltotal FROM billyrperiod byp LEFT JOIN tblbillbyperiod bbp ON bbp.ypid=byp.ypid LEFT JOIN tblmetersbyperiod mbp ON mbp.bill_id=bbp.id WHERE bbp.reject=0 and bbp.bldgnum='"&building&"' and bbp.billyear='"&billyear&"' and bbp.leaseutilityid="&leaseutilityid&" GROUP BY bbp.DateStart, bbp.DateEnd, bbp.DateStart, bbp.DateEnd, Subtotal, tax, TotalAmt, bbp.billperiod, mbp.coincident, bbp.sqft, adjusted, originaltotal ORDER BY bbp.billperiod"
	else
       sql = "SELECT bbp.sqft, bbp.DateStart as datebegin, bbp.DateEnd, datediff(day,bbp.DateStart,bbp.DateEnd) as days, ISNULL(sum(Used+usedoff+usedint),0) as usage, case when mbp.coincident=0 then ISNULL(sum(demand_p),0) else ISNULL(max(demand_c),0) end as demand, isnull(Subtotal,0) as subtotal, isnull(tax,0) as tax, isnull(TotalAmt,0) as TotalAmt, adjusted, originaltotal FROM billyrperiod byp LEFT JOIN tblbillbyperiod bbp ON bbp.ypid=byp.ypid LEFT JOIN tblmetersbyperiod mbp ON mbp.bill_id=bbp.id WHERE bbp.reject=0 and byp.bldgnum='"&building&"' and bbp.billyear='"&billyear&"' and bbp.leaseutilityid="&leaseutilityid&hideposted&" GROUP BY bbp.DateStart, bbp.DateEnd, bbp.DateStart, bbp.DateEnd, Subtotal, tax, TotalAmt, bbp.billperiod, mbp.coincident, bbp.sqft, adjusted, originaltotal ORDER BY bbp.billperiod" 
    end if
dim Totusage, Totdemand, Totsubtotal, Tottax, TotTotalAmt, count, AvgSqft
rst1.open sql, cnn1
do until rst1.eof
 sqft = trim(rst1("sqft"))
  if isnumeric(sqft) then
    AvgSqft = (AvgSqft*count + sqft)/(count+1)
    count = count+1
 end if
 isadjusted = rst1("adjusted")
 originaltotal = rst1("originaltotal")
 'response.write sql
 'response.end
 %>
 
      <tr bgcolor="white">
      <td><%=rst1("Datebegin")%></td>
      <td><%=rst1("DateEnd")%></td>
      <td><%=rst1("days")%></td>
      <td align="right"><%=formatnumber(rst1("usage"), 0)%></td>
      <%if not(utilityid="3" or utilityid="4" or utilityid="10") then%><td align="right"><%=formatnumber(rst1("demand"),1)%></td><%end if%>
      <td align="right"><%if sqft<>"" and sqft<>"0" then response.write formatcurrency(cdbl(rst1("TotalAmt"))/cdbl(sqft)) else response.write "-"%></td>
      <td align="left"><% if isadjusted=true then %> <font size="-12">Bill adjusted from <%=formatcurrency(originaltotal)%></font><% else %> &nbsp;<% end if %></td>
	  <td align="right"><%=formatcurrency(rst1("subtotal"))%></td>
      <td align="right"><%=formatcurrency(rst1("tax"))%></td>
      <td align="right"><%=formatcurrency(rst1("TotalAmt"))%></td>
  </tr>
  
<%
Totusage = Totusage + cdbl(rst1("usage"))
  Totdemand = Totdemand + cdbl(rst1("demand"))
  Totsubtotal = Totsubtotal + cdbl(rst1("subtotal"))
  Tottax = Tottax + cdbl(rst1("tax"))
  TotTotalAmt = TotTotalAmt + cdbl(rst1("TotalAmt"))
  rst1.movenext
loop
rst1.close

%>


<tr bgcolor="white">
    <td colspan="<%if not(utilityid="3" or utilityid="4" or utilityid="10") then%>6<%else%>5<%end if%>" align="right"><b>Totals</b></td>
<!--     <td align="right"><b><%=formatnumber(Totusage,1)%></b></td>
    <td align="right"><b><%=formatnumber(Totdemand,1)%></b></td>
    <td align="right"><b><%'if AvgSqft<>0 then response.write formatcurrency(cdbl(TotTotalAmt)/cdbl(AvgSqft)) else response.write "-"%></b></td>
 -->
    <td align="right" colspan=2><b><%=formatcurrency(Totsubtotal)%></b></td>
    <td align="right"><b><%=formatcurrency(Tottax)%></b></td>
    <td align="right"><b><%=formatcurrency(TotTotalAmt)%></b></td>
</tr>
<%end if%>

</table>
<%end if%>
</br>
</br>
</br>
<%end sub%>


<%if not(pdf) then%>
<table border=0 cellpadding="3" cellspacing="0"  width="50%"><tr><td>&nbsp;</td></tr>
<tr bgcolor="white"><td colspan="3" align="center"><font size="5"><a href="#" onclick="window.open('/genergy2/billing/loading.asp?url=<%=server.urlencode("http://pdfmaker.genergyonline.com/pdfmaker/pdfReport.asp?devIP="&request.servervariables("SERVER_NAME")&"&qs="&server.URLEncode(qs)&"&pdf=yes")%>','','width=600,height=400,scrollbars=no,resizable=yes');">Download <%= all %> BillSummar<%= plu %></a></font></td></tr><tr><td>&nbsp;</td></tr>
</table>
<%end if%>