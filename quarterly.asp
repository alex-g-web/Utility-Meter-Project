<%@ LANGUAGE="VBSCRIPT" %>
<%
  Response.AddHeader "Content-Disposition", "attachment;filename=report.html"  
  Response.ContentType = "application/vnd.ms-excel" 
%>


<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 15">

<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
x\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
<style id="CPL Group USA Sales Tax Prep Sheet - New 11.01.2019 (1)_27033_Styles">
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
.font527033
	{color:white;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;}
.font627033
	{color:black;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;}
.font727033
	{color:black;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;}
.font827033
	{color:#C2D69B;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;}
.font927033
	{color:#9BBB59;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;}
.font1027033
	{color:black;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:underline;
	text-underline-style:single;
	font-family:Arial, sans-serif;
	mso-font-charset:0;}
.font1127033
	{color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"Calibri \(Body\)";
	mso-generic-font-family:auto;
	mso-font-charset:0;}
.font1227033
	{color:white;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"Calibri \(Body\)";
	mso-generic-font-family:auto;
	mso-font-charset:0;}
.xl6327033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6427033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.000%";
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6527033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6627033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6727033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
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
.xl6827033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.000%";
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6927033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Cambria, serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7027033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.000%";
	text-align:general;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7127033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7227033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.000%";
	text-align:general;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7327033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
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
.xl7427033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:italic;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7527033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl7627033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl7727033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl7827033
	{padding:0px;
	mso-ignore:padding;
	color:white;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl7927033
	{padding:0px;
	mso-ignore:padding;
	color:windowtext;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl8027033
	{padding:0px;
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
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8127033
	{padding:0px;
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
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8227033
	{padding:0px;
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
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8327033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:general;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8427033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8527033
	{padding:0px;
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
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8627033
	{padding:0px;
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
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8727033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8827033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8927033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9027033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:right;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9127033
	{padding:0px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl9227033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9327033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#BFBFBF;
	mso-pattern:black none;
	white-space:nowrap;}
.xl9427033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#BFBFBF;
	mso-pattern:black none;
	white-space:nowrap;}
.xl9527033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:right;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9627033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:right;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#BFBFBF;
	mso-pattern:black none;
	white-space:nowrap;}
.xl9727033
	{padding:0px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl9827033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#BFBFBF;
	mso-pattern:black none;
	mso-protection:locked hidden;
	white-space:nowrap;}
.xl9927033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#BFBFBF;
	mso-pattern:black none;
	mso-protection:locked hidden;
	white-space:nowrap;}
.xl10027033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:right;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#BFBFBF;
	mso-pattern:black none;
	mso-protection:locked hidden;
	white-space:nowrap;}
.xl10127033
	{padding:0px;
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
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10227033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.0%";
	text-align:center;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10327033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.0%";
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl10427033
	{padding:0px;
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
.xl10527033
	{padding:0px;
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
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl10627033
	{padding:0px;
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
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl10727033
	{padding:0px;
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
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl10827033
	{padding:0px;
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
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl10927033
	{padding:0px;
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
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl11027033
	{padding:0px;
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
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl11127033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:italic;
	text-decoration:underline;
	text-underline-style:single;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl11227033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl11327033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11427033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:10.0pt;
	font-weight:400;
	font-style:italic;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11527033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11627033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:general;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11727033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl11827033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:general;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#BFBFBF;
	mso-pattern:black none;
	white-space:nowrap;}
.xl11927033
	{padding:0px;
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
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12027033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#BFBFBF;
	mso-pattern:black none;
	white-space:nowrap;}
.xl12127033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:italic;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.000%";
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12227033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12327033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"\@";
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12427033
	{padding:0px;
	mso-ignore:padding;
	color:#00B050;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12527033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:general;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12627033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12727033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12827033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"\@";
	text-align:general;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl12927033
	{padding:0px;
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
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13027033
	{padding:0px;
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
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13127033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:general;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13227033
	{padding:0px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13327033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\0022$\0022* \#\,\#\#0\.00_\)\;_\(\0022$\0022* \\\(\#\,\#\#0\.00\\\)\;_\(\0022$\0022* \0022-\0022??_\)\;_\(\@_\)";
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13427033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl13527033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl13627033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#ED7D31;
	mso-pattern:black none;
	white-space:nowrap;}
.xl13727033
	{padding:0px;
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
	white-space:normal;}
.xl13827033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl13927033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14027033
	{padding:0px;
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
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14127033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14227033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14327033
	{padding:0px;
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
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14427033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl14527033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14627033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14727033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"Short Date";
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14827033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:"Short Date";
	text-align:center;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl14927033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl15027033
	{padding:0px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
-->
</style>
    <script type="text/javascript">
    function exportarExcel(tabla){
        var t = document.getElementById(tabla);
        t.border = 1;
        var html = t.outerHTML;
        html = encodeURIComponent(html);
        // problemas con el encoding!
        // se puede usar base64_encode() en lugar de encodeURIComponent(html))
        // ojo con encodeURIComponet() que está deprecada. lo mejor sería usar base64

        window.open('data:application/vnd.ms-excel,' + html);
    }
    </script>
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

<div id="CPL Group USA Sales Tax Prep Sheet - New 11.01.2019 (1)_27033"
align=center x:publishsource="Excel">

<table id="tabla" border=0 cellpadding=0 cellspacing=0 width=981 class=xl6553527033
 style='border-collapse:collapse;table-layout:fixed;width:737pt'>
 <col class=xl6553527033 width=63 style='mso-width-source:userset;mso-width-alt:
 2304;width:47pt'>
 <col class=xl6553527033 width=161 style='mso-width-source:userset;mso-width-alt:
 5888;width:121pt'>
 <col class=xl6553527033 width=195 style='mso-width-source:userset;mso-width-alt:
 7131;width:146pt'>
 <col class=xl6553527033 width=125 span=4 style='mso-width-source:userset;
 mso-width-alt:4571;width:94pt'>
 <col class=xl6553527033 width=62 style='width:47pt'>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl6553527033 width=63 style='height:15.0pt;width:47pt'></td>
  <td class=xl6553527033 width=161 style='width:121pt'></td>
  <td class=xl6553527033 width=195 style='width:146pt'></td>
  <td class=xl6553527033 width=125 style='width:94pt'></td>
  <td class=xl6553527033 width=125 style='width:94pt'></td>
  <td class=xl6553527033 width=125 style='width:94pt'></td>
  <td class=xl6553527033 width=125 style='width:94pt'></td>
  <td class=xl6553527033 width=62 style='width:47pt'></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 style='height:15.0pt' align=left valign=top><span style='mso-ignore:vglayout;
  position:absolute;z-index:1;margin-left:18px;margin-top:3px;width:444px;
  height:76px'><img width=444 height=76
  src="cpllogo.png"
  v:shapes="Picture_x0020_1"></span><span style='mso-ignore:vglayout2'>
  <table cellpadding=0 cellspacing=0>
   <tr>
    <td height=20 class=xl6553527033 width=63 style='height:15.0pt;width:47pt'></td>
   </tr>
  </table>
  </span></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6327033></td>
  <td class=xl6327033></td>
  <td class=xl6327033></td>
  <td class=xl6427033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl6553527033 style='height:15.0pt'></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6327033></td>
  <td class=xl6327033></td>
  <td class=xl6327033></td>
  <td class=xl6427033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl6553527033 style='height:15.0pt'></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6327033></td>
  <td class=xl6327033></td>
  <td class=xl6527033></td>
  <td class=xl6527033>29-19 39<font class="font727033"><sup>th</sup></font><font
  class="font627033"> Avenue</font><font class="font827033"> |</font><font
  class="font627033"> Long Island City </font><font class="font927033">|</font><font
  class="font827033"> </font><font class="font627033">NY 11101</font></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl6553527033 style='height:15.0pt'></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6627033></td>
  <td class=xl6727033></td>
  <td class=xl6527033></td>
  <td class=xl6527033>(212) 664-7600 <font class="font927033">|</font><font
  class="font627033"> </font><font class="font1027033">cplgroupusa.com</font></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl6553527033 style='height:15.75pt'></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6927033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td colspan=2 height=29 class=xl14527033 style='border-right:.5pt solid black;
  height:21.75pt'>Preparation Date:</td>
  <td colspan=2 class=xl14727033 style='border-right:.5pt solid black;
  border-left:none'>&nbsp;</td>
  <td colspan=2 class=xl14927033 style='border-right:.5pt solid black;
  border-left:none'>Current State Sales Tax</td>
  <td class=xl7027033 align=right style='border-left:none'>4.000%</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td colspan=2 height=29 class=xl14127033 style='border-right:.5pt solid black;
  height:21.75pt'>Building Number:</td>
  <td colspan=2 class=xl10127033 style='border-right:.5pt solid black;
  border-left:none'>&nbsp;</td>
  <td colspan=2 class=xl14927033 style='border-right:.5pt solid black;
  border-left:none'>Current City Sales Tax</td>
  <td class=xl7027033 align=right style='border-top:none;border-left:none'>4.500%</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td colspan=2 height=29 class=xl14127033 style='border-right:.5pt solid black;
  height:21.75pt'>Building Address:</td>
  <td colspan=2 class=xl10127033 style='border-right:.5pt solid black;
  border-left:none'>&nbsp;</td>
  <td colspan=2 class=xl14427033 width=250 style='border-left:none;width:188pt'>Current
  Metropolitan Commuter Transportation District (MCTD) Tax</td>
  <td class=xl7027033 align=right style='border-top:none;border-left:none'>0.375%</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td colspan=2 height=29 class=xl14127033 style='border-right:.5pt solid black;
  height:21.75pt'>Manager/Owner:</td>
  <td colspan=2 class=xl10127033 style='border-right:.5pt solid black;
  border-left:none'>&nbsp;</td>
  <td class=xl7127033 colspan=2>Total Sales Tax Rate</td>
  <td class=xl7227033 align=right style='border-top:none'>8.875%</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td colspan=2 height=29 class=xl14127033 style='border-right:.5pt solid black;
  height:21.75pt'>Full Service/Retail Access (F/R)?<span
  style='mso-spacerun:yes'> </span></td>
  <td colspan=2 class=xl10127033 style='border-right:.5pt solid black;
  border-left:none'>F</td>
  <td class=xl6627033></td>
  <td class=xl6727033></td>
  <td class=xl6727033></td>
  <td class=xl6827033></td>
 </tr>
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td colspan=2 height=29 class=xl13827033 style='border-right:.5pt solid black;
  height:21.75pt'>TAX -ID #:</td>
  <td colspan=2 class=xl8627033 style='border-right:.5pt solid black;
  border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7327033 style='height:15.0pt'></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl6553527033 style='height:15.0pt'></td>
  <td class=xl7327033></td>
  <td class=xl6553527033></td>
  <td class=xl6727033>SALES TAX REPORT</td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7427033 style='height:15.0pt'>* - Est.</td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6727033>Submeter Billing</td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td rowspan=3 height=60 class=xl13427033 style='border-bottom:.5pt solid black;
  height:45.0pt'>Mo #</td>
  <td class=xl7527033>&nbsp;</td>
  <td rowspan=3 class=xl13427033 style='border-bottom:.5pt solid black'>Bill
  Period</td>
  <td class=xl7527033>Total</td>
  <td class=xl7527033 style='border-left:none'>Total</td>
  <td class=xl7527033 style='border-left:none'>Net</td>
  <td class=xl7527033 style='border-left:none'>Total</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7627033 style='height:15.0pt'>&nbsp;</td>
  <td class=xl7627033>Submeter Billing</td>
  <td class=xl7627033 style='border-left:none'>Tenant Billing</td>
  <td class=xl7627033 style='border-left:none'>Tenant Billing</td>
  <td class=xl7627033 style='border-left:none'>Sales Tax Invoiced</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7727033 style='height:15.0pt'>Month</td>
  <td class=xl7827033>(excl. Sales Tax)</td>
  <td class=xl7827033 style='border-left:none'>(Tax Exempt)</td>
  <td class=xl7827033 style='border-left:none'>(Taxable)</td>
  <td class=xl7927033 style='border-left:none'>from Tenants</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl8027033 style='height:15.0pt;border-top:none'>1</td>
  <td class=xl8127033>Jul</td>
  <td class=xl8227033 style='border-top:none;border-left:none'>06/08/2019-07/09/2019</td>
  <td class=xl8327033 style='border-top:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>47,679.02 </td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>47,679.02 </td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                   </span>4,231.51 </td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl8227033 style='height:15.0pt'>2</td>
  <td class=xl8527033 style='border-top:none'>Aug</td>
  <td class=xl8227033 style='border-top:none;border-left:none'>07/10/2019-08/10/2019</td>
  <td class=xl8327033 style='border-top:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>28,596.02 </td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>28,596.02 </td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                   </span>2,537.92 </td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl8627033 style='height:15.0pt'>3</td>
  <td class=xl8127033>Sep</td>
  <td class=xl8227033 style='border-top:none;border-left:none'>08/11/2019-09/11/2019</td>
  <td class=xl8327033 style='border-top:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>31,287.51 </td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>31,287.51 </td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                   </span>2,776.76 </td>
  <td class=xl6553527033></td>
 </tr>
 <tr class=xl7327033 height=20 style='height:15.0pt'>
  <td height=20 class=xl8727033 style='height:15.0pt'>&nbsp;</td>
  <td class=xl8827033>TOTAL</td>
  <td class=xl8927033>&nbsp;</td>
  <td class=xl9027033><span style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>              </span>107,562.55 </td>
  <td class=xl9027033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl9027033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>              </span>107,562.55 </td>
  <td class=xl9027033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                   </span>9,546.19 </td>
  <td class=xl7327033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl6553527033 style='height:15.0pt'></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7327033 style='height:15.0pt'></td>
  <td class=xl7327033></td>
  <td class=xl6553527033></td>
  <td class=xl6727033>Building Utility Cost (Delivery)</td>
  <td class=xl7327033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td rowspan=3 height=60 class=xl13427033 style='border-bottom:.5pt solid black;
  height:45.0pt'>Mo #</td>
  <td class=xl7527033>&nbsp;</td>
  <td rowspan=3 class=xl13427033 style='border-bottom:.5pt solid black'>Bill
  Period</td>
  <td class=xl7527033>Total</td>
  <td class=xl7527033 style='border-left:none'>Total</td>
  <td class=xl7527033 style='border-left:none'>Total</td>
  <td class=xl7527033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7627033 style='height:15.0pt'>&nbsp;</td>
  <td class=xl7627033>Con-Ed Bill</td>
  <td class=xl7627033 style='border-left:none'>Con-Ed Bill</td>
  <td class=xl7627033 style='border-left:none'>Con-Ed Bill</td>
  <td class=xl7627033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7727033 style='height:15.0pt'>Month</td>
  <td class=xl7827033>(excl. Sales Tax)</td>
  <td class=xl7627033 style='border-left:none'><font class="font1127033"><span
  style='mso-spacerun:yes'> </span></font><font class="font1227033">(</font><font
  class="font527033">Paid) Sales Tax</font></td>
  <td class=xl7827033 style='border-left:none'><font class="font1227033"><span
  style='mso-spacerun:yes'> </span>(</font><font class="font527033">Paid)</font></td>
  <td class=xl9127033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl8027033 style='height:15.0pt;border-top:none'>1</td>
  <td class=xl8127033>Jul</td>
  <td class=xl8227033 style='border-top:none;border-left:none'>06/08/2019-07/09/2019</td>
  <td class=xl8327033 style='border-top:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>45,743.89 </td>
  <td class=xl8427033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl9227033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>45,743.89 </td>
  <td class=xl9327033>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl8227033 style='height:15.0pt'>2</td>
  <td class=xl8527033 style='border-top:none'>Aug</td>
  <td class=xl8227033 style='border-top:none;border-left:none'>07/10/2019-08/10/2019</td>
  <td class=xl8327033 style='border-top:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>18,836.28 </td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl9227033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>18,836.28 </td>
  <td class=xl9427033>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl8627033 style='height:15.0pt'>3</td>
  <td class=xl8127033>Sep</td>
  <td class=xl8227033 style='border-top:none;border-left:none'>08/11/2019-09/11/2019</td>
  <td class=xl8327033 style='border-top:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>30,567.35 </td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl9227033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>30,567.35 </td>
  <td class=xl9427033>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr class=xl7327033 height=20 style='height:15.0pt'>
  <td height=20 class=xl8727033 style='height:15.0pt'>&nbsp;</td>
  <td class=xl8827033>TOTAL</td>
  <td class=xl8927033>&nbsp;</td>
  <td class=xl9027033><span style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>95,147.52 </td>
  <td class=xl9027033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl9527033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>95,147.52 </td>
  <td class=xl9627033>&nbsp;</td>
  <td class=xl7327033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl6553527033 style='height:15.0pt'></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7327033 style='height:15.0pt'></td>
  <td class=xl7327033></td>
  <td class=xl6553527033></td>
  <td class=xl6727033>Building Utility Cost (ESCO)</td>
  <td class=xl7327033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td rowspan=3 height=60 class=xl13427033 style='border-bottom:.5pt solid black;
  height:45.0pt'>Mo #</td>
  <td class=xl7527033>&nbsp;</td>
  <td rowspan=3 class=xl13427033 style='border-bottom:.5pt solid black'>Bill
  Period</td>
  <td class=xl7527033>Total</td>
  <td class=xl7527033 style='border-left:none'>Total</td>
  <td class=xl7527033 style='border-left:none'>Total</td>
  <td class=xl7527033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7627033 style='height:15.0pt'>&nbsp;</td>
  <td class=xl7627033>ESCO Bill</td>
  <td class=xl7627033 style='border-left:none'>ESCO Bill</td>
  <td class=xl7627033 style='border-left:none'>ESCO Bill</td>
  <td class=xl7627033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7727033 style='height:15.0pt'>Month</td>
  <td class=xl7827033>(excl. Sales Tax)</td>
  <td class=xl7627033 style='border-left:none'><font class="font1127033"><span
  style='mso-spacerun:yes'> </span></font><font class="font1227033">(</font><font
  class="font527033">Paid) Sales Tax</font></td>
  <td class=xl7827033 style='border-left:none'><font class="font1227033"><span
  style='mso-spacerun:yes'> </span>(</font><font class="font527033">Paid)</font></td>
  <td class=xl9727033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl8027033 style='height:15.0pt;border-top:none'>1</td>
  <td class=xl8127033>Jul</td>
  <td class=xl8227033 style='border-top:none;border-left:none'>06/08/2019-07/09/2019</td>
  <td class=xl8327033 style='border-top:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl8427033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl9827033 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl8227033 style='height:15.0pt'>2</td>
  <td class=xl8527033 style='border-top:none'>Aug</td>
  <td class=xl8227033 style='border-top:none;border-left:none'>07/10/2019-08/10/2019</td>
  <td class=xl8327033 style='border-top:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl9927033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl8627033 style='height:15.0pt'>3</td>
  <td class=xl8127033>Sep</td>
  <td class=xl8227033 style='border-top:none;border-left:none'>08/11/2019-09/11/2019</td>
  <td class=xl8327033 style='border-top:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl9927033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr class=xl7327033 height=20 style='height:15.0pt'>
  <td height=20 class=xl8727033 style='height:15.0pt'>&nbsp;</td>
  <td class=xl8827033>TOTAL</td>
  <td class=xl8927033>&nbsp;</td>
  <td class=xl9027033><span style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl9027033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl9027033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl10027033 style='border-left:none'>&nbsp;</td>
  <td class=xl7327033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl6553527033 style='height:15.0pt'></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7327033 style='height:15.0pt'></td>
  <td class=xl7327033></td>
  <td class=xl6553527033></td>
  <td class=xl6727033>Sale &amp; Use</td>
  <td class=xl7327033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td rowspan=2 height=40 class=xl7527033 style='border-bottom:.5pt solid black;
  height:30.0pt'>Mo #</td>
  <td class=xl7527033 style='border-left:none'>&nbsp;</td>
  <td class=xl7527033 style='border-left:none'>Bill Period</td>
  <td class=xl7527033 style='border-left:none'>Total KWH</td>
  <td class=xl7527033 style='border-left:none'>Total KWH</td>
  <td class=xl7527033 style='border-left:none'>Resold / Purchased</td>
  <td class=xl7527033 style='border-left:none'>Building Use</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7727033 style='height:15.0pt;border-left:none'>Month</td>
  <td class=xl7727033 style='border-left:none'>&nbsp;</td>
  <td class=xl7827033 style='border-left:none'>Purchased</td>
  <td class=xl7827033 style='border-left:none'>Resold</td>
  <td class=xl7727033 style='border-left:none'>ratio %</td>
  <td class=xl7727033 style='border-left:none'>ratio %</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl10127033 style='height:15.0pt'>1</td>
  <td class=xl8127033>Jul</td>
  <td class=xl8227033 style='border-top:none;border-left:none'>06/08/2019-07/09/2019</td>
  <td class=xl8327033 style='border-top:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>              </span>234,560.00 </td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>              </span>198,508.90 </td>
  <td class=xl10227033 style='border-top:none;border-left:none'>84.6%</td>
  <td class=xl10227033 style='border-top:none;border-left:none'>15.4%</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl8227033 style='height:15.0pt'>2</td>
  <td class=xl8527033 style='border-top:none'>Aug</td>
  <td class=xl8227033 style='border-top:none;border-left:none'>07/10/2019-08/10/2019</td>
  <td class=xl8327033 style='border-top:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                </span>99,440.00 </td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>              </span>147,128.00 </td>
  <td class=xl10227033 style='border-top:none;border-left:none'>148.0%</td>
  <td class=xl10227033 style='border-top:none;border-left:none'>-48.0%</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl8627033 style='height:15.0pt'>3</td>
  <td class=xl8127033>Sep</td>
  <td class=xl8227033 style='border-top:none;border-left:none'>08/11/2019-09/11/2019</td>
  <td class=xl8327033 style='border-top:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>              </span>168,480.00 </td>
  <td class=xl8427033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>              </span>133,336.00 </td>
  <td class=xl10227033 style='border-top:none;border-left:none'>79.1%</td>
  <td class=xl10227033 style='border-top:none;border-left:none'>20.9%</td>
  <td class=xl6553527033></td>
 </tr>
 <tr class=xl7327033 height=20 style='height:15.0pt'>
  <td height=20 class=xl8727033 style='height:15.0pt'>&nbsp;</td>
  <td class=xl8827033>TOTAL</td>
  <td class=xl8927033>&nbsp;</td>
  <td class=xl9027033><span style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>              </span>502,480.00 </td>
  <td class=xl9027033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>              </span>478,972.90 </td>
  <td class=xl10327033 style='border-left:none'>95.3%</td>
  <td class=xl10327033 style='border-left:none'>4.7%</td>
  <td class=xl7327033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl6553527033 style='height:15.0pt'></td>
  <td class=xl6553527033></td>
  <td class=xl7327033></td>
  <td class=xl10427033></td>
  <td class=xl10427033></td>
  <td class=xl10427033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl7327033 colspan=7 style='height:15.0pt'>Long Method of
  Calculating Monthly Sales Tax Due Based on ST-810 NYS Sales and Use Tax
  Return for Part-Quarterly (Monthly) Filers</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl10527033 style='height:15.0pt'>&nbsp;</td>
  <td class=xl10627033>&nbsp;</td>
  <td class=xl10627033>&nbsp;</td>
  <td class=xl10627033>&nbsp;</td>
  <td class=xl10727033>&nbsp;</td>
  <td class=xl10827033 style='border-left:none'>&nbsp;</td>
  <td class=xl10727033>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl10927033 style='height:15.0pt'>&nbsp;</td>
  <td class=xl11027033>&nbsp;</td>
  <td class=xl11027033>&nbsp;</td>
  <td class=xl11127033>Notes:</td>
  <td class=xl11227033>&nbsp;</td>
  <td class=xl7727033 style='border-left:none'>Sales and Service</td>
  <td class=xl11227033>Tax</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11327033 colspan=2 style='height:18.95pt'>1. Return
  Summary</td>
  <td class=xl6553527033></td>
  <td class=xl11427033></td>
  <td class=xl6553527033></td>
  <td class=xl11827033>&nbsp;</td>
  <td class=xl11827033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11927033 colspan=2 style='height:18.95pt'><span
  style='mso-spacerun:yes'> </span>1) Gross sales and services</td>
  <td class=xl6553527033></td>
  <td class=xl11427033 colspan=2>Total Gross Submeter Billing (excl. Sales Tax)</td>
  <td class=xl11727033><span style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>              </span>107,562.55 </td>
  <td class=xl12027033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11927033 colspan=2 style='height:18.95pt'><span
  style='mso-spacerun:yes'> </span>2) Non-taxable sales</td>
  <td class=xl6553527033></td>
  <td class=xl11427033 colspan=2>Total Tax Exempt Submeter Billing</td>
  <td class=xl11727033><span style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl12027033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11927033 colspan=2 style='height:18.95pt'><span
  style='mso-spacerun:yes'> </span>3) Taxable Sales and Services</td>
  <td class=xl6553527033></td>
  <td class=xl11427033 colspan=2>Taxable Submeter Billing</td>
  <td class=xl11727033><span style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>              </span>107,562.55 </td>
  <td class=xl12527033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                   </span>9,546.18 </td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11327033 colspan=3 style='height:18.95pt'>2. Do I need
  to file additional schedules?</td>
  <td class=xl11427033 colspan=2>Typically not applicable<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl11727033>&nbsp;</td>
  <td class=xl11727033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11327033 colspan=4 style='height:18.95pt'>3. Sales and
  Use Tax (Use Row for New York City/State combined tax)</td>
  <td class=xl6553527033></td>
  <td class=xl11827033>&nbsp;</td>
  <td class=xl11827033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11927033 colspan=3 style='height:18.95pt'><span
  style='mso-spacerun:yes'> </span>1) Column D - Purchase Subject to Sales Tax</td>
  <td class=xl11427033></td>
  <td class=xl6553527033></td>
  <td class=xl11727033><span style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                   </span>4,451.21 </td>
  <td class=xl12027033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11927033 colspan=2 style='height:18.95pt'><span
  style='mso-spacerun:yes'> </span>2) Column E - Applicable Tax Rate</td>
  <td class=xl6553527033></td>
  <td class=xl11427033></td>
  <td class=xl6553527033></td>
  <td class=xl12127033>8.875%</td>
  <td class=xl12027033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11927033 colspan=2 style='height:18.95pt'><span
  style='mso-spacerun:yes'> </span>3) Column F - Sales &amp; Use Tax</td>
  <td class=xl6553527033></td>
  <td class=xl11427033></td>
  <td class=xl6553527033></td>
  <td class=xl12227033>&nbsp;</td>
  <td class=xl12227033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                      </span>395.04 </td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11327033 colspan=2 style='height:18.95pt'>4. Calculate
  Special Taxes</td>
  <td class=xl12327033></td>
  <td class=xl11427033 colspan=2>Typically not applicable<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl11527033 style='border-top:none'>&nbsp;</td>
  <td class=xl11627033 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11327033 colspan=3 style='height:18.95pt'>5. Calculate
  tax credits and advance payments</td>
  <td class=xl11427033></td>
  <td class=xl6553527033></td>
  <td class=xl11827033>&nbsp;</td>
  <td class=xl11827033 style='border-left:none'>&nbsp;</td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11927033 colspan=3 style='height:18.95pt'><span
  style='mso-spacerun:yes'> </span>1) Credits against purchases subject to tax</td>
  <td class=xl11427033></td>
  <td class=xl6553527033></td>
  <td class=xl12427033><span style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl12427033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11327033 colspan=2 style='height:18.95pt'>6. Calculate
  Taxes Due</td>
  <td class=xl6553527033></td>
  <td class=xl11427033></td>
  <td class=xl6553527033></td>
  <td class=xl12527033>&nbsp;</td>
  <td class=xl12527033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                   </span>9,941.22 </td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11327033 colspan=3 style='height:18.95pt'>7.1. Vendor
  Collection Credit (if applicable)</td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl12427033>&nbsp;</td>
  <td class=xl12427033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11327033 colspan=3 style='height:18.95pt'>7.2. Pay
  penalty and interest if filing late</td>
  <td class=xl11427033 colspan=2>Typically not applicable<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl11727033>&nbsp;</td>
  <td class=xl12527033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                                </span>-<span
  style='mso-spacerun:yes'>   </span></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl11327033 colspan=2 style='height:18.95pt'>8. Calculate
  total tax amount due</td>
  <td class=xl12327033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl11727033>&nbsp;</td>
  <td class=xl11727033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                   </span>9,941.22 </td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.95pt'>
  <td height=25 class=xl12627033 colspan=2 style='height:18.95pt'>9. Complete!
  Final Tax Due</td>
  <td class=xl12827033>&nbsp;</td>
  <td class=xl12927033>&nbsp;</td>
  <td class=xl13027033>&nbsp;</td>
  <td class=xl13127033 style='border-left:none'>&nbsp;</td>
  <td class=xl13227033 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>$<span
  style='mso-spacerun:yes'>                   </span>9,941.22 </td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl6553527033 style='height:15.0pt'></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl7327033></td>
  <td class=xl6553527033></td>
  <td class=xl13327033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl6553527033 style='height:15.0pt'></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
  <td class=xl6553527033></td>
 </tr>
 <tr height=66 style='mso-height-source:userset;height:49.5pt'>
  <td colspan=7 height=66 class=xl13727033 width=919 style='height:49.5pt;
  width:690pt'>Please Note: While the data included in this worksheet has been
  analyzed to ensure its accuracy, CPL Group USA is not an accounting
  firm.<span style='mso-spacerun:yes'>  </span>Sales &amp; Use Tax calculations
  are provided as a way to assist our clients with the task of filing their
  monthly/quarterly tax returns.<span style='mso-spacerun:yes'> 
  </span>However, tax calculations and applicable local tariffs should be
  verified by your accountant or a licensed CPA.</td>
  <td class=xl6553527033></td>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=63 style='width:47pt'></td>
  <td width=161 style='width:121pt'></td>
  <td width=195 style='width:146pt'></td>
  <td width=125 style='width:94pt'></td>
  <td width=125 style='width:94pt'></td>
  <td width=125 style='width:94pt'></td>
  <td width=125 style='width:94pt'></td>
  <td width=62 style='width:47pt'></td>
 </tr>
 <![endif]>
</table>

</div>
        <p>
            <input type="button" onclick="javascript:exportarExcel('tabla');" value="Vamos al excel!">
        </p>

<!----------------------------->
<!--END OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD-->
<!----------------------------->
</body>

</html>
