<%option explicit%>
<!--METADATA TYPE="typelib" FILE="\Program Files\Common Files\System\ado\msado15.dll"-->
<!--#INCLUDE VIRTUAL="/genergy2/nonsecure.inc"-->
<%
'if not(allowGroups("Genergy Users")) then
'%><%
'end if
	dim page 
	page = "processbills.asp"
	dim building, action, zipname, zipfull, ziplink, utilfilter, utilbills
	building=trim(request("building"))
	action = trim(request("action"))
	dim cnn1, rst1, rst2, rst3, strsql, insertSql
	set cnn1 = server.createobject("ADODB.connection")
	set rst1 = server.createobject("ADODB.recordset")
	set rst2 = server.createobject("ADODB.recordset")
	set rst3 = server.createobject("ADODB.recordset")
	cnn1.open getlocalconnect(building)
	
	dim pid, byear, bperiod, utilid, pname, p
	pid = request("pid")
	byear = request("byear")
	bperiod = request("bperiod")
	utilfilter = request("utilfilter")
	dim thisdate 
	thisdate = dateadd ("m",-1,now)

	if byear = "" then byear = year(thisdate) end if
	if bperiod = "" then bperiod = month(thisdate) end if
	function toNumb(val)
		if val="" or isnull(val) then
			val = 0
		end if
		if IsNumeric(CStr(val)) then
			toNumb = cdbl(val)
		end if
	end function	
	Function ConvertTime(intTotalSecs)
		Dim intHours,intMinutes,intSeconds,Time
		intHours = intTotalSecs \ 3600
		intMinutes = (intTotalSecs Mod 3600) \ 60
		intSeconds = intTotalSecs Mod 60
		ConvertTime = LPad(intHours) & " h : " & LPad(intMinutes) & " m : " & LPad(intSeconds) & " s"
	End Function
	Function LPad(v) 
		LPad = Right("0" & v, 2) 
	End Function
	function hrsago(ptime)
		dim d, h, m
		h = datediff("h",ptime, now())
		if h > 24 then 
			d = datediff("d", ptime, now())
			hrsago = d & "d old"
		elseif h < 1 then
			m = datediff("n", ptime, now())
			hrsago = m & "m old"
		else
			hrsago = h & "h old"
		end if
	end function	
	function fw(txt)
		dim ar, w, a
		w=""
		ar = split(txt, " ")
		for each a in ar
			w = w & replace(left(a,1),"(","")
		next
		fw = w
	end function
	function utilicon(uid)
		select case uid
		case"1" 'steam
			utilicon = "steam.png"
		case"2"	'elec
			utilicon = "electric.colored.png"
		case"3"	'cold water
			utilicon = "water.colored.png"
		case"4"	'gas
			utilicon = "gas.png"
		case"10" 'hot water
			utilicon = "water.orange.png"
		end select
		utilicon = "images\" & utilicon 
	end function
	Function CheckRemoteURL(fileURL)
		ON ERROR RESUME NEXT
		Dim xmlhttp

		Set xmlhttp = Server.CreateObject("MSXML2.ServerXMLHTTP")

		xmlhttp.open "GET", fileURL, False
		xmlhttp.send
		If(Err.Number<>0) then
			Response.Write "Could not connect to remote server"
		else
			Select Case Cint(xmlhttp.status)
				Case 200, 202, 302
					Set xmlhttp = Nothing
					CheckRemoteURL = True
				Case Else
					Set xmlhttp = Nothing
					CheckRemoteURL = False
			End Select
		end if
		ON ERROR GOTO 0
	End Function	
%>


<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 15">
<meta http-equiv="refresh" content="120;url=<%=page%>?pid=<%= pid %>&bperiod=<%= bperiod %>&pyear=<%= byear %>&utilfilter=<%= utilfilter %>">

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

<script>import {Spinner} from "spin.js"</script>

