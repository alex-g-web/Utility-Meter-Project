<%option explicit%>
<!--METADATA TYPE="typelib" FILE="\Program Files\Common Files\System\ado\msado15.dll"-->
<!--#INCLUDE VIRTUAL="/genergy2/nonsecure.inc"-->
<%
'if not(allowGroups("Genergy Users")) then
'%><%
'end if
response.expires=-1
%>
<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

	<head>
	<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<style id="process bills_12316_Styles">

<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
.xl1512316
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6512316
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6612316
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6712316
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6812316
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6912316
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7012316
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7112316
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7212316
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7312316
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:14.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7412316
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:14.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7512316
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:14.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
-->
</style>
	
	</head>

	<body>
<%
	dim bldgnum, byear, bperiod, utilid, actions, action, pid, bldgnums, rs,  url, meternum, data, html, prop, unit, building, pdate, serial, comm, datestart, dateend
	pid = request("pid")
	bldgnum = request("bldgnum")
	byear = request("byear")
	bperiod = request("bperiod")
	utilid = request("utilityid")
	actions = split(request("action"),"+")
	action = replace(request("action"),"+"," ")
	bldgnums = request("bldgnums")
	meternum=request("meternum")
	serial=request("serial")
	data = "readings"
	function toNumb(val)
		if val="" or isnull(val) then
			val = 0
		end if
		if IsNumeric(CStr(val)) then
			toNumb = cdbl(val)
		end if
	end function	
	dim cnn1, rst1, rst2, strsql, insertSql
	set cnn1 = server.createobject("ADODB.connection")
	set rst1 = CreateObject("ADODB.RecordSet") 
	set rst2 = CreateObject("ADODB.RecordSet") 
	cnn1.Open getLocalConnect(Replace(bldgnum,"+"," "))
	
	Dim cmd, prm
	 
		'set cmd = server.createobject("ADODB.Command")
		'With cmd
		'	.ActiveConnection = cnn1
		'	.CommandType = adCmdStoredProc
		'	.CommandTimeout = 300
		'		
		'			.CommandText = "[h2O_readings_for_Unit]"
		'			strsql = " exec [h2O_readings_for_Unit] "
		'			'.Parameters.Append .CreateParameter("@action", adVarChar, adParamInput, 10)
		'			'	.parameters("@action") = action
		'		
		'		.Parameters.Append .CreateParameter("meternum", adVarChar, adParamInput, 15)
		'		.Parameters.Append .CreateParameter("byear", adInteger, adParamInput)
		'		.Parameters.Append .CreateParameter("bperiod", adInteger, adParamInput)
		'		.Parameters.Append .CreateParameter("data", adVarChar, adParamInput, 20)
		'		.Parameters.Append .CreateParameter("html", adVarChar, adParamReturnValue)
		'			.parameters("meternum") = Replace(meternum,"+"," ")
		'			.parameters("byear") = byear
		'			.parameters("bperiod") = bperiod
		'			.parameters("data") = data
		'			strsql = strsql & "'" &meternum& "', " &byear& ", " &bperiod& ", '" &data & "'"
		'	.execute
		'	response.write strsql
		'	'response.end
		'end with
		'html = cmd.Parameters("html").value
		'set cmd = nothing
		'cmd.close
		strsql = "SELECT datestart,dateend			FROM dbBilling.dbo.BillYrPeriod		WHERE bldgnum = '"&bldgnum&"' and billyear="&byear&" and billperiod="&bperiod
		rst1.open strsql, cnn1
		datestart = rst1("datestart")
		dateend = rst1("dateend")
		rst1.close
		strsql = "select upper(building) as building, upper(unit) as unit, property from dbo.fnh2oparseunitnum('"&meternum&"')"
		rst1.open strsql, cnn1
		prop=rst1("property")
		unit=rst1("unit")
		building=rst1("building")
		rst1.close
		strsql="select commodity from lefrakdemand.dbo.h2obuildings where bldgnum='"&bldgnum&"' and utilityid="&utilid
		response.write strsql &" </br>"
		rst1.open strsql,cnn1
		if not rst1.eof then
			comm=rst1("commodity")
		end if
		rst1.close
		pdate =  byear &"/"& bperiod &"/2"
		'strsql = "select reading_date , dbo.fngallonstoccf(current_reading) as ccf, current_reading as gals from H2OImports where property like '"&prop&"' and building='"&building&"' and unit='"&unit&"' and reading_date between dateadd(day,-5,'"&pdate&"') and eomonth('"&pdate&"') order by reading_date asc"
		strsql = "select reading_date , dbo.fngallonstoccf(current_reading) as ccf, current_reading as gals from lefrakdemand.dbo.H2OImports where ((unit = '"&unit&"' and building = '"&building&"' and property like '"&prop&"') or (aptid = '"&meternum&"') or (aptid = '"&serial&"')) and utility_commodity like '%water%' and reading_date between '"&datestart&"' and dateadd(day,1,'"&dateend&"') and (utility_commodity = '"&comm&"') order by reading_date asc"
		response.write strsql & "</br>"
		rst1.open strsql,cnn1
		if not rst1.eof then
		%>
			<table border=0 cellpadding=0 cellspacing=0 width=1045 style='border-collapse:
 collapse;table-layout:fixed;width:400pt'>
				<tr>
					<td colspan=3 class=xl6912316 width=64 style='width:48pt'>H2O readings for Meter # <%=meternum%> </td>
				</tr>
				<tr> 
					<td width=100 class=xl6912316 width=64 style='width:48pt'> Reading Date </td>
					<td width=100 class=xl6912316 width=64 style='width:48pt'> CF Usage</td>
					<td width=100 class=xl6912316 width=64 style='width:48pt'> Reported Gallons </td>
				</tr>
			<% do until rst1.eof %>
				<tr>
					<td class=xl1512316 width=64 style='width:48pt'><%= rst1("reading_date") %> </td>
					<td class=xl1512316 width=64 style='width:48pt'> <%= rst1("ccf") %> </td>
					<td class=xl1512316 width=64 style='width:48pt'> <%= rst1("gals")%> </td>
				</tr>
				
			<%	rst1.movenext
			loop %>
			</table>
		<%end if
		
		rst1.close
		
%>


<% 
'response.write "generating.."
'Response.Write ("<script>self.close();</script>")
Response.End
%>
	</body>
</html>

