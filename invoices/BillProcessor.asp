<%option explicit%>
<!--METADATA TYPE="typelib" FILE="\Program Files\Common Files\System\ado\msado15.dll"-->
<!--#INCLUDE VIRTUAL="/genergy2/nonsecure.inc"-->
<%
'if not(allowGroups("Genergy Users")) then
'%><%
'end if

	dim cnn1, rst1, rst2, strsql, insertSql
	set cnn1 = server.createobject("ADODB.connection")
	set rst1 = server.createobject("ADODB.recordset")
	cnn1.open getConnect(0,0,"dbbilling")
%>
<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 15">
<link rel=File-List href="BillProcessor_files/filelist.xml">
<style id="BillProcessor_6749_Styles">
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
.xl156749
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
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl636749
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
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl646749
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:16.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl656749
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:20.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
-->
</style>
</head>

<body>
<div id="BillProcessor_6749" align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=613 style='border-collapse:
 collapse;table-layout:fixed;width:460pt'>
 <col width=100 style='mso-width-source:userset;mso-width-alt:3657;width:75pt'>
 <col width=160 style='mso-width-source:userset;mso-width-alt:5851;width:120pt'>
 <col width=57 style='mso-width-source:userset;mso-width-alt:2084;width:43pt'>
 <col width=115 style='mso-width-source:userset;mso-width-alt:4205;width:86pt'>
 <col width=181 style='mso-width-source:userset;mso-width-alt:6619;width:136pt'>
 <tr height=35 style='height:26.25pt'>
  <td colspan=5 height=35 class=xl656749 width=613 style='height:26.25pt;
  width:460pt'><a name="RANGE!A1:E50">LeFrak Properties</a></td>
 </tr>
 <tr height=28 style='height:21.0pt'>
  <td colspan=4 height=28 class=xl646749 style='height:21.0pt'>Residential Cold
  Water Bill Processor</td>
  <td class=xl646749>2018.06</td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl646749 style='height:15.0pt'></td>
  <td class=xl646749></td>
  <td class=xl646749></td>
  <td class=xl646749></td>
  <td class=xl646749></td>
 </tr>
 <tr height=28 style='height:21.0pt'>
  <td height=28 class=xl156749 style='height:21.0pt'></td>
  <td class=xl646749>Create Bills</td>
  <td class=xl646749></td>
  <td class=xl646749>Post Bills</td>
  <td class=xl646749></td>
 </tr>
 <tr height=28 style='height:21.0pt'>
  <td height=28 class=xl156749 style='height:21.0pt'></td>
  <td class=xl646749>Delete Bills</td>
  <td class=xl646749></td>
  <td class=xl646749>UnPost Bills</td>
  <td class=xl646749></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl156749 style='height:15.0pt'></td>
  <td class=xl156749></td>
  <td class=xl156749></td>
  <td class=xl156749></td>
  <td class=xl156749></td>
 </tr>
 <%
 
	dim sql 
	sql = "select db.bldgnum, db.bldgname, count(meterid) as mc from DailyExportBuildings db left join meters m on m.bldgnum = db.bldgnum where m.online=1 group by db.bldgnum,db.bldgname order by bldgname asc"
	rst1.open sql, cnn1
	do until rst1.eof
 
 %>
 
		 <tr height=20 style='height:15.0pt'>
		  <td height=20 class=xl156749 style='height:15.0pt'><%= rst1("bldgnum") %></td>
		  <td class=xl156749><%= rst1("bldgname") %></td>
		  <td class=xl156749 align=right><%= rst1("mc") %></td>
		  <td class=xl636749>Generate PDF</td>
		  <td class=xl156749>D:\DOWNLOADS\PDF.PDF</td>
		 </tr>

<%
	rst1.movenext
	loop
	rst1.close
%>
 
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=100 style='width:75pt'></td>
  <td width=160 style='width:120pt'></td>
  <td width=57 style='width:43pt'></td>
  <td width=115 style='width:86pt'></td>
  <td width=181 style='width:136pt'></td>
 </tr>
 <![endif]>
</table>

</div>


<!----------------------------->
<!--END OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD-->
<!----------------------------->
</body>

</html>