<script>
function pdf(bldgnum, byear, bperiod, utilid, action){
	var opts = {
	  lines: 20, // The number of lines to draw
	  length: 0, // The length of each line
	  width: 6, // The line thickness
	  radius: 9, // The radius of the inner circle
	  scale: 0.5, // Scales overall size of the spinner
	  corners: 0, // Corner roundness (0..1)
	  color: '#ff0080', // CSS color or array of colors
	  fadeColor: 'transparent', // CSS color or array of colors
	  speed: 1, // Rounds per second
	  rotate: 0, // The rotation offset
	  animation: 'spinner-line-fade-more', // The CSS animation name for the lines
	  direction: 1, // 1: clockwise, -1: counterclockwise
	  zIndex: 2e9, // The z-index (defaults to 2000000000)
	  className: 'spinner', // The CSS class to assign to the spinner
	  top: '50%', // Top position relative to parent
	  left: '50%', // Left position relative to parent
	  shadow: '0 0 1px transparent', // Box-shadow for the lines
	  position: 'absolute' // Element positioning
	};
    if (bldgnum.length == 0) {
        document.getElementById(bldgnum+".link").innerHTML = "";
        return;
    } else {
       // var xmlhttp = new XMLHttpRequest();
       // xmlhttp.onreadystatechange = function() {
       //     if (this.readyState == 4 && this.status == 200) {
       //        var target = document.getElementById(bldgnum+".link");
		//	   var spinner = new Spinner(opts).spin(target);
       //     }
       // };
        xmlhttp.open("GET", "processBillsConsole.asp?portfolio="+pid+"bldgnum="+bldgnum+"&byear="+byear+"&bperiod="+bperiod+"&utilfilter="+utilid+"&action="+action,true);
        xmlhttp.send();
    }
}

function allpdfs(pid, bldgnum, byear, bperiod, utilid, action){
	var opts = {
	  lines: 20, // The number of lines to draw
	  length: 0, // The length of each line
	  width: 6, // The line thickness
	  radius: 9, // The radius of the inner circle
	  scale: 0.5, // Scales overall size of the spinner
	  corners: 0, // Corner roundness (0..1)
	  color: '#ff0080', // CSS color or array of colors
	  fadeColor: 'transparent', // CSS color or array of colors
	  speed: 1, // Rounds per second
	  rotate: 0, // The rotation offset
	  animation: 'spinner-line-fade-more', // The CSS animation name for the lines
	  direction: 1, // 1: clockwise, -1: counterclockwise
	  zIndex: 2e9, // The z-index (defaults to 2000000000)
	  className: 'spinner', // The CSS class to assign to the spinner
	  top: '50%', // Top position relative to parent
	  left: '50%', // Left position relative to parent
	  shadow: '0 0 1px transparent', // Box-shadow for the lines
	  position: 'absolute' // Element positioning
	};
    if (bldgnum.length == 0) {
        document.getElementById(bldgnum+".link").innerHTML = "";
        return;
    } else {
       // var xmlhttp = new XMLHttpRequest();
       // xmlhttp.onreadystatechange = function() {
       //     if (this.readyState == 4 && this.status == 200) {
       //        var target = document.getElementById(bldgnum+".link");
		//	   var spinner = new Spinner(opts).spin(target);
       //     }
       // };
        xmlhttp.open("GET", "processBillsConsole.asp?portfolio="+pid+"bldgnum="+bldgnum+"&byear="+byear+"&bperiod="+bperiod+"&utilfilter="+utilid+"&action="+action,true);
        xmlhttp.send();
    }
}

function allbills(pid, bldgnum, byear, bperiod, utilid, action){
	var opts = {
	  lines: 20, // The number of lines to draw
	  length: 0, // The length of each line
	  width: 6, // The line thickness
	  radius: 9, // The radius of the inner circle
	  scale: 0.5, // Scales overall size of the spinner
	  corners: 0, // Corner roundness (0..1)
	  color: '#ff0080', // CSS color or array of colors
	  fadeColor: 'transparent', // CSS color or array of colors
	  speed: 1, // Rounds per second
	  rotate: 0, // The rotation offset
	  animation: 'spinner-line-fade-more', // The CSS animation name for the lines
	  direction: 1, // 1: clockwise, -1: counterclockwise
	  zIndex: 2e9, // The z-index (defaults to 2000000000)
	  className: 'spinner', // The CSS class to assign to the spinner
	  top: '50%', // Top position relative to parent
	  left: '50%', // Left position relative to parent
	  shadow: '0 0 1px transparent', // Box-shadow for the lines
	  position: 'absolute' // Element positioning
	};
    if (bldgnum.length == 0) {
        document.getElementById(bldgnum+".link").innerHTML = "";
        return;
    } else {
       // var xmlhttp = new XMLHttpRequest();
       // xmlhttp.onreadystatechange = function() {
       //     if (this.readyState == 4 && this.status == 200) {
       //        var target = document.getElementById(bldgnum+".link");
		//	   var spinner = new Spinner(opts).spin(target);
       //     }
       // };
        xmlhttp.open("GET", "consolebill.asp?portfolio="+pid+"bldgnum="+bldgnum+"&byear="+byear+"&bperiod="+bperiod+"&utilfilter="+utilid+"&action="+action,true);
        xmlhttp.send();
    }
}
</script>
  <link href="spin.css" rel="stylesheet">


</head>

<body>
<!--[if !excel]>&nbsp;&nbsp;<![endif]-->
<!--The following information was generated by Microsoft Excel's Publish as Web
Page wizard.-->
<!--If the same item is republished from Excel, all information between the DIV
tags will be replaced.-->
<!----------------------------->
<!--START OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD -->
<!----------------------------->

<div id="process bills_12316" align=center x:publishsource="Excel">
<%
	bldgnum = Replace(building, "+", " ")
	bldgnum = Replace(bldgnum, "%20", " ")
if building="" then
	sql = "select top 1 bldgnum, p.portfolio, p.name from buildings b, portfolio p where portfolioid ="& pid &" and p.id = " & pid
	rst1.open sql, cnn1
	if not rst1.eof then
		bldgnum = rst1("bldgnum")
		pname=rst1("name")		
		p=rst1("portfolio")
	end if
	rst1.close
else	
	sql = "SELECT b.bldgnum, b.portfolioid, p.portfolio, p.name FROM buildings b, portfolio p WHERE b.portfolioid=p.id AND bldgnum='"&bldgnum&"'	"
	rst1.open sql, cnn1
	if not rst1.eof then 
		pid = rst1("portfolioid")
		pname=rst1("name")		
		p=rst1("portfolio")
	end if
	rst1.close 
end if
if tonumb(utilfilter)=0 then
	utilbills="All Utility Bills"
else
	sql = "SELECT DISTINCT  u.Utility as util FROM BillYrPeriod byp inner join dbo.tblutility u ON byp.Utility = u.utilityid WHERE u.utilityid="&tonumb(utilfilter)
	rst1.open sql,cnn1
	utilbills=rst1("util") & " Bills"
	rst1.close
end if
%>
<table border=0 cellpadding=0 cellspacing=0 width=1045 style='border-collapse:
 collapse;table-layout:fixed;width:783pt'>
 <col width=23 style='mso-width-source:userset;mso-width-alt:841;width:17pt'>
 <col width=64 style='width:48pt'>
 <col width=98 style='mso-width-source:userset;mso-width-alt:3584;width:74pt'>
 <col width=259 style='mso-width-source:userset;mso-width-alt:9472;width:194pt'>
 <col width=60 span=4 style='mso-width-source:userset;mso-width-alt:2194;
 width:45pt'>
 <col width=91 span=2 style='mso-width-source:userset;mso-width-alt:3328;
 width:68pt'>
 <col width=92 style='mso-width-source:userset;mso-width-alt:3364;width:69pt'>
 <col width=64 style='width:48pt'>
 <col width=23 style='mso-width-source:userset;mso-width-alt:841;width:17pt'>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl1512316 width=23 style='height:15.0pt;width:17pt'><a
  name="RANGE!A1:M27"></a></td>
  <td class=xl1512316 width=64 style='width:48pt'></td>
  <td class=xl1512316 width=98 style='width:74pt'></td>
  <td class=xl1512316 width=259 style='width:194pt'></td>
  <td class=xl1512316 width=60 style='width:45pt'></td>
  <td class=xl1512316 width=60 style='width:45pt'></td>
  <td class=xl1512316 width=60 style='width:45pt'></td>
  <td class=xl1512316 width=60 style='width:45pt'></td>
  <td class=xl1512316 width=91 style='width:68pt'></td>
  <td class=xl1512316 width=91 style='width:68pt'></td>
  <td class=xl1512316 width=92 style='width:69pt'></td>
  <td class=xl1512316 width=64 style='width:48pt'></td>
  <td class=xl1512316 width=23 style='width:17pt'></td>
  <td class=xl1512316 width=23 style='width:17pt'></td>
  <td class=xl1512316 width=23 style='width:17pt'></td>
 </tr>
 <form name=load action="<%= page %>"> 
	 <tr height=25 style='height:18.75pt'>
	  <td height=25 class=xl1512316 style='height:18.75pt'></td>
	  <td class=xl1512316></td>
	  <td colspan=5 class=xl7512316><%= p %> | <%= pname %></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	 </tr>
	 <tr height=25 style='height:18.75pt'>
	  <td height=25 class=xl1512316 style='height:18.75pt'></td>
	  <td class=xl1512316></td>
	  <td class=xl6612316></td>
	  <td colspan=3 class=xl7512316><%= utilbills %></td>
	  <td class=xl6612316></td>
	  <td class=xl1512316></td>
	  <td class=xl6512316></td>
	  <td colspan=2 class=xl6812316><input size="1" class=box name="bperiod" value="<%=bperiod%>" /><input  size="1" class=box name="byear" value="<%=byear%>" /></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	 </tr>
	 <tr height=21 style='height:15.75pt'>
	  <td height=21 class=xl1512316 style='height:15.75pt'></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td colspan=2 class=xl6812316><input type="submit" name="action" value="Load" class="standard" /></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <td class=xl1512316></td>
	  <INPUT type=hidden name=pid value=<%=pid%>></INPUT>
	  <INPUT type=hidden name=bldgnum value=<%=bldgnum%>></INPUT>
	 </tr>
</form>	 
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl1512316 style='height:15.75pt'></td>
  <td class=xl1512316></td>
  <td class=xl1512316></td>
  <td class=xl1512316></td>
  <td class=xl1512316></td>
  <td class=xl1512316></td>
  <td class=xl1512316></td>
  <td class=xl1512316></td>
  <td class=xl1512316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl1512316></td>
  <td class=xl1512316></td>
  <td class=xl1512316></td>
  <td class=xl1512316></td>
 </tr>
<form target="bill_pop" name=bills action="processBillsConsole.asp" onsubmit="window.open('about:blank','bill_pop','width=300,height=500');">
	 <tr height=25 style='height:18.75pt'>
	  <td height=25 class=xl6712316 style='height:18.75pt'></td>
	  <td colspan =3 class=xl6712316 align=right><b>Process</b></td>
	  <td class=xl6812316></td>
	  <td class=xl6812316><INPUT type=submit name="action" value="Create"></td>
	  <td class=xl6812316><INPUT type=submit name="action" value="Delete"></td>
	  <td class=xl6812316><INPUT type=submit name="action" value="Post"></td>
	  <td class=xl6812316><INPUT type=submit name="action" value="UnPost"></td>
	  <td class=xl6712316></td>
	  <td class=xl6712316></td>
	  <td class=xl6712316></td>
	  <td class=xl7312316></td>
	  <td class=xl7312316></td>
	  <td class=xl7312316></td>
	 </tr>
			<INPUT type=hidden name=pid value=<%=pid%>></INPUT>
			<INPUT type=hidden name=bldgnum value='-'></INPUT>
			<INPUT type=hidden name=byear value=<%=byear%>></INPUT>
			<INPUT type=hidden name=bperiod value=<%=bperiod%>></INPUT>
			<INPUT type=hidden name=utilfilter value=<%=utilfilter%>></INPUT>	
</form>	 	 
<form name=processBillsConsole action="processBillsConsole.asp" method="post" target="pdf_pop" onsubmit="window.open('about:blank','pdf_pop','width=10,height=10');">	  
	 <tr height=25 style='height:18.75pt'>
	  <td height=25 class=xl6712316 style='height:18.75pt'></td>
	  <td colspan =3 class=xl6712316 align=right><b>All Bills</b></td>
	  <td class=xl6712316></td>
	  <td class=xl6812316><INPUT type=submit name="action" value="PDF" onclick="allpdfs(<%=pid%>,'-',<%=byear%>, <%=bperiod%>,<%=utilfilter%>, 'gen');"/></td>
	  <td class=xl6812316><INPUT type=submit name="action" value="ZipPDF" onclick="allpdfs(<%=pid%>,'-',<%=byear%>, <%=bperiod%>,<%=utilfilter%>, 'zip');"/></td>
	  <td class=xl6812316></td>
	  <td class=xl6812316></td>
	  <td class=xl6712316></td>
	  <td class=xl6712316></td>
	  <td class=xl6712316></td>
	  <td class=xl7312316></td>
	  <td class=xl7312316></td>
	  <td class=xl7312316></td>
	 </tr>
	 <INPUT type=hidden name=pid value=<%=pid%>></INPUT>
	 <INPUT type=hidden name=bldgnum value='-'></INPUT>
	 <INPUT type=hidden name=byear value=<%=byear%>></INPUT>
	 <INPUT type=hidden name=bperiod value=<%=bperiod%>></INPUT>
	 <INPUT type=hidden name=utilfilter value=<%=utilfilter%>></INPUT>
</form>	
 <tr height=25 style='height:18.75pt'>
  <td height=25 class=xl6712316 style='height:18.75pt'></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
 </tr>
 <tr height=25 style='height:18.75pt'>
  <td height=25 class=xl6712316 style='height:18.75pt'></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl7312316></td>
 </tr>
 <tr height=25 style='height:18.75pt'>
  <td height=25 class=xl6712316 style='height:18.75pt'></td>
  <td class=xl6712316></td>
  <td class=xl6712316>			
			<form name=filter action="<%= page %>" method="post"> 
				<input type="image" src="images\clearfilter.png" alt="Clear" style="width:25px;height:25px;" title="Clear Filters">&nbsp;
				<INPUT type=hidden name=pid value=<%=pid%>></INPUT>
				<INPUT type=hidden name=byeay value=<%=byear%>></INPUT>
				<INPUT type=hidden name=bperiod value=<%=bperiod%>></INPUT>
				<INPUT type=hidden name=utilfilter value=0></INPUT>
			</form>
  </td>
  <td class=xl6712316>Filters:</td>
	<%
		sql = "SELECT DISTINCT byp.Utility as utilid, u.Utility as util FROM BillYrPeriod byp inner join dbo.tblutility u ON byp.Utility = u.utilityid WHERE bldgnum in ( select bldgnum from buildings where portfolioid="&pid&")"
		rst1.open sql,cnn1
		do until rst1.eof
			utilid = rst1("utilid")
			utilname= rst1("util")
			uicon = utilicon(utilid)
	%>		
		  
  <td class=xl6812316>			
			<form name=filter action="<%= page %>" method="post"> 
				<input type="image" src="<%= uicon %>" alt="<%= uid %>" style="width:25px;height:25px;" title="<%= utilname %>">&nbsp;
				<INPUT type=hidden name=pid value=<%=pid%>></INPUT>
				<INPUT type=hidden name=byear value=<%=byear%>></INPUT>
				<INPUT type=hidden name=bperiod value=<%=bperiod%>></INPUT>
				<INPUT type=hidden name=utilfilter value=<%=utilid%>></INPUT>
			</form>
	</td>
	<%
		rst1.movenext
		loop
		rst1.close
	%>
	<td class=xl6712316></td>
	<td class=xl6712316></td>
 </tr>
 <tr height=25 style='height:18.75pt'>
  <td height=25 class=xl6712316 style='height:18.75pt'></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
 </tr>
 <tr height=25 style='height:18.75pt'>
  <td height=25 class=xl6712316 style='height:18.75pt'></td>
  <td class=xl6712316></td>
  <td class=xl6912316>bldgnum</td>
  <td class=xl6912316>Building</td>
  <td class=xl7012316>Utility</td>
  <td class=xl7112316>Created</td>
  <td class=xl7112316>Posted</td>
  <td class=xl7112316>Total</td>
  <td class=xl6912316></td>
  <td class=xl6912316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
 </tr>
 
   <%
	
	Dim fso, strFileName, i, f
	Set fso = server.CreateObject("Scripting.FileSystemObject")
	dim ctime,absfile,PDFName
	dim bldgnum, bldgname, root, pdfdir, link, hasfile, tb, cb, pb, uid, uc, ftime, tbldgnums, ibldgnums, file, tc, pc, cc, util, uicon, last, utilname, newbillsname, have, oldfilefull, newbillsfile, blnBillsAvailable, newsummaryname, newsummaryfile
	ibldgnums = 0
	tbldgnums = 0
	tc = 0
	cc = 0
	pc = 0
	last = ""
	root = "D:\WebSites\isabella\genergyonline.com\pdfmaker\"
	dim sql 

		sql = "select upper(db.bldgnum) as bldgnum, db.bldgname from buildings db left join meters m on m.bldgnum = db.bldgnum where db.offline=0 and m.online=1 and db.portfolioid = "&pid&" group by db.bldgnum,db.bldgname order by bldgname asc"

	rst1.open sql, cnn1
	do until rst1.eof
					
		
		bldgnum = rst1("bldgnum")
		bldgname = rst1("bldgname")	
		pdfdir =  p & "\" & ucase(bldgnum) & "\"
		
		sql = "SELECT DISTINCT byp.Utility as utilid, u.Utility as util FROM BillYrPeriod byp inner join dbo.tblutility u ON byp.Utility = u.utilityid WHERE (bldgnum = '"&bldgnum&"')"
		rst2.open sql, cnn1
		do until rst2.eof
			utilid = rst2("utilid")
			'response.write utilfilter & ":</br>"
			'response.write utilid
			if tonumb(utilfilter)=0 or tonumb(utilfilter) = utilid then
				if last <> bldgnum then
					tbldgnums= tbldgnums + 1
				end if				
				utilname = rst2("Util")
				uid = fw(rst2("util"))
				uicon = utilicon(utilid)
				sql = "SELECT "& _
					"(SELECT count(distinct lup.leaseutilityid) FROM tblleasesutilityprices lup, tblleases l, meters m WHERE l.billingid=lup.billingid and lup.leaseutilityid=m.leaseutilityid and m.nobill=0 and m.meternum not like '%plp%' and l.bldgnum in ('"&bldgnum&"') and lup.utility in ("&utilid&") and ((online=1 and l.startdate <= eomonth(DATEFROMPARTS("&byear&","&bperiod&",1))) or (online=1 and l.dateexpired > datefromparts("&byear&","&bperiod&", 1) ) ) ) as billsneeded, "&_
					"(SELECT count(*) FROM tblbillbyperiod WHERE reject=0 and leaseutilityid in (SELECT leaseutilityid FROM tblleasesutilityprices lup, tblleases l WHERE leaseexpired=0 and l.billingid=lup.billingid and l.bldgnum='"&bldgnum&"') and totalamt is not null and billperiod="&bperiod&" and billyear="&byear&" and utility="&utilid&") as billsprocessed, "&_
					"(SELECT count(*) FROM tblbillbyperiod WHERE reject=0 and leaseutilityid in (SELECT leaseutilityid FROM tblleasesutilityprices lup, tblleases l WHERE leaseexpired=0 and l.billingid=lup.billingid and l.bldgnum='"&bldgnum&"') and totalamt is not null and billperiod="&bperiod&" and billyear="&byear&" and utility="&utilid&" and posted=1) as billsposted, "&_
					"(SELECT count(*) FROM tblbillbyperiod WHERE reject=0 and totalamt is null and bldgnum='"&bldgnum&"' and billperiod="&bperiod&" and billyear="&byear&" and utility="&utilid&") as billserrored"
					'response.write(sql)&"</br>"
					'response.end
				
				sql="SELECT count(distinct billingid) as created FROM [dbBilling].[dbo].[ProcessBills-created] where billyear="&byear&" and billperiod="&bperiod&" and bldgnum = '"&bldgnum&"' and utilityid="&utilid&" group by utilityid"
				rst3.open sql, cnn1
				if not rst3.eof then cb = rst3("created") end if
				rst3.close
				
				sql="SELECT count(distinct billingid) as posted FROM [dbBilling].[dbo].[ProcessBills-created] where posted=1 and billyear="&byear&" and billperiod="&bperiod&" and bldgnum = '"&bldgnum&"' and utilityid="&utilid&" group by utilityid"
				rst3.open sql, cnn1
				if not rst3.eof then pb = rst3("posted") end if
				rst3.close
				
				sql="SELECT count(distinct billingid) as total FROM [dbBilling].[dbo].[ProcessBills-total] where billyear="&byear&" and billperiod="&bperiod&" and bldgnum = '"&bldgnum&"' and utilityid="&utilid&" group by utilityid"
				rst3.open sql, cnn1
				if not rst3.eof then tb = rst3("total") end if
				rst3.close
								
				tc = tc + tb

				PDFName = ucase(bldgnum) & byear & bperiod & utilid & "1.pdf"
				ctime = year(now)&month(now)&day(now)&hour(now)&minute(now)&second(now)	
				newbillsname = ucase(bldgnum) &"_"& byear & "." & Right("0" & bperiod, 2) &"_"& utilname & "_TenantBills.pdf"
				newsummaryname = ucase(bldgnum) &"_"& byear & "." & Right("0" & bperiod, 2) &"_"& utilname & "_BillSummary.pdf"
				oldfilefull = root&pdfdir&PDFName
				newbillsfile = root&pdfdir&newbillsname
				newsummaryfile = root&pdfdir&newsummaryname

				if fso.fileexists(oldfilefull) then

					fso.copyFile oldfilefull, newbillsfile, true
					fso.deletefile(oldfilefull)						
					
				else
					hasfile = false
				end if

		%>	
	<form name=processBillsConsole action="processBillsConsole.asp" method="post" target="pdf_pop" onsubmit="window.open('about:blank','pdf_pop','width=10,height=10');">
		 <tr height=25 style='height:18.75pt'>
		  <td height=25 class=xl6712316 style='height:18.75pt'></td>
		  <td class=xl6812316>
			<div id="<%=bldgnum%>.review"><a style="font-family:arial;font-size:12;text-decoration:none;" href="https://appserver1.genergy.com/genergy2/validation/re_index.asp?select=%23&pid=<%=pid%>&building=<%=bldgnum%>&utilityid=<%=utilid%>&bperiod=<%=bperiod%>%2F<%=byear%>&historic=False" target="_blank" onMouseOver="this.style.color= 'lightblue'"; onMouseOut="this.style.color = 'blue'">R / E</a></div>
		  </td>
		  <td class=xl6712316><%= bldgnum %></td>
		  <td class=xl6712316><%= left(bldgname,30) %></td>
		  <td class=xl6812316><img src="<%= uicon %>" alt="<%= uid %>" style="width:15px;height:15px;"></td>
		  <% if tb = 0 then %>
			  <td class=xl7212316>&nbsp;</td>
			  <td class=xl7212316>&nbsp;</td>
			  <td class=xl7212316>&nbsp;</td>
		  <% else %>
			  <td class=xl7212316><% if cb > 0 then %> <%= cb %> <% end if %></td>
			  <td class=xl7212316><% if pb > 0 then %> <%= pb %> <% end if %></td>
			  <td class=xl7212316><%= tb %></td>
		  <% end if %>
		  
		  <td class=xl6812316>
				<% if cb > 0 then %>
					<INPUT type=submit name="action" value="Delete" onclick="allbills(<%=pid%>,'<%=bldgnum%>',<%=byear%>, <%=bperiod%>,<%=utilid%>, 'd');"/>
				<% else %>
					<INPUT type=submit name="action" value="Create" onclick="allbills(<%=pid%>,'<%=bldgnum%>',<%=byear%>, <%=bperiod%>,<%=utilid%>, 'c');"/>
				<% end if %>
		  </td>
		  <td class=xl6812316>
				<% if pb > 0 then %>
					<INPUT type=submit name="action" value="UnPost" onclick="allbills(<%=pid%>,'<%=bldgnum%>',<%=byear%>, <%=bperiod%>,<%=utilid%>, 'u');"/>
				<% elseif cb > 0 then %>
					<INPUT type=submit name="action" value="Post" onclick="allbills(<%=pid%>,'<%=bldgnum%>',<%=byear%>, <%=bperiod%>,<%=utilid%>, 'p');"/>
				<% end if %>
		  </td>
		  <td class=xl6812316 colspan=2 align=center>
				<% if cb > 0 then %>
					<INPUT type=submit name="action" value="Tenant Bills" onclick="allpdfs(<%=pid%>,'<%=bldgnum%>',<%=byear%>, <%=bperiod%>,<%=utilid%>, 'gen');"/>
				<% else %>
					&nbsp;
				<% end if %>
					</br>
		  
					<%
					if CheckRemoteURL("https://appserver1.genergy.com/pdfMaker/"&pdfdir&newbillsname) then
						have = true
						blnBillsAvailable = True
						link = pdfdir & newbillsname & "?dt=" & ctime
						set f = fso.getfile(newbillsfile)
						ftime = hrsago(f.datelastmodified)
						
						hasfile = true
						ibldgnums = ibldgnums + 1		
						cc = cc + cb
						pc = pc + pb					
					%>		  
						<div id="<%=bldgnum%>.link"><a style="font-family:arial;font-size:12;text-decoration:none;" href="https://appserver1.genergy.com/pdfMaker/<%= link %>" target="_blank" onMouseOver="this.style.color= 'lightblue'"; onMouseOut="this.style.color = 'blue'" download><img src="images\pdf-icon.png" alt="<%= pdfname %> "style="width:15px;height:15px;"> | <%= ftime %></a></div>
					<% else %>
						<div id="<%=bldgnum%>.link">&nbsp;</div>
					<% end if %></td>
		  
		  
		  <td class=xl6812316 align=center colspan=2>
				<% if cb > 0 then %>
					<INPUT type=submit name="action" value="Bill Summary" onclick="allpdfs(<%=pid%>,'<%=bldgnum%>',<%=byear%>, <%=bperiod%>,<%=utilid%>, 'gen');"/>
				<% else %>
					&nbsp;
				<% end if %>
					</br>
		  
					<%
					if CheckRemoteURL("https://appserver1.genergy.com/pdfMaker/"&pdfdir&newsummaryname) then
						have = true
						blnBillsAvailable = True
						link = pdfdir & newsummaryname & "?dt=" & ctime
						set f = fso.getfile(newsummaryfile)
						ftime = hrsago(f.datelastmodified)
						
						hasfile = true
						ibldgnums = ibldgnums + 1		
				
					%>		  
						<div id="<%=bldgnum%>.link"><a style="font-family:arial;font-size:12;text-decoration:none;" href="https://appserver1.genergy.com/pdfMaker/<%= link %>" target="_blank" onMouseOver="this.style.color= 'lightblue'"; onMouseOut="this.style.color = 'blue'" download><img src="images\pdf-icon.png" alt="<%= pdfname %> "style="width:15px;height:15px;"> | <%= ftime %></a></div>
					<% else %>
						<div id="<%=bldgnum%>.link">&nbsp;</div>
					<% end if %></td>
		  
		  
		  <td class=xl6812316></td>
		 </tr>
				
				<INPUT type=hidden name=pid value=<%=pid%>></INPUT>
				<INPUT type=hidden name=bldgnum value=<%=bldgnum%>></INPUT>
				<INPUT type=hidden name=byear value=<%=byear%>></INPUT>
				<INPUT type=hidden name=bperiod value=<%=bperiod%>></INPUT>
				<INPUT type=hidden name=utilfilter value=<%=utilid%>></INPUT>
	</form>


	<%
			end if
		rst2.movenext
		loop
		rst2.close
		last = bldgnum
	rst1.movenext
	loop
	rst1.close
	
%>
 <tr height=25 style='height:18.75pt'>
  <td height=25 class=xl6712316 style='height:18.75pt'></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl7212316></td>
  <td class=xl7212316></td>
  <td class=xl7212316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6812316></td>
  <td class=xl6712316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
 </tr>
 <tr height=25 style='height:18.75pt'>
  <td height=25 class=xl6712316 style='height:18.75pt'></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl7112316>Buildings</td>
  <td class=xl7112316>Created</td>
  <td class=xl7112316>Posted</td>
  <td class=xl7112316>Total</td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6812316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl6712316></td>
  <td class=xl7312316></td>
 </tr>
 <tr height=25 style='height:18.75pt'>
  <td height=25 class=xl6712316 style='height:18.75pt'></td>
  <td class=xl6712316></td>
  <td colspan=2 class=xl7112316>TOTALS</td>
  <td class=xl7012316><%= tbldgnums %></td>
  <td class=xl7112316><%= cc %></td>
  <td class=xl7112316><%= pc %></td>
  <td class=xl7112316><%= tc %></td>
  <td class=xl6912316></td>
  <td class=xl6912316></td>
<%
	if tonumb(utilfilter)=0 then utilname = "All_Utilities" end if
	zipname = byear & "." & Right("0" & bperiod, 2) &"_"& utilname & "_TenantBills.zip"
	zipfull = root&p&"/"&zipname
	ziplink = p&"/"&zipname & "?dt=" & ctime
	'response.write utilname
%>
<% if CheckRemoteURL("https://appserver1.genergy.com/pdfMaker/"&p&"/"&zipname) then 
	set f = fso.getfile(zipfull)
	ftime = hrsago(f.datelastmodified)
%>  
  <td class=xl7012316>		
		<div id="bills.link"><a style="font-family:arial;font-size:12;text-decoration:none;" href="https://appserver1.genergy.com/pdfMaker/<%= ziplink %>" target="_blank" onMouseOver="this.style.color= 'lightblue'"; onMouseOut="this.style.color = 'blue'" download><img src="images\zip.png" alt="<%= zipname %> "style="width:15px;height:15px;">&nbsp;<%= ibldgnums %> invoices </a></div>
  </td>
  <td class=xl7112316>| <%= ftime %></td>
 <% else %>
	<td class=xl7012316><%= ibldgnums %> invoices</td>
	<td class=xl7112316></td>
 <% end if %>	
  
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
 </tr>
 <tr height=25 style='height:18.75pt'>
  <td height=25 class=xl7312316 style='height:18.75pt'></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7412316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
 </tr>
 <tr height=25 style='height:18.75pt'>
  <td height=25 class=xl7312316 style='height:18.75pt'></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
  <td class=xl7312316></td>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=23 style='width:17pt'></td>
  <td width=64 style='width:48pt'></td>
  <td width=98 style='width:74pt'></td>
  <td width=259 style='width:194pt'></td>
  <td width=60 style='width:45pt'></td>
  <td width=60 style='width:45pt'></td>
  <td width=60 style='width:45pt'></td>
  <td width=60 style='width:45pt'></td>
  <td width=91 style='width:68pt'></td>
  <td width=91 style='width:68pt'></td>
  <td width=92 style='width:69pt'></td>
  <td width=64 style='width:48pt'></td>
  <td width=23 style='width:17pt'></td>
  <td width=23 style='width:17pt'></td>
  <td width=23 style='width:17pt'></td>
 </tr>
 <![endif]>
</table>

</div>


<!----------------------------->
<!--END OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD-->
<!----------------------------->
</body>

</html>
<% set f=nothing
set fso=nothing %>