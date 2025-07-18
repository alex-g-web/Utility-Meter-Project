<%
Response.ContentType = "application/vnd.ms-excel"
%>

<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 15">
<link rel=File-List
href="111%20TSP%20Load%20Reservation%20Watts-Sqft%20%20Incidental%20Demand%20Tracking%202019-10_files/filelist.xml">
<style
 id="111 TSP Load Reservation Watts-Sqft  Incidental Demand Tracking 2019-10_6787_Styles">
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
.xl676787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl686787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl696787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl706787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl716787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl726787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0_\)\;\[Red\]\\\(0\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl736787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl746787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl756787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl766787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl776787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl786787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl796787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl806787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl816787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl826787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl836787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl846787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl856787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl866787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl876787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl886787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl896787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl906787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl916787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl926787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl936787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl946787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl956787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl966787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl976787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0_\)\;\[Red\]\\\(0\\\)";
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl986787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0_\)\;\[Red\]\\\(0\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl996787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0_\)\;\[Red\]\\\(0\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1006787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0_\)\;\[Red\]\\\(0\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1016787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1026787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1036787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1046787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1056787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1066787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"\#\#\#0\.00\;\#\#\#0\.00";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1076787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1086787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1096787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0_\)\;\[Red\]\\\(0\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1106787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:normal;}
.xl1116787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1126787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1136787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1146787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1156787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1166787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1176787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1186787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1196787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1206787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1216787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1226787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1236787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:general;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1246787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(* \#\,\#\#0_\)\;_\(* \\\(\#\,\#\#0\\\)\;_\(* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1256787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1266787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1276787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1286787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1296787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1306787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(* \#\,\#\#0_\)\;_\(* \\\(\#\,\#\#0\\\)\;_\(* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1316787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1326787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1336787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1346787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	background:#BFBFBF;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1356787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(* \#\,\#\#0_\)\;_\(* \\\(\#\,\#\#0\\\)\;_\(* \0022-\0022??_\)\;_\(\@_\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#BFBFBF;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1366787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#BFBFBF;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1376787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#BFBFBF;
	mso-pattern:black none;
	white-space:normal;}
.xl1386787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1396787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1406787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1416787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1426787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1436787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1446787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:Fixed;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1456787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1466787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:Fixed;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1476787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1486787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1496787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1506787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:Fixed;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1516787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:Fixed;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1526787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:Fixed;
	text-align:general;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:2.0pt double windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1536787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1546787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1556787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1566787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:general;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1576787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:general;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1586787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:general;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1596787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1606787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1616787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	background:#BFBFBF;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1626787
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
.xl1636787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	background:#66FF33;
	mso-pattern:black none;
	white-space:normal;}
.xl1646787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1656787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1666787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	background:red;
	mso-pattern:black none;
	white-space:normal;}
.xl1676787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	background:red;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1686787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	background:yellow;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1696787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1706787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1716787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1726787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1736787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1746787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1756787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1766787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1776787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"0\.00_\)\;\[Red\]\\\(0\.00\\\)";
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1786787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1796787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1806787
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	background:#A6A6A6;
	mso-pattern:black none;
	white-space:nowrap;}
-->
</style>
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

<div
id="111 TSP Load Reservation Watts-Sqft  Incidental Demand Tracking 2019-10_6787"
align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=1279 class=xl916787
 style='border-collapse:collapse;table-layout:fixed;width:965pt'>
 <col class=xl916787 width=163 style='mso-width-source:userset;mso-width-alt:
 5961;width:122pt'>
 <col class=xl986787 width=64 style='mso-width-source:userset;mso-width-alt:
 2340;width:48pt'>
 <col class=xl916787 width=96 style='mso-width-source:userset;mso-width-alt:
 3510;width:72pt'>
 <col class=xl896787 width=67 style='mso-width-source:userset;mso-width-alt:
 2450;width:50pt'>
 <col class=xl916787 width=82 style='mso-width-source:userset;mso-width-alt:
 2998;width:62pt'>
 <col class=xl916787 width=62 span=12 style='width:47pt'>
 <col class=xl916787 width=63 style='mso-width-source:userset;mso-width-alt:
 2304;width:47pt'>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl916787 width=163 style='height:15.0pt;width:122pt'><a
  name="RANGE!A1:Q807"></a></td>
  <td class=xl986787 width=64 style='width:48pt'></td>
  <td class=xl1546787 width=96 style='width:72pt'>&nbsp;</td>
  <td class=xl1386787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl956787 width=764 style='width:579pt'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl856787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787 width=63 style='width:47pt'></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl916787 style='height:15.0pt'></td>
  <td class=xl986787></td>
  <td class=xl886787 style='border-top:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Jan</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Feb</td>
  <td class=xl886787 style='border-top:none;border-left:none'>March</td>
  <td class=xl886787 style='border-top:none;border-left:none'>April</td>
  <td class=xl886787 style='border-top:none;border-left:none'>May</td>
  <td class=xl886787 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-top:none;border-left:none'>July</td>
  <td class=xl886787 style='border-top:none;border-left:none'>August</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Sept</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Oct</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Nov</td>
  <td class=xl956787 style='border-top:none;border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1086787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl886787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl1546787>&nbsp;</td>
  <td class=xl1386787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl956787>2019 Coincidental Demand KW by Month</td>
  <td class=xl856787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=30 style='mso-height-source:userset;height:22.5pt'>
  <td height=30 class=xl1666787 width=163 style='height:22.5pt;border-top:none;
  width:122pt'>Antenna Software<br>
    IT Cosmetics S/L</td>
  <td class=xl976787 style='border-top:none;border-left:none'>520 </td>
  <td class=xl886787 style='border-top:none;border-left:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Jan</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Feb</td>
  <td class=xl886787 style='border-top:none;border-left:none'>March</td>
  <td class=xl886787 style='border-top:none;border-left:none'>April</td>
  <td class=xl886787 style='border-top:none;border-left:none'>May</td>
  <td class=xl886787 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-top:none;border-left:none'>July</td>
  <td class=xl886787 style='border-top:none;border-left:none'>August</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Sept</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Oct</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Nov</td>
  <td class=xl956787 style='border-top:none;border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E5A</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>6.41</td>
  <td class=xl1446787>6.02</td>
  <td class=xl1446787>9.09</td>
  <td class=xl1446787>7.37</td>
  <td class=xl1446787>7.00</td>
  <td class=xl1446787>8.29</td>
  <td class=xl1446787>8.05</td>
  <td class=xl1446787>0.84</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1236787 colspan=2 style='height:18.0pt'>Need to
  determine meter type</td>
  <td class=xl916787>TCT-E5B</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1236787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E5C</td>
  <td class=xl896787 width=67 style='width:50pt'>Not in Use</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1236787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E5D-1</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>1.18</td>
  <td class=xl1446787>1.41</td>
  <td class=xl1446787>1.13</td>
  <td class=xl1446787>1.06</td>
  <td class=xl1446787>1.30</td>
  <td class=xl1446787>1.02</td>
  <td class=xl1446787>1.21</td>
  <td class=xl1446787>1.21</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.76</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1236787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E5D-2</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>4.30</td>
  <td class=xl1446787>4.82</td>
  <td class=xl1446787>4.89</td>
  <td class=xl1446787>4.85</td>
  <td class=xl1446787>4.67</td>
  <td class=xl1446787>5.10</td>
  <td class=xl1446787>4.75</td>
  <td class=xl1446787>4.39</td>
  <td class=xl1446787>5.52</td>
  <td class=xl1446787>3.44</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1236787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E5D-3</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>5.92</td>
  <td class=xl1446787>4.79</td>
  <td class=xl1446787>4.96</td>
  <td class=xl1446787>7.73</td>
  <td class=xl1446787>4.28</td>
  <td class=xl1446787>5.90</td>
  <td class=xl1446787>4.11</td>
  <td class=xl1446787>2.58</td>
  <td class=xl1446787>1.53</td>
  <td class=xl1446787>0.53</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E5E</td>
  <td class=xl896787 width=67 style='width:50pt'>Not in Use</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>only 3 Circuits in Panel</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W5A-1</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W5A-2</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>8.95</td>
  <td class=xl1446787>8.50</td>
  <td class=xl1446787>7.21</td>
  <td class=xl1446787>9.53</td>
  <td class=xl1446787>9.17</td>
  <td class=xl1446787>7.49</td>
  <td class=xl1446787>6.88</td>
  <td class=xl1446787>5.49</td>
  <td class=xl1446787>1.11</td>
  <td class=xl1446787>0.95</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W5E</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>1.64</td>
  <td class=xl1446787>1.40</td>
  <td class=xl1446787>1.39</td>
  <td class=xl1446787>1.36</td>
  <td class=xl1446787>1.36</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>1.41</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W5F</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>5.61</td>
  <td class=xl1446787>6.25</td>
  <td class=xl1446787>6.19</td>
  <td class=xl1446787>5.97</td>
  <td class=xl1446787>6.16</td>
  <td class=xl1446787>6.16</td>
  <td class=xl1446787>6.13</td>
  <td class=xl1446787>6.00</td>
  <td class=xl1446787>6.19</td>
  <td class=xl1446787>6.16</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl926787 width=67 style='width:50pt'></td>
  <td class=xl936787>34.02 </td>
  <td class=xl936787>33.19 </td>
  <td class=xl936787>34.86 </td>
  <td class=xl936787>37.88 </td>
  <td class=xl936787>33.95 </td>
  <td class=xl936787>33.98 </td>
  <td class=xl936787>32.54 </td>
  <td class=xl936787>20.52 </td>
  <td class=xl936787>14.41 </td>
  <td class=xl936787>11.87 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>30 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>50 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>15.98 </td>
  <td class=xl746787>16.81 </td>
  <td class=xl746787>15.14 </td>
  <td class=xl746787>12.12 </td>
  <td class=xl746787>16.05 </td>
  <td class=xl746787>16.02 </td>
  <td class=xl746787>17.46 </td>
  <td class=xl746787>29.48 </td>
  <td class=xl746787>35.59 </td>
  <td class=xl746787>38.13 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>80 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>       </span>22,040 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.54 </td>
  <td class=xl1536787>1.51 </td>
  <td class=xl1536787>1.58 </td>
  <td class=xl1536787>1.72 </td>
  <td class=xl1536787>1.54 </td>
  <td class=xl1536787>1.54 </td>
  <td class=xl1536787>1.48 </td>
  <td class=xl1536787>0.93 </td>
  <td class=xl1536787>0.65 </td>
  <td class=xl1536787>0.54 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.46 </td>
  <td class=xl1316787>4.49 </td>
  <td class=xl1316787>4.42 </td>
  <td class=xl1316787>4.28 </td>
  <td class=xl1316787>4.46 </td>
  <td class=xl1316787>4.46 </td>
  <td class=xl1316787>4.52 </td>
  <td class=xl1316787>5.07 </td>
  <td class=xl1316787>5.35 </td>
  <td class=xl1316787>5.46 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1566787 style='height:15.0pt;border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1576787 style='border-top:none'>&nbsp;</td>
  <td class=xl1586787 style='border-top:none'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1126787 style='height:15.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl856787 style='border-left:none'>&nbsp;</td>
  <td class=xl866787 width=67 style='border-left:none;width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl956787 style='border-right:.5pt solid black;
  border-left:none'>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787 style='border-left:none'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1126787 style='height:15.0pt;border-top:none'>BICS</td>
  <td class=xl976787 style='border-top:none;border-left:none'>605 </td>
  <td class=xl886787 style='border-top:none;border-left:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Jan</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Feb</td>
  <td class=xl886787 style='border-top:none;border-left:none'>March</td>
  <td class=xl886787 style='border-top:none;border-left:none'>April</td>
  <td class=xl886787 style='border-top:none;border-left:none'>May</td>
  <td class=xl886787 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-top:none;border-left:none'>July</td>
  <td class=xl886787 style='border-top:none;border-left:none'>August</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Sept</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Oct</td>
  <td class=xl886787 style='border-top:none;border-left:none'>Nov</td>
  <td class=xl956787 style='border-top:none;border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E6C-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>24.86</td>
  <td class=xl1446787>14.66</td>
  <td class=xl1446787>14.75</td>
  <td class=xl1446787>19.47</td>
  <td class=xl1446787>14.71</td>
  <td class=xl1446787>9.92</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>8.76</td>
  <td class=xl1446787>11.70</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E6C-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>1.69</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E6D-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.08</td>
  <td class=xl1446787>0.03</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.11</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E6D-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E6E-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.25</td>
  <td class=xl1446787>2.42</td>
  <td class=xl1446787>4.12</td>
  <td class=xl1446787>1.95</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>4.94</td>
  <td class=xl1446787>4.18</td>
  <td class=xl1446787>3.38</td>
  <td class=xl1446787>3.78</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E6F-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.14</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.11</td>
  <td class=xl1446787>0.11</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.04</td>
  <td class=xl1446787>0.87</td>
  <td class=xl1446787>0.86</td>
  <td class=xl1446787>0.90</td>
  <td class=xl1446787>0.12</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E6F-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.04</td>
  <td class=xl1446787>0.04</td>
  <td class=xl1446787>0.12</td>
  <td class=xl1446787>0.03</td>
  <td class=xl1446787>0.03</td>
  <td class=xl1446787>0.12</td>
  <td class=xl1446787>0.57</td>
  <td class=xl1446787>0.39</td>
  <td class=xl1446787>0.34</td>
  <td class=xl1446787>0.62</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E6F-3</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787>0.09</td>
  <td class=xl1446787>0.20</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E6G-1</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>1.53</td>
  <td class=xl1446787>1.74</td>
  <td class=xl1446787>2.06</td>
  <td class=xl1446787>2.00</td>
  <td class=xl1446787>2.39</td>
  <td class=xl1446787>2.75</td>
  <td class=xl1446787>1.56</td>
  <td class=xl1446787>1.64</td>
  <td class=xl1446787>1.62</td>
  <td class=xl1446787>1.76</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E6G-2</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>0.12</td>
  <td class=xl1446787>0.12</td>
  <td class=xl1446787>0.12</td>
  <td class=xl1446787>0.12</td>
  <td class=xl1446787>0.13</td>
  <td class=xl1446787>0.13</td>
  <td class=xl1446787>0.12</td>
  <td class=xl1446787>0.14</td>
  <td class=xl1446787>0.14</td>
  <td class=xl1446787>0.15</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E7B-1</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>0.29</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.18</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.16</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl916787></td>
  <td class=xl1416787>&nbsp;</td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>28.96 </td>
  <td class=xl1456787>19.22 </td>
  <td class=xl1456787>21.49 </td>
  <td class=xl1456787>23.90 </td>
  <td class=xl1456787>17.50 </td>
  <td class=xl1456787>13.19 </td>
  <td class=xl1456787>8.38 </td>
  <td class=xl1456787>7.46 </td>
  <td class=xl1456787>15.41 </td>
  <td class=xl1456787>18.62 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>5 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>3.06 </td>
  <td class=xl746787>2.97 </td>
  <td class=xl746787>2.65 </td>
  <td class=xl746787>2.71 </td>
  <td class=xl746787>2.31 </td>
  <td class=xl746787>1.95 </td>
  <td class=xl746787>3.14 </td>
  <td class=xl746787>3.05 </td>
  <td class=xl746787>3.07 </td>
  <td class=xl746787>2.92 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>5 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>3.06 </td>
  <td class=xl1536787>2.97 </td>
  <td class=xl1536787>2.65 </td>
  <td class=xl1536787>2.71 </td>
  <td class=xl1536787>2.31 </td>
  <td class=xl1536787>1.95 </td>
  <td class=xl1536787>3.14 </td>
  <td class=xl1536787>3.05 </td>
  <td class=xl1536787>3.07 </td>
  <td class=xl1536787>2.92 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1166787 style='height:15.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>5,900 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>4.91 </td>
  <td class=xl1536787>3.26 </td>
  <td class=xl1536787>3.64 </td>
  <td class=xl1536787>4.05 </td>
  <td class=xl1536787>2.97 </td>
  <td class=xl1536787>2.24 </td>
  <td class=xl1536787>1.42 </td>
  <td class=xl1536787>1.27 </td>
  <td class=xl1536787>2.61 </td>
  <td class=xl1536787>3.16 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>1.09 </td>
  <td class=xl1316787>2.74 </td>
  <td class=xl1316787>2.36 </td>
  <td class=xl1316787>1.95 </td>
  <td class=xl1316787>3.03 </td>
  <td class=xl1316787>3.76 </td>
  <td class=xl1316787>4.58 </td>
  <td class=xl1316787>4.73 </td>
  <td class=xl1316787>3.39 </td>
  <td class=xl1316787>2.84 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1086787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1186787 style='height:18.0pt'>(Landlord)</td>
  <td class=xl1016787 style='border-left:none'>Suite</td>
  <td class=xl1256787 style='border-left:none'>&nbsp;</td>
  <td class=xl766787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1196787 width=163 style='height:18.0pt;border-top:none;
  width:122pt'>Base Building</td>
  <td class=xl1016787 style='border-top:none;border-left:none'>Variable</td>
  <td class=xl1036787 style='border-top:none'>Meter #</td>
  <td class=xl1026787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl1016787 style='border-left:none'>Jan</td>
  <td class=xl1016787 style='border-left:none'>Feb</td>
  <td class=xl1016787 style='border-left:none'>March</td>
  <td class=xl1016787 style='border-left:none'>April</td>
  <td class=xl1016787 style='border-left:none'>May</td>
  <td class=xl1016787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl1016787 style='border-left:none'>July</td>
  <td class=xl1016787 style='border-left:none'>August</td>
  <td class=xl1016787 style='border-left:none'>Sept</td>
  <td class=xl1016787 style='border-left:none'>Oct</td>
  <td class=xl1016787 style='border-left:none'>Nov</td>
  <td class=xl1046787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E2A-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>13.92</td>
  <td class=xl1446787>13.40</td>
  <td class=xl1446787>14.01</td>
  <td class=xl1446787>13.90</td>
  <td class=xl1446787>13.18</td>
  <td class=xl1446787>13.70</td>
  <td class=xl1446787>13.15</td>
  <td class=xl1446787>12.92</td>
  <td class=xl1446787>11.76</td>
  <td class=xl1446787>12.57</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E2A-2</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>3.74</td>
  <td class=xl1446787>3.23</td>
  <td class=xl1446787>3.26</td>
  <td class=xl1446787>3.21</td>
  <td class=xl1446787>2.74</td>
  <td class=xl1446787>3.64</td>
  <td class=xl1446787>3.06</td>
  <td class=xl1446787>2.96</td>
  <td class=xl1446787>3.22</td>
  <td class=xl1446787>4.10</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E2A-3</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>8.75</td>
  <td class=xl1446787>9.01</td>
  <td class=xl1446787>9.24</td>
  <td class=xl1446787>9.19</td>
  <td class=xl1446787>9.03</td>
  <td class=xl1446787>8.84</td>
  <td class=xl1446787>8.71</td>
  <td class=xl1446787>8.57</td>
  <td class=xl1446787>7.23</td>
  <td class=xl1446787>7.14</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E7F-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>23.22</td>
  <td class=xl1446787>18.82</td>
  <td class=xl1446787>16.80</td>
  <td class=xl1446787>22.45</td>
  <td class=xl1446787>23.36</td>
  <td class=xl1446787>28.37</td>
  <td class=xl1446787>44.70</td>
  <td class=xl1446787>39.66</td>
  <td class=xl1446787>37.19</td>
  <td class=xl1446787>37.37</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E10H</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>33.26</td>
  <td class=xl1446787>32.81</td>
  <td class=xl1446787>30.31</td>
  <td class=xl1446787>15.99</td>
  <td class=xl1446787>37.69</td>
  <td class=xl1446787>36.36</td>
  <td class=xl1446787>24.09</td>
  <td class=xl1446787>41.88</td>
  <td class=xl1446787>48.38</td>
  <td class=xl1446787>60.94</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E4D</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>142.00</td>
  <td class=xl1446787>135.85</td>
  <td class=xl1446787>134.50</td>
  <td class=xl1446787>118.97</td>
  <td class=xl1446787>88.00</td>
  <td class=xl1446787>84.69</td>
  <td class=xl1446787>109.50</td>
  <td class=xl1446787>119.00</td>
  <td class=xl1446787>114.87</td>
  <td class=xl1446787>119.87</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1656787 style='height:18.0pt'>offline</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W1A</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1486787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W2B</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>135.88</td>
  <td class=xl1446787>136.50</td>
  <td class=xl1446787>63.70</td>
  <td class=xl1446787>148.34</td>
  <td class=xl1446787>62.50</td>
  <td class=xl1446787>177.80</td>
  <td class=xl1446787>211.25</td>
  <td class=xl1446787>200.25</td>
  <td class=xl1446787>225.25</td>
  <td class=xl1446787>62.70</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1656787 style='height:18.0pt'>offline</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W2C</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1486787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787>36.40</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W4D</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>52.75</td>
  <td class=xl1446787>46.75</td>
  <td class=xl1446787>55.00</td>
  <td class=xl1446787>58.75</td>
  <td class=xl1446787>36.25</td>
  <td class=xl1446787>40.00</td>
  <td class=xl1446787>51.50</td>
  <td class=xl1446787>56.75</td>
  <td class=xl1446787>45.25</td>
  <td class=xl1446787>52.58</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W7E-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>55.97</td>
  <td class=xl1446787>49.88</td>
  <td class=xl1446787>57.43</td>
  <td class=xl1446787>49.80</td>
  <td class=xl1446787>37.15</td>
  <td class=xl1446787>35.07</td>
  <td class=xl1446787>48.72</td>
  <td class=xl1446787>59.91</td>
  <td class=xl1446787>52.19</td>
  <td class=xl1446787>42.27</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W10E</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>23.53</td>
  <td class=xl1446787>23.06</td>
  <td class=xl1446787>19.63</td>
  <td class=xl1446787>13.97</td>
  <td class=xl1446787>9.09</td>
  <td class=xl1446787>23.00</td>
  <td class=xl1446787>50.90</td>
  <td class=xl1446787>36.94</td>
  <td class=xl1446787>34.50</td>
  <td class=xl1446787>48.66</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W14D</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>141.50</td>
  <td class=xl1446787>127.86</td>
  <td class=xl1446787>132.75</td>
  <td class=xl1446787>102.86</td>
  <td class=xl1446787>100.00</td>
  <td class=xl1446787>79.50</td>
  <td class=xl1446787>111.13</td>
  <td class=xl1446787>108.38</td>
  <td class=xl1446787>105.52</td>
  <td class=xl1446787>111.12</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E1A1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>125.48</td>
  <td class=xl1446787>123.96</td>
  <td class=xl1446787>127.54</td>
  <td class=xl1446787>103.99</td>
  <td class=xl1446787>59.26</td>
  <td class=xl1446787>59.04</td>
  <td class=xl1446787>67.06</td>
  <td class=xl1446787>73.86</td>
  <td class=xl1446787>70.27</td>
  <td class=xl1446787>99.09</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E1A2</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>50.97</td>
  <td class=xl1446787>57.27</td>
  <td class=xl1446787>48.96</td>
  <td class=xl1446787>56.55</td>
  <td class=xl1446787>50.80</td>
  <td class=xl1446787>56.69</td>
  <td class=xl1446787>50.81</td>
  <td class=xl1446787>52.99</td>
  <td class=xl1446787>46.90</td>
  <td class=xl1446787>57.55</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E1A3</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>21.85</td>
  <td class=xl1446787>21.39</td>
  <td class=xl1446787>21.45</td>
  <td class=xl1446787>21.93</td>
  <td class=xl1446787>42.96</td>
  <td class=xl1446787>46.78</td>
  <td class=xl1446787>46.70</td>
  <td class=xl1446787>45.04</td>
  <td class=xl1446787>46.58</td>
  <td class=xl1446787>32.79</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E1B1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>152.88</td>
  <td class=xl1446787>163.41</td>
  <td class=xl1446787>147.42</td>
  <td class=xl1446787>149.92</td>
  <td class=xl1446787>149.47</td>
  <td class=xl1446787>154.74</td>
  <td class=xl1446787>156.57</td>
  <td class=xl1446787>150.24</td>
  <td class=xl1446787>137.82</td>
  <td class=xl1446787>149.92</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E1B2</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>535.89</td>
  <td class=xl1446787>505.49</td>
  <td class=xl1446787>453.38</td>
  <td class=xl1446787>426.28</td>
  <td class=xl1446787>340.08</td>
  <td class=xl1446787>351.89</td>
  <td class=xl1446787>385.28</td>
  <td class=xl1446787>392.80</td>
  <td class=xl1446787>420.78</td>
  <td class=xl1446787>478.35</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E2B</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>133.85</td>
  <td class=xl1446787>134.00</td>
  <td class=xl1446787>148.00</td>
  <td class=xl1446787>64.00</td>
  <td class=xl1446787>166.00</td>
  <td class=xl1446787>146.00</td>
  <td class=xl1446787>134.00</td>
  <td class=xl1446787>119.73</td>
  <td class=xl1446787>62.07</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E2C</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>31.50</td>
  <td class=xl1446787>25.50</td>
  <td class=xl1446787>28.00</td>
  <td class=xl1446787>25.00</td>
  <td class=xl1446787>67.00</td>
  <td class=xl1446787>65.50</td>
  <td class=xl1446787>84.00</td>
  <td class=xl1446787>73.84</td>
  <td class=xl1446787>62.00</td>
  <td class=xl1446787>44.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W15C-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>17.78</td>
  <td class=xl1446787>15.84</td>
  <td class=xl1446787>16.24</td>
  <td class=xl1446787>16.01</td>
  <td class=xl1446787>15.33</td>
  <td class=xl1446787>15.07</td>
  <td class=xl1446787>15.27</td>
  <td class=xl1446787>14.99</td>
  <td class=xl1446787>14.95</td>
  <td class=xl1446787>16.97</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W2A-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.13</td>
  <td class=xl1446787>0.19</td>
  <td class=xl1446787>0.12</td>
  <td class=xl1446787>0.33</td>
  <td class=xl1446787>0.10</td>
  <td class=xl1446787>0.12</td>
  <td class=xl1446787>0.20</td>
  <td class=xl1446787>0.23</td>
  <td class=xl1446787>0.15</td>
  <td class=xl1446787>0.11</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W2A-2</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.33</td>
  <td class=xl1446787>0.30</td>
  <td class=xl1446787>0.48</td>
  <td class=xl1446787>0.36</td>
  <td class=xl1446787>0.47</td>
  <td class=xl1446787>0.49</td>
  <td class=xl1446787>0.55</td>
  <td class=xl1446787>0.52</td>
  <td class=xl1446787>0.47</td>
  <td class=xl1446787>0.44</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W2A-3</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl776787>&nbsp;</td>
  <td class=xl816787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl776787>&nbsp;</td>
  <td class=xl776787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>1705.19 </td>
  <td class=xl1456787>1644.52 </td>
  <td class=xl1456787>1528.23 </td>
  <td class=xl1456787>1421.80 </td>
  <td class=xl1456787>1310.48 </td>
  <td class=xl1456787>1427.29 </td>
  <td class=xl1456787>1617.16 </td>
  <td class=xl1456787>1611.47 </td>
  <td class=xl1456787>1547.34 </td>
  <td class=xl1456787>1474.94 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>              
  </span>-<span style='mso-spacerun:yes'>   </span></td>
  <td class=xl1536787>RSF</td>
  <td class=xl696787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1716787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-top:none;border-left:none'>Suite</td>
  <td class=xl876787 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl786787 width=67 style='border-top:none;width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787 style='border-top:none'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>CH Powell</td>
  <td class=xl976787 style='border-top:none;border-left:none'>610 </td>
  <td class=xl886787 style='border-top:none;border-left:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E6A-1</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>1.08</td>
  <td class=xl1446787>2.38</td>
  <td class=xl1446787>2.97</td>
  <td class=xl1446787>1.52</td>
  <td class=xl1446787>1.58</td>
  <td class=xl1446787>1.85</td>
  <td class=xl1446787>1.77</td>
  <td class=xl1446787>1.74</td>
  <td class=xl1446787>1.90</td>
  <td class=xl1446787>1.48</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E6B-1</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>3.97</td>
  <td class=xl1446787>2.51</td>
  <td class=xl1446787>2.45</td>
  <td class=xl1446787>2.68</td>
  <td class=xl1446787>2.44</td>
  <td class=xl1446787>2.36</td>
  <td class=xl1446787>2.47</td>
  <td class=xl1446787>2.44</td>
  <td class=xl1446787>2.54</td>
  <td class=xl1446787>2.52</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>5.05 </td>
  <td class=xl1456787>4.89 </td>
  <td class=xl1456787>5.42 </td>
  <td class=xl1456787>4.20 </td>
  <td class=xl1456787>4.02 </td>
  <td class=xl1456787>4.21 </td>
  <td class=xl1456787>4.24 </td>
  <td class=xl1456787>4.19 </td>
  <td class=xl1456787>4.44 </td>
  <td class=xl1456787>4.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.08)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.38)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.97)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.52)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.58)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.85)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.77)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.74)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.90)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.48)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl806787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(3.97)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(2.51)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(2.45)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(2.68)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(2.44)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(2.36)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(2.47)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(2.44)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(2.54)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(2.52)</font></td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(5.05)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.89)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(5.42)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.20)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.02)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.21)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.24)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.19)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.44)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.00)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>1,870 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787>2.70 </td>
  <td class=xl1536787>2.61 </td>
  <td class=xl1536787>2.90 </td>
  <td class=xl1536787>2.25 </td>
  <td class=xl1536787>2.15 </td>
  <td class=xl1536787>2.25 </td>
  <td class=xl1536787>2.27 </td>
  <td class=xl1536787>2.24 </td>
  <td class=xl1536787>2.37 </td>
  <td class=xl1536787>2.14 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>3.30 </td>
  <td class=xl1316787>3.39 </td>
  <td class=xl1316787>3.10 </td>
  <td class=xl1316787>3.75 </td>
  <td class=xl1316787>3.85 </td>
  <td class=xl1316787>3.75 </td>
  <td class=xl1316787>3.73 </td>
  <td class=xl1316787>3.76 </td>
  <td class=xl1316787>3.63 </td>
  <td class=xl1316787>3.86 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1086787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Cologuard</td>
  <td class=xl976787 style='border-top:none;border-left:none'>705 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7C-1</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>16.00</td>
  <td class=xl1446787>16.00</td>
  <td class=xl1446787>16.53</td>
  <td class=xl1446787>15.18</td>
  <td class=xl1446787>14.72</td>
  <td class=xl1446787>15.60</td>
  <td class=xl1446787>15.50</td>
  <td class=xl1446787>15.47</td>
  <td class=xl1446787>15.75</td>
  <td class=xl1446787>15.99</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7C-2</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>27.76</td>
  <td class=xl1446787>14.54</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7C-3</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>36.20</td>
  <td class=xl1446787>36.39</td>
  <td class=xl1446787>36.65</td>
  <td class=xl1446787>26.37</td>
  <td class=xl1446787>23.20</td>
  <td class=xl1446787>26.57</td>
  <td class=xl1446787>25.71</td>
  <td class=xl1446787>25.36</td>
  <td class=xl1446787>25.70</td>
  <td class=xl1446787>18.28</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7C-4</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>2.29</td>
  <td class=xl1446787>2.30</td>
  <td class=xl1446787>2.32</td>
  <td class=xl1446787>2.19</td>
  <td class=xl1446787>3.65</td>
  <td class=xl1446787>3.02</td>
  <td class=xl1446787>1.68</td>
  <td class=xl1446787>3.51</td>
  <td class=xl1446787>3.45</td>
  <td class=xl1446787>3.42</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7D-1</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>67.99</td>
  <td class=xl1446787>25.04</td>
  <td class=xl1446787>26.96</td>
  <td class=xl1446787>28.45</td>
  <td class=xl1446787>29.62</td>
  <td class=xl1446787>30.75</td>
  <td class=xl1446787>34.02</td>
  <td class=xl1446787>34.02</td>
  <td class=xl1446787>35.28</td>
  <td class=xl1446787>37.44</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7D-2</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>43.32</td>
  <td class=xl1446787>4.52</td>
  <td class=xl1446787>4.51</td>
  <td class=xl1446787>4.59</td>
  <td class=xl1446787>10.14</td>
  <td class=xl1446787>9.61</td>
  <td class=xl1446787>9.70</td>
  <td class=xl1446787>9.67</td>
  <td class=xl1446787>10.09</td>
  <td class=xl1446787>9.75</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7D-3</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>0.64</td>
  <td class=xl1446787>0.90</td>
  <td class=xl1446787>0.74</td>
  <td class=xl1446787>0.66</td>
  <td class=xl1446787>0.89</td>
  <td class=xl1446787>0.78</td>
  <td class=xl1446787>0.73</td>
  <td class=xl1446787>0.65</td>
  <td class=xl1446787>0.82</td>
  <td class=xl1446787>0.79</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>194.21 </td>
  <td class=xl1456787>99.69 </td>
  <td class=xl1456787>87.70 </td>
  <td class=xl1456787>77.44 </td>
  <td class=xl1456787>82.22 </td>
  <td class=xl1456787>86.33 </td>
  <td class=xl1456787>87.34 </td>
  <td class=xl1456787>88.67 </td>
  <td class=xl1456787>91.10 </td>
  <td class=xl1456787>85.67 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>400 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>363.80 </td>
  <td class=xl1536787>363.61 </td>
  <td class=xl1536787>363.35 </td>
  <td class=xl1536787>373.63 </td>
  <td class=xl1536787>376.80 </td>
  <td class=xl1536787>373.43 </td>
  <td class=xl1536787>374.29 </td>
  <td class=xl1536787>374.64 </td>
  <td class=xl1536787>374.30 </td>
  <td class=xl1536787>381.72 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>500 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl806787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>497.71 </td>
  <td class=xl746787>497.70 </td>
  <td class=xl746787>497.68 </td>
  <td class=xl746787>497.81 </td>
  <td class=xl746787>496.35 </td>
  <td class=xl746787>496.98 </td>
  <td class=xl746787>498.32 </td>
  <td class=xl746787>496.49 </td>
  <td class=xl746787>496.55 </td>
  <td class=xl746787>496.58 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>900 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'></td>
  <td class=xl1536787>861.50 </td>
  <td class=xl1536787>861.31 </td>
  <td class=xl1536787>861.03 </td>
  <td class=xl1536787>871.44 </td>
  <td class=xl1536787>873.14 </td>
  <td class=xl1536787>870.40 </td>
  <td class=xl1536787>872.60 </td>
  <td class=xl1536787>871.13 </td>
  <td class=xl1536787>870.84 </td>
  <td class=xl1536787>878.30 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>120 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>9,842 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787>19.73 </td>
  <td class=xl1536787>10.13 </td>
  <td class=xl1536787>8.91 </td>
  <td class=xl1536787>7.87 </td>
  <td class=xl1536787>8.35 </td>
  <td class=xl1536787>8.77 </td>
  <td class=xl1536787>8.87 </td>
  <td class=xl1536787>9.01 </td>
  <td class=xl1536787>9.26 </td>
  <td class=xl1536787>8.70 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(13.73)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(4.13)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(2.91)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(1.87)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(2.35)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(2.77)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(2.87)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(3.01)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(3.26)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(2.70)</font></td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1716787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-top:none;border-left:none'>Suite</td>
  <td class=xl876787 style='border-top:none;border-left:none'>&nbsp;</td>
  <td class=xl786787 width=67 style='border-top:none;width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787 style='border-top:none'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Constellation
  Brands</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1507 </td>
  <td class=xl966787 style='border-top:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W15D-2</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>0.82</td>
  <td class=xl1446787>1.19</td>
  <td class=xl1446787>1.22</td>
  <td class=xl1446787>1.60</td>
  <td class=xl1446787>0.89</td>
  <td class=xl1446787>0.98</td>
  <td class=xl1446787>1.04</td>
  <td class=xl1446787>1.10</td>
  <td class=xl1446787>1.20</td>
  <td class=xl1446787>0.75</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1396787 style='border-top:none'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W15E</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>1.79</td>
  <td class=xl1446787>1.79</td>
  <td class=xl1446787>1.44</td>
  <td class=xl1446787>1.37</td>
  <td class=xl1446787>1.64</td>
  <td class=xl1446787>1.63</td>
  <td class=xl1446787>1.47</td>
  <td class=xl1446787>1.25</td>
  <td class=xl1446787>1.23</td>
  <td class=xl1446787>1.23</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>2.61 </td>
  <td class=xl1456787>2.98 </td>
  <td class=xl1456787>2.66 </td>
  <td class=xl1456787>2.97 </td>
  <td class=xl1456787>2.53 </td>
  <td class=xl1456787>2.61 </td>
  <td class=xl1456787>2.51 </td>
  <td class=xl1456787>2.35 </td>
  <td class=xl1456787>2.43 </td>
  <td class=xl1456787>1.98 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl806787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>2,822 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.92 </td>
  <td class=xl1536787>1.06 </td>
  <td class=xl1536787>0.94 </td>
  <td class=xl1536787>1.05 </td>
  <td class=xl1536787>0.90 </td>
  <td class=xl1536787>0.92 </td>
  <td class=xl1536787>0.89 </td>
  <td class=xl1536787>0.83 </td>
  <td class=xl1536787>0.86 </td>
  <td class=xl1536787>0.70 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>5.08 </td>
  <td class=xl1316787>4.94 </td>
  <td class=xl1316787>5.06 </td>
  <td class=xl1316787>4.95 </td>
  <td class=xl1316787>5.10 </td>
  <td class=xl1316787>5.08 </td>
  <td class=xl1316787>5.11 </td>
  <td class=xl1316787>5.17 </td>
  <td class=xl1316787>5.14 </td>
  <td class=xl1316787>5.30 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl876787 style='border-left:none'>&nbsp;</td>
  <td class=xl786787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>EIMC</td>
  <td class=xl976787 style='border-top:none;border-left:none'>710 </td>
  <td class=xl966787 style='border-top:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E7C</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>0.82</td>
  <td class=xl1446787>1.42</td>
  <td class=xl1446787>2.30</td>
  <td class=xl1446787>2.52</td>
  <td class=xl1446787>1.86</td>
  <td class=xl1446787>0.80</td>
  <td class=xl1446787>1.40</td>
  <td class=xl1446787>1.25</td>
  <td class=xl1446787>1.22</td>
  <td class=xl1446787>0.73</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E7D</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>9.59</td>
  <td class=xl1446787>2.89</td>
  <td class=xl1446787>3.25</td>
  <td class=xl1446787>8.27</td>
  <td class=xl1446787>2.31</td>
  <td class=xl1446787>3.27</td>
  <td class=xl1446787>3.16</td>
  <td class=xl1446787>3.09</td>
  <td class=xl1446787>2.88</td>
  <td class=xl1446787>3.27</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>10.41 </td>
  <td class=xl1456787>4.31 </td>
  <td class=xl1456787>5.55 </td>
  <td class=xl1456787>10.79 </td>
  <td class=xl1456787>4.17 </td>
  <td class=xl1456787>4.07 </td>
  <td class=xl1456787>4.56 </td>
  <td class=xl1456787>4.34 </td>
  <td class=xl1456787>4.10 </td>
  <td class=xl1456787>4.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl806787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>1,830 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787>5.69 </td>
  <td class=xl1536787>2.36 </td>
  <td class=xl1536787>3.03 </td>
  <td class=xl1536787>5.90 </td>
  <td class=xl1536787>2.28 </td>
  <td class=xl1536787>2.22 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>2.37 </td>
  <td class=xl1536787>2.24 </td>
  <td class=xl1536787>2.19 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>0.31 </td>
  <td class=xl1316787>3.64 </td>
  <td class=xl1316787>2.97 </td>
  <td class=xl1316787>0.10 </td>
  <td class=xl1316787>3.72 </td>
  <td class=xl1316787>3.78 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>3.63 </td>
  <td class=xl1316787>3.76 </td>
  <td class=xl1316787>3.81 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1086787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl876787 style='border-left:none'>&nbsp;</td>
  <td class=xl786787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Financial
  Services</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1224 </td>
  <td class=xl966787 style='border-top:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E12D-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>3.36</td>
  <td class=xl1446787>3.56</td>
  <td class=xl1446787>3.21</td>
  <td class=xl1446787>3.40</td>
  <td class=xl1446787>3.04</td>
  <td class=xl1446787>3.04</td>
  <td class=xl1446787>3.50</td>
  <td class=xl1446787>3.34</td>
  <td class=xl1446787>3.51</td>
  <td class=xl1446787>3.51</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E12D-4</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>2.84</td>
  <td class=xl1446787>3.12</td>
  <td class=xl1446787>3.43</td>
  <td class=xl1446787>3.16</td>
  <td class=xl1446787>3.22</td>
  <td class=xl1446787>3.39</td>
  <td class=xl1446787>2.80</td>
  <td class=xl1446787>2.84</td>
  <td class=xl1446787>2.88</td>
  <td class=xl1446787>3.26</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>6.19 </td>
  <td class=xl1456787>6.67 </td>
  <td class=xl1456787>6.64 </td>
  <td class=xl1456787>6.57 </td>
  <td class=xl1456787>6.27 </td>
  <td class=xl1456787>6.43 </td>
  <td class=xl1456787>6.30 </td>
  <td class=xl1456787>6.18 </td>
  <td class=xl1456787>6.39 </td>
  <td class=xl1456787>6.77 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=44 style='mso-height-source:userset;height:33.0pt'>
  <td height=44 class=xl1156787 width=163 style='height:33.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl806787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>5,278 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.17 </td>
  <td class=xl1536787>1.26 </td>
  <td class=xl1536787>1.26 </td>
  <td class=xl1536787>1.24 </td>
  <td class=xl1536787>1.19 </td>
  <td class=xl1536787>1.22 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>1.17 </td>
  <td class=xl1536787>1.21 </td>
  <td class=xl1536787>1.28 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.83 </td>
  <td class=xl1316787>4.74 </td>
  <td class=xl1316787>4.74 </td>
  <td class=xl1316787>4.76 </td>
  <td class=xl1316787>4.81 </td>
  <td class=xl1316787>4.78 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>4.83 </td>
  <td class=xl1316787>4.79 </td>
  <td class=xl1316787>4.72 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1086787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl876787 style='border-left:none'>&nbsp;</td>
  <td class=xl786787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Fulcrum
  World Wide</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1212 </td>
  <td class=xl966787 style='border-top:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E12C-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.06</td>
  <td class=xl1446787>0.06</td>
  <td class=xl1446787>0.06</td>
  <td class=xl1446787>0.06</td>
  <td class=xl1446787>0.06</td>
  <td class=xl1446787>0.06</td>
  <td class=xl1446787>0.06</td>
  <td class=xl1446787>0.06</td>
  <td class=xl1446787>0.06</td>
  <td class=xl1446787>0.06</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E12D-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>1.82</td>
  <td class=xl1446787>1.82</td>
  <td class=xl1446787>1.82</td>
  <td class=xl1446787>1.83</td>
  <td class=xl1446787>1.81</td>
  <td class=xl1446787>1.82</td>
  <td class=xl1446787>1.81</td>
  <td class=xl1446787>1.81</td>
  <td class=xl1446787>1.76</td>
  <td class=xl1446787>1.74</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>1.88 </td>
  <td class=xl1456787>1.88 </td>
  <td class=xl1456787>1.87 </td>
  <td class=xl1456787>1.90 </td>
  <td class=xl1456787>1.88 </td>
  <td class=xl1456787>1.88 </td>
  <td class=xl1456787>1.87 </td>
  <td class=xl1456787>1.87 </td>
  <td class=xl1456787>1.82 </td>
  <td class=xl1456787>1.80 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl806787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>1,670 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.13 </td>
  <td class=xl1536787>1.12 </td>
  <td class=xl1536787>1.12 </td>
  <td class=xl1536787>1.14 </td>
  <td class=xl1536787>1.12 </td>
  <td class=xl1536787>1.13 </td>
  <td class=xl1536787>1.12 </td>
  <td class=xl1536787>1.12 </td>
  <td class=xl1536787>1.09 </td>
  <td class=xl1536787>1.08 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.87 </td>
  <td class=xl1316787>4.88 </td>
  <td class=xl1316787>4.88 </td>
  <td class=xl1316787>4.86 </td>
  <td class=xl1316787>4.88 </td>
  <td class=xl1316787>4.87 </td>
  <td class=xl1316787>4.88 </td>
  <td class=xl1316787>4.88 </td>
  <td class=xl1316787>4.91 </td>
  <td class=xl1316787>4.92 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1086787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Fulcrum
  World Wide</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1215 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E12D-3</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>3.40</td>
  <td class=xl1446787>5.16</td>
  <td class=xl1446787>5.56</td>
  <td class=xl1446787>5.33</td>
  <td class=xl1446787>5.49</td>
  <td class=xl1446787>5.94</td>
  <td class=xl1446787>5.66</td>
  <td class=xl1446787>6.02</td>
  <td class=xl1446787>6.70</td>
  <td class=xl916787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>3.40 </td>
  <td class=xl1456787>5.16 </td>
  <td class=xl1456787>5.56 </td>
  <td class=xl1456787>5.33 </td>
  <td class=xl1456787>5.49 </td>
  <td class=xl1456787>5.94 </td>
  <td class=xl1456787>5.66 </td>
  <td class=xl1456787>6.02 </td>
  <td class=xl1456787>6.70 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl806787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>6,869 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.49 </td>
  <td class=xl1536787>0.75 </td>
  <td class=xl1536787>0.81 </td>
  <td class=xl1536787>0.78 </td>
  <td class=xl1536787>0.80 </td>
  <td class=xl1536787>0.86 </td>
  <td class=xl1536787>0.82 </td>
  <td class=xl1536787>0.88 </td>
  <td class=xl1536787>0.97 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>5.51 </td>
  <td class=xl1316787>5.25 </td>
  <td class=xl1316787>5.19 </td>
  <td class=xl1316787>5.22 </td>
  <td class=xl1316787>5.20 </td>
  <td class=xl1316787>5.14 </td>
  <td class=xl1316787>5.18 </td>
  <td class=xl1316787>5.12 </td>
  <td class=xl1316787>5.03 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1086787 style='height:15.0pt;border-top:none'>&nbsp;</td>
  <td class=xl1096787 style='border-top:none'>&nbsp;</td>
  <td colspan=15 class=xl1116787 style='border-right:1.0pt solid black'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl876787 style='border-left:none'>&nbsp;</td>
  <td class=xl786787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>GARP</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1412 </td>
  <td class=xl966787 style='border-top:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E14A-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E14B-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>1.64</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>1.74</td>
  <td class=xl1446787>1.74</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>1.54</td>
  <td class=xl1446787>1.72</td>
  <td class=xl1446787>1.80</td>
  <td class=xl1446787>1.86</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E14C</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>3.40</td>
  <td class=xl1446787>7.76</td>
  <td class=xl1446787>3.36</td>
  <td class=xl1446787>3.84</td>
  <td class=xl1446787>8.48</td>
  <td class=xl1446787>8.16</td>
  <td class=xl1446787>3.92</td>
  <td class=xl1446787>3.12</td>
  <td class=xl1446787>3.24</td>
  <td class=xl1446787>3.40</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>5.04 </td>
  <td class=xl1456787>7.76 </td>
  <td class=xl1456787>5.10 </td>
  <td class=xl1456787>5.58 </td>
  <td class=xl1456787>8.48 </td>
  <td class=xl1456787>8.16 </td>
  <td class=xl1456787>5.46 </td>
  <td class=xl1456787>4.84 </td>
  <td class=xl1456787>5.04 </td>
  <td class=xl1456787>5.26 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl806787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(5.04)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(7.76)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(5.10)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(5.58)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.48)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.16)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(5.46)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.84)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(5.04)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(5.26)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>4,786 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.05 </td>
  <td class=xl1536787>1.62 </td>
  <td class=xl1536787>1.07 </td>
  <td class=xl1536787>1.17 </td>
  <td class=xl1536787>1.77 </td>
  <td class=xl1536787>1.70 </td>
  <td class=xl1536787>1.14 </td>
  <td class=xl1536787>1.01 </td>
  <td class=xl1536787>1.05 </td>
  <td class=xl1536787>1.10 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.95 </td>
  <td class=xl1316787>4.38 </td>
  <td class=xl1316787>4.93 </td>
  <td class=xl1316787>4.83 </td>
  <td class=xl1316787>4.23 </td>
  <td class=xl1316787>4.30 </td>
  <td class=xl1316787>4.86 </td>
  <td class=xl1316787>4.99 </td>
  <td class=xl1316787>4.95 </td>
  <td class=xl1316787>4.90 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1086787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>GARP</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1410 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E14B-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>6.30</td>
  <td class=xl1446787>8.76</td>
  <td class=xl1446787>9.86</td>
  <td class=xl1446787>9.14</td>
  <td class=xl1446787>10.02</td>
  <td class=xl1446787>9.05</td>
  <td class=xl1446787>6.26</td>
  <td class=xl1446787>10.20</td>
  <td class=xl1446787>9.39</td>
  <td class=xl1446787>9.56</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E14D</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>19.94</td>
  <td class=xl1446787>9.25</td>
  <td class=xl1446787>16.81</td>
  <td class=xl1446787>19.81</td>
  <td class=xl1446787>22.38</td>
  <td class=xl1446787>23.38</td>
  <td class=xl1446787>20.13</td>
  <td class=xl1446787>18.88</td>
  <td class=xl1446787>18.15</td>
  <td class=xl1446787>24.78</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W14C</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>6.91</td>
  <td class=xl1446787>8.94</td>
  <td class=xl1446787>8.22</td>
  <td class=xl1446787>0.85</td>
  <td class=xl1446787>0.94</td>
  <td class=xl1446787>0.96</td>
  <td class=xl1446787>0.86</td>
  <td class=xl1446787>0.92</td>
  <td class=xl1446787>0.78</td>
  <td class=xl1446787>0.82</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W14B</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>31.00</td>
  <td class=xl1446787>26.88</td>
  <td class=xl1446787>29.88</td>
  <td class=xl1446787>26.00</td>
  <td class=xl1446787>25.78</td>
  <td class=xl1446787>25.78</td>
  <td class=xl1446787>34.63</td>
  <td class=xl1446787>30.50</td>
  <td class=xl1446787>34.96</td>
  <td class=xl1446787>46.50</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W14A</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>6.91</td>
  <td class=xl1446787>8.94</td>
  <td class=xl1446787>8.22</td>
  <td class=xl1446787>9.31</td>
  <td class=xl1446787>9.32</td>
  <td class=xl1446787>9.46</td>
  <td class=xl1446787>8.56</td>
  <td class=xl1446787>9.50</td>
  <td class=xl1446787>8.55</td>
  <td class=xl1446787>8.44</td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>71.06 </td>
  <td class=xl1456787>62.77 </td>
  <td class=xl1456787>72.99 </td>
  <td class=xl1456787>65.11 </td>
  <td class=xl1456787>68.44 </td>
  <td class=xl1456787>68.63 </td>
  <td class=xl1456787>70.44 </td>
  <td class=xl1456787>70.00 </td>
  <td class=xl1456787>71.83 </td>
  <td class=xl1456787>90.10 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(6.91)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.94)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.22)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(9.31)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(9.32)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(9.46)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.56)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(9.50)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.55)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.44)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl806787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(6.91)</font></td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(6.91)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.94)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.22)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(9.31)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(9.32)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(9.46)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.56)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(9.50)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.55)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.44)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>       </span>28,415 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787>2.50 </td>
  <td class=xl1536787>13.12 </td>
  <td class=xl1536787>15.25 </td>
  <td class=xl1536787>13.61 </td>
  <td class=xl1536787>14.30 </td>
  <td class=xl1536787>14.34 </td>
  <td class=xl1536787>14.72 </td>
  <td class=xl1536787>14.63 </td>
  <td class=xl1536787>15.01 </td>
  <td class=xl1536787>18.83 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>3.50 </td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(7.12)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(9.25)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(7.61)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(8.30)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(8.34)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(8.72)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(8.63)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(9.01)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(12.83)</font></td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1086787 style='height:15.0pt;border-top:none'>&nbsp;</td>
  <td class=xl1096787 style='border-top:none'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1106787 width=67 style='border-top:none;width:50pt'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1116787 style='border-top:none'>&nbsp;</td>
  <td class=xl1596787 style='border-top:none'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl856787 style='border-left:none'>&nbsp;</td>
  <td class=xl856787 style='border-left:none'>&nbsp;</td>
  <td colspan=12 class=xl1766787 style='border-right:.5pt solid black'>2019
  Coincidental Demand KW by Month</td>
  <td class=xl1336787 style='border-left:none'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Hartfield</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1500 </td>
  <td class=xl886787 style='border-top:none;border-left:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl826787>Jan</td>
  <td class=xl836787 style='border-left:none'>Feb</td>
  <td class=xl836787 style='border-left:none'>March</td>
  <td class=xl836787 style='border-left:none'>April</td>
  <td class=xl836787 style='border-left:none'>May</td>
  <td class=xl836787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl836787 style='border-left:none'>July</td>
  <td class=xl836787 style='border-left:none'>August</td>
  <td class=xl836787 style='border-left:none'>Sept</td>
  <td class=xl836787 style='border-left:none'>Oct</td>
  <td class=xl836787 style='border-left:none'>Nov</td>
  <td class=xl846787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr class=xl916787 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
  <td class=xl916787>TCT-E15A</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>2.08</td>
  <td class=xl1446787>2.04</td>
  <td class=xl1446787>2.24</td>
  <td class=xl1446787>2.24</td>
  <td class=xl1446787>2.24</td>
  <td class=xl1446787>2.24</td>
  <td class=xl1446787>2.24</td>
  <td class=xl1446787>2.28</td>
  <td class=xl1446787>2.28</td>
  <td class=xl1446787>2.24</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>2.21 </td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-W15C-2</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>46.37</td>
  <td class=xl1446787>30.60</td>
  <td class=xl1446787>40.67</td>
  <td class=xl1446787>40.61</td>
  <td class=xl1446787>28.00</td>
  <td class=xl1446787>29.13</td>
  <td class=xl1446787>28.44</td>
  <td class=xl1446787>28.09</td>
  <td class=xl1446787>29.15</td>
  <td class=xl1446787>29.48</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>33.05 </td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-W15A</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>2.00</td>
  <td class=xl1446787>2.00</td>
  <td class=xl1446787>1.97</td>
  <td class=xl1446787>1.97</td>
  <td class=xl1446787>1.78</td>
  <td class=xl1446787>1.91</td>
  <td class=xl1446787>1.84</td>
  <td class=xl1446787>1.91</td>
  <td class=xl1446787>1.94</td>
  <td class=xl1446787>2.03</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>1.94 </td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-E15B</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>8.03</td>
  <td class=xl1446787>7.13</td>
  <td class=xl1446787>7.81</td>
  <td class=xl1446787>7.91</td>
  <td class=xl1446787>7.41</td>
  <td class=xl1446787>8.56</td>
  <td class=xl1446787>7.44</td>
  <td class=xl1446787>7.72</td>
  <td class=xl1446787>8.22</td>
  <td class=xl1446787>8.84</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>7.91 </td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-W7B</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>0.42</td>
  <td class=xl1446787>5.64</td>
  <td class=xl1446787>6.50</td>
  <td class=xl1446787>7.00</td>
  <td class=xl1446787>5.88</td>
  <td class=xl1446787>6.51</td>
  <td class=xl1446787>5.86</td>
  <td class=xl1446787>5.88</td>
  <td class=xl1446787>6.38</td>
  <td class=xl1446787>6.53</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>5.66 </td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-E15C</td>
  <td class=xl1436787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>8.88</td>
  <td class=xl1446787>7.28</td>
  <td class=xl1446787>8.76</td>
  <td class=xl1446787>8.68</td>
  <td class=xl1446787>36.88</td>
  <td class=xl1446787>8.48</td>
  <td class=xl1446787>7.24</td>
  <td class=xl1446787>8.40</td>
  <td class=xl1446787>7.88</td>
  <td class=xl1446787>8.12</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>11.06 </td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-E15D</td>
  <td class=xl1436787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>6.72</td>
  <td class=xl1446787>32.36</td>
  <td class=xl1446787>6.60</td>
  <td class=xl1446787>6.56</td>
  <td class=xl1446787>6.36</td>
  <td class=xl1446787>8.36</td>
  <td class=xl1446787>4.32</td>
  <td class=xl1446787>3.76</td>
  <td class=xl1446787>3.84</td>
  <td class=xl1446787>5.12</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>8.40 </td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-E7A</td>
  <td class=xl1436787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>0.00 </td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-W7A</td>
  <td class=xl1436787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>0.00 </td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-E15E-3</td>
  <td class=xl1436787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>5.35</td>
  <td class=xl1446787>3.82</td>
  <td class=xl1446787>5.94</td>
  <td class=xl1446787>1.67</td>
  <td class=xl1446787>1.59</td>
  <td class=xl1446787>0.58</td>
  <td class=xl1446787>0.22</td>
  <td class=xl1446787>0.72</td>
  <td class=xl1446787>0.52</td>
  <td class=xl1446787>6.11</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>2.65 </td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-E15F</td>
  <td class=xl1436787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>3.44</td>
  <td class=xl1446787>1.00</td>
  <td class=xl1446787>3.60</td>
  <td class=xl1446787>3.96</td>
  <td class=xl1446787>1.40</td>
  <td class=xl1446787>3.60</td>
  <td class=xl1446787>2.56</td>
  <td class=xl1446787>3.48</td>
  <td class=xl1446787>3.56</td>
  <td class=xl1446787>3.04</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>3.18 </td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-E15E-6</td>
  <td class=xl1436787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>3.59</td>
  <td class=xl1446787>1.58</td>
  <td class=xl1446787>3.06</td>
  <td class=xl1446787>3.46</td>
  <td class=xl1446787>1.92</td>
  <td class=xl1446787>3.53</td>
  <td class=xl1446787>1.68</td>
  <td class=xl1446787>2.40</td>
  <td class=xl1446787>3.78</td>
  <td class=xl1446787>3.64</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>2.86 </td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1646787 style='height:15.0pt'>device/channel does not
  exist</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-E15A-1</td>
  <td class=xl1436787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1456787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1136787>0</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1646787 style='height:15.0pt'>device/channel does not
  exist</td>
  <td class=xl986787></td>
  <td class=xl1606787>TCT-E15B-2</td>
  <td class=xl1436787 width=67 style='width:50pt'>BB</td>
  <td class=xl1456787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1136787>0</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>86.88 </td>
  <td class=xl1456787>91.41 </td>
  <td class=xl1456787>84.91 </td>
  <td class=xl1456787>81.82 </td>
  <td class=xl1456787>91.22 </td>
  <td class=xl1456787>70.66 </td>
  <td class=xl1456787>59.60 </td>
  <td class=xl1456787>62.35 </td>
  <td class=xl1456787>65.28 </td>
  <td class=xl1456787>72.92 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>30 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(28.90)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(17.41)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(29.19)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(29.73)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(15.31)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(18.35)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(15.82)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(15.88)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(17.97)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(19.12)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=44 style='mso-height-source:userset;height:33.0pt'>
  <td height=44 class=xl1156787 width=163 style='height:33.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>90 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>74.40 </td>
  <td class=xl746787>50.36 </td>
  <td class=xl746787>74.64 </td>
  <td class=xl746787>74.76 </td>
  <td class=xl746787>46.76 </td>
  <td class=xl746787>73.16 </td>
  <td class=xl746787>78.44 </td>
  <td class=xl746787>77.84 </td>
  <td class=xl746787>78.28 </td>
  <td class=xl746787>76.76 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>120 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>41.91 </td>
  <td class=xl1536787>31.37 </td>
  <td class=xl1536787>42.40 </td>
  <td class=xl1536787>41.56 </td>
  <td class=xl1536787>29.53 </td>
  <td class=xl1536787>51.28 </td>
  <td class=xl1536787>60.94 </td>
  <td class=xl1536787>59.56 </td>
  <td class=xl1536787>56.53 </td>
  <td class=xl1536787>54.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>15 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1166787 style='height:15.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>       </span>15,557 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>5.58 </td>
  <td class=xl1536787>5.88 </td>
  <td class=xl1536787>5.46 </td>
  <td class=xl1536787>5.26 </td>
  <td class=xl1536787>5.86 </td>
  <td class=xl1536787>4.54 </td>
  <td class=xl1536787>3.83 </td>
  <td class=xl1536787>4.01 </td>
  <td class=xl1536787>4.20 </td>
  <td class=xl1536787>4.69 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>0.42 </td>
  <td class=xl1316787>0.12 </td>
  <td class=xl1316787>0.54 </td>
  <td class=xl1316787>0.74 </td>
  <td class=xl1316787>0.14 </td>
  <td class=xl1316787>1.46 </td>
  <td class=xl1316787>2.17 </td>
  <td class=xl1316787>1.99 </td>
  <td class=xl1316787>1.80 </td>
  <td class=xl1316787>1.31 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1786787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1186787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl1016787 style='border-left:none'>Suite</td>
  <td class=xl1266787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1196787 width=163 style='height:18.0pt;border-top:none;
  width:122pt'>IAI North America</td>
  <td class=xl1016787 style='border-top:none;border-left:none'>307</td>
  <td class=xl1036787>Meter #</td>
  <td class=xl1026787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl1016787 style='border-left:none'>Jan</td>
  <td class=xl1016787 style='border-left:none'>Feb</td>
  <td class=xl1016787 style='border-left:none'>March</td>
  <td class=xl1016787 style='border-left:none'>April</td>
  <td class=xl1016787 style='border-left:none'>May</td>
  <td class=xl1016787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl1016787 style='border-left:none'>July</td>
  <td class=xl1016787 style='border-left:none'>August</td>
  <td class=xl1016787 style='border-left:none'>Sept</td>
  <td class=xl1016787 style='border-left:none'>Oct</td>
  <td class=xl1016787 style='border-left:none'>Nov</td>
  <td class=xl1046787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W3A-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.76</td>
  <td class=xl1446787>1.10</td>
  <td class=xl1446787>1.07</td>
  <td class=xl1446787>0.76</td>
  <td class=xl1446787>0.62</td>
  <td class=xl1446787>1.17</td>
  <td class=xl1446787>1.09</td>
  <td class=xl1446787>0.72</td>
  <td class=xl1446787>0.51</td>
  <td class=xl1446787>0.44</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W3D-2</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>2.16</td>
  <td class=xl1446787>2.30</td>
  <td class=xl1446787>1.44</td>
  <td class=xl1446787>1.59</td>
  <td class=xl1446787>2.06</td>
  <td class=xl1446787>1.98</td>
  <td class=xl1446787>1.54</td>
  <td class=xl1446787>1.79</td>
  <td class=xl1446787>1.71</td>
  <td class=xl1446787>1.84</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1266787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1446787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl776787>&nbsp;</td>
  <td class=xl816787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1446787>2.92</td>
  <td class=xl1446787>3.40</td>
  <td class=xl1446787>2.51</td>
  <td class=xl1446787>2.35</td>
  <td class=xl1446787>2.68</td>
  <td class=xl1446787>3.15</td>
  <td class=xl1446787>2.63</td>
  <td class=xl1446787>2.51</td>
  <td class=xl1446787>2.22</td>
  <td class=xl1446787>2.28</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>1,860 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.57 </td>
  <td class=xl1536787>1.83 </td>
  <td class=xl1536787>1.35 </td>
  <td class=xl1536787>1.26 </td>
  <td class=xl1536787>1.44 </td>
  <td class=xl1536787>1.69 </td>
  <td class=xl1536787>1.42 </td>
  <td class=xl1536787>1.35 </td>
  <td class=xl1536787>1.19 </td>
  <td class=xl1536787>1.23 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.43 </td>
  <td class=xl1316787>4.17 </td>
  <td class=xl1316787>4.65 </td>
  <td class=xl1316787>4.74 </td>
  <td class=xl1316787>4.56 </td>
  <td class=xl1316787>4.31 </td>
  <td class=xl1316787>4.58 </td>
  <td class=xl1316787>4.65 </td>
  <td class=xl1316787>4.81 </td>
  <td class=xl1316787>4.77 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1086787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1186787 style='height:15.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl1016787 style='border-left:none'>Suite</td>
  <td class=xl1266787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1636787 width=163 style='height:18.0pt;border-top:none;
  width:122pt'>Infosense Global</td>
  <td class=xl1016787 style='border-top:none;border-left:none'>600</td>
  <td class=xl1036787>Meter #</td>
  <td class=xl1026787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl1016787 style='border-left:none'>Jan</td>
  <td class=xl1016787 style='border-left:none'>Feb</td>
  <td class=xl1016787 style='border-left:none'>March</td>
  <td class=xl1016787 style='border-left:none'>April</td>
  <td class=xl1016787 style='border-left:none'>May</td>
  <td class=xl1016787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl1016787 style='border-left:none'>July</td>
  <td class=xl1016787 style='border-left:none'>August</td>
  <td class=xl1016787 style='border-left:none'>Sept</td>
  <td class=xl1016787 style='border-left:none'>Oct</td>
  <td class=xl1016787 style='border-left:none'>Nov</td>
  <td class=xl1046787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W6E-3</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W6B-3</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1266787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1446787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl776787>&nbsp;</td>
  <td class=xl816787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>1,709 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1086787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1676787 style='height:18.0pt;border-top:none'>Invent
  Education LLC</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1205 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W12A</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>0.30</td>
  <td class=xl1446787>0.30</td>
  <td class=xl1446787>0.30</td>
  <td class=xl1446787>0.30</td>
  <td class=xl1446787>0.31</td>
  <td class=xl1446787>0.30</td>
  <td class=xl1446787>0.30</td>
  <td class=xl1446787>3.45</td>
  <td class=xl1446787>3.52</td>
  <td class=xl1446787>3.72</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W12B</td>
  <td class=xl896787 width=67 style='width:50pt'>ELP</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.16</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.16</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.16</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>0.47 </td>
  <td class=xl1456787>0.47 </td>
  <td class=xl1456787>0.47 </td>
  <td class=xl1456787>0.46 </td>
  <td class=xl1456787>0.48 </td>
  <td class=xl1456787>0.47 </td>
  <td class=xl1456787>0.46 </td>
  <td class=xl1456787>3.62 </td>
  <td class=xl1456787>3.68 </td>
  <td class=xl1456787>3.89 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.47)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.47)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.47)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.46)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.48)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.47)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.46)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.62)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.68)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.89)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.47)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.47)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.47)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.46)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.48)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.47)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.46)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.62)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.68)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.89)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>1,000 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.47 </td>
  <td class=xl1536787>0.47 </td>
  <td class=xl1536787>0.47 </td>
  <td class=xl1536787>0.46 </td>
  <td class=xl1536787>0.48 </td>
  <td class=xl1536787>0.47 </td>
  <td class=xl1536787>0.46 </td>
  <td class=xl1536787>3.62 </td>
  <td class=xl1536787>3.68 </td>
  <td class=xl1536787>3.89 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>5.53 </td>
  <td class=xl1316787>5.53 </td>
  <td class=xl1316787>5.53 </td>
  <td class=xl1316787>5.54 </td>
  <td class=xl1316787>5.52 </td>
  <td class=xl1316787>5.53 </td>
  <td class=xl1316787>5.54 </td>
  <td class=xl1316787>2.38 </td>
  <td class=xl1316787>2.32 </td>
  <td class=xl1316787>2.11 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>iQuanti</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1201 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W12C-8</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>5.22</td>
  <td class=xl1446787>5.69</td>
  <td class=xl1446787>5.36</td>
  <td class=xl1446787>5.19</td>
  <td class=xl1446787>5.64</td>
  <td class=xl1446787>5.64</td>
  <td class=xl1446787>5.15</td>
  <td class=xl1446787>5.55</td>
  <td class=xl1446787>5.00</td>
  <td class=xl1446787>5.59</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W12D-2</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>3.06</td>
  <td class=xl1446787>2.63</td>
  <td class=xl1446787>2.64</td>
  <td class=xl1446787>3.92</td>
  <td class=xl1446787>2.98</td>
  <td class=xl1446787>2.47</td>
  <td class=xl1446787>2.62</td>
  <td class=xl1446787>2.51</td>
  <td class=xl1446787>2.96</td>
  <td class=xl1446787>2.47</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>8.28 </td>
  <td class=xl1456787>8.32 </td>
  <td class=xl1456787>8.00 </td>
  <td class=xl1456787>9.11 </td>
  <td class=xl1456787>8.61 </td>
  <td class=xl1456787>8.10 </td>
  <td class=xl1456787>7.78 </td>
  <td class=xl1456787>8.06 </td>
  <td class=xl1456787>7.96 </td>
  <td class=xl1456787>8.06 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>3,215 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>2.58 </td>
  <td class=xl1536787>2.59 </td>
  <td class=xl1536787>2.49 </td>
  <td class=xl1536787>2.83 </td>
  <td class=xl1536787>2.68 </td>
  <td class=xl1536787>2.52 </td>
  <td class=xl1536787>2.42 </td>
  <td class=xl1536787>2.51 </td>
  <td class=xl1536787>2.48 </td>
  <td class=xl1536787>2.51 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>3.42 </td>
  <td class=xl1316787>3.41 </td>
  <td class=xl1316787>3.51 </td>
  <td class=xl1316787>3.17 </td>
  <td class=xl1316787>3.32 </td>
  <td class=xl1316787>3.48 </td>
  <td class=xl1316787>3.58 </td>
  <td class=xl1316787>3.49 </td>
  <td class=xl1316787>3.52 </td>
  <td class=xl1316787>3.49 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>ISOS</td>
  <td class=xl976787 style='border-top:none;border-left:none'>415 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E4A-3</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>5.46</td>
  <td class=xl1446787>5.73</td>
  <td class=xl1446787>5.73</td>
  <td class=xl1446787>5.69</td>
  <td class=xl1446787>5.51</td>
  <td class=xl1446787>5.74</td>
  <td class=xl1446787>5.11</td>
  <td class=xl1446787>5.08</td>
  <td class=xl1446787>4.92</td>
  <td class=xl1446787>6.79</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E4A-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>1.71</td>
  <td class=xl1446787>1.70</td>
  <td class=xl1446787>1.83</td>
  <td class=xl1446787>1.60</td>
  <td class=xl1446787>1.62</td>
  <td class=xl1446787>1.53</td>
  <td class=xl1446787>1.53</td>
  <td class=xl1446787>1.73</td>
  <td class=xl1446787>1.90</td>
  <td class=xl1446787>1.52</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>Expansion Space</td>
  <td class=xl1006787>410 </td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>7.17 </td>
  <td class=xl1456787>7.43 </td>
  <td class=xl1456787>7.56 </td>
  <td class=xl1456787>7.30 </td>
  <td class=xl1456787>7.14 </td>
  <td class=xl1456787>7.27 </td>
  <td class=xl1456787>6.64 </td>
  <td class=xl1456787>6.80 </td>
  <td class=xl1456787>6.81 </td>
  <td class=xl1456787>8.31 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>8,519 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.84 </td>
  <td class=xl1536787>0.87 </td>
  <td class=xl1536787>0.89 </td>
  <td class=xl1536787>0.86 </td>
  <td class=xl1536787>0.84 </td>
  <td class=xl1536787>0.85 </td>
  <td class=xl1536787>0.78 </td>
  <td class=xl1536787>0.80 </td>
  <td class=xl1536787>0.80 </td>
  <td class=xl1536787>0.98 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1296787 style='height:18.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>5.16 </td>
  <td class=xl1316787>5.13 </td>
  <td class=xl1316787>5.11 </td>
  <td class=xl1316787>5.14 </td>
  <td class=xl1316787>5.16 </td>
  <td class=xl1316787>5.15 </td>
  <td class=xl1316787>5.22 </td>
  <td class=xl1316787>5.20 </td>
  <td class=xl1316787>5.20 </td>
  <td class=xl1316787>5.02 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>JTB Law</td>
  <td class=xl976787 style='border-top:none;border-left:none'>400 </td>
  <td class=xl886787 style='border-left:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W4A-3</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>0.97</td>
  <td class=xl1446787>1.30</td>
  <td class=xl1446787>1.30</td>
  <td class=xl1446787>1.24</td>
  <td class=xl1446787>0.91</td>
  <td class=xl1446787>1.24</td>
  <td class=xl1446787>1.19</td>
  <td class=xl1446787>1.23</td>
  <td class=xl1446787>0.91</td>
  <td class=xl1446787>1.24</td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W4C-4</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>6.22</td>
  <td class=xl1446787>4.23</td>
  <td class=xl1446787>5.10</td>
  <td class=xl1446787>4.25</td>
  <td class=xl1446787>4.47</td>
  <td class=xl1446787>4.50</td>
  <td class=xl1446787>4.46</td>
  <td class=xl1446787>3.84</td>
  <td class=xl1446787>3.88</td>
  <td class=xl1446787>3.02</td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>7.19 </td>
  <td class=xl1456787>5.53 </td>
  <td class=xl1456787>6.40 </td>
  <td class=xl1456787>5.49 </td>
  <td class=xl1456787>5.38 </td>
  <td class=xl1456787>5.74 </td>
  <td class=xl1456787>5.65 </td>
  <td class=xl1456787>5.07 </td>
  <td class=xl1456787>4.79 </td>
  <td class=xl1456787>4.26 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(6.22)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.23)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(5.10)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.25)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.47)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.50)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.46)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.84)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.88)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.02)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(6.22)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.23)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(5.10)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.25)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.47)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.50)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.46)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.84)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.88)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.02)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>4,750 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.51 </td>
  <td class=xl1536787>3.17 </td>
  <td class=xl1536787>3.67 </td>
  <td class=xl1536787>3.15 </td>
  <td class=xl1536787>3.08 </td>
  <td class=xl1536787>3.29 </td>
  <td class=xl1536787>3.24 </td>
  <td class=xl1536787>2.91 </td>
  <td class=xl1536787>2.75 </td>
  <td class=xl1536787>2.44 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.49 </td>
  <td class=xl1316787>2.83 </td>
  <td class=xl1316787>2.33 </td>
  <td class=xl1316787>2.85 </td>
  <td class=xl1316787>2.92 </td>
  <td class=xl1316787>2.71 </td>
  <td class=xl1316787>2.76 </td>
  <td class=xl1316787>3.09 </td>
  <td class=xl1316787>3.25 </td>
  <td class=xl1316787>3.56 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Leap
  Guaranty</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1210 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E12A</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>1.88</td>
  <td class=xl1446787>1.63</td>
  <td class=xl1446787>1.75</td>
  <td class=xl1446787>1.88</td>
  <td class=xl1446787>1.88</td>
  <td class=xl1446787>1.75</td>
  <td class=xl1446787>1.75</td>
  <td class=xl1446787>1.88</td>
  <td class=xl1446787>1.69</td>
  <td class=xl1446787>1.81</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E12B</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>1.88 </td>
  <td class=xl1456787>1.63 </td>
  <td class=xl1456787>1.75 </td>
  <td class=xl1456787>1.89 </td>
  <td class=xl1456787>1.89 </td>
  <td class=xl1456787>1.76 </td>
  <td class=xl1456787>1.75 </td>
  <td class=xl1456787>1.88 </td>
  <td class=xl1456787>1.70 </td>
  <td class=xl1456787>1.81 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>1,744 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.08 </td>
  <td class=xl1536787>0.93 </td>
  <td class=xl1536787>1.00 </td>
  <td class=xl1536787>1.08 </td>
  <td class=xl1536787>1.08 </td>
  <td class=xl1536787>1.01 </td>
  <td class=xl1536787>1.00 </td>
  <td class=xl1536787>1.08 </td>
  <td class=xl1536787>0.97 </td>
  <td class=xl1536787>1.04 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1296787 style='height:15.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.92 </td>
  <td class=xl1316787>5.07 </td>
  <td class=xl1316787>5.00 </td>
  <td class=xl1316787>4.92 </td>
  <td class=xl1316787>4.92 </td>
  <td class=xl1316787>4.99 </td>
  <td class=xl1316787>5.00 </td>
  <td class=xl1316787>4.92 </td>
  <td class=xl1316787>5.03 </td>
  <td class=xl1316787>4.96 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl956787 style='border-left:none'>&nbsp;</td>
  <td class=xl786787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1216787 style='height:18.0pt'>LeFrak Accounting Grp</td>
  <td class=xl1226787>217</td>
  <td class=xl1016787 style='border-top:none'>Meter #</td>
  <td class=xl1026787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl1016787 style='border-left:none'>Jan</td>
  <td class=xl1016787 style='border-left:none'>Feb</td>
  <td class=xl1016787 style='border-left:none'>March</td>
  <td class=xl1016787 style='border-left:none'>April</td>
  <td class=xl1016787 style='border-left:none'>May</td>
  <td class=xl1016787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl1016787 style='border-left:none'>July</td>
  <td class=xl1016787 style='border-left:none'>August</td>
  <td class=xl1016787 style='border-left:none'>Sept</td>
  <td class=xl1016787 style='border-left:none'>Oct</td>
  <td class=xl1016787 style='border-left:none'>Nov</td>
  <td class=xl1046787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1486787>TCT-E2E</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>6.91</td>
  <td class=xl1446787>8.28</td>
  <td class=xl1446787>6.75</td>
  <td class=xl1446787>7.94</td>
  <td class=xl1446787>7.63</td>
  <td class=xl1446787>7.94</td>
  <td class=xl1446787>7.94</td>
  <td class=xl1446787>7.00</td>
  <td class=xl1446787>10.88</td>
  <td class=xl1446787>31.44</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>6.91 </td>
  <td class=xl1456787>8.28 </td>
  <td class=xl1456787>6.75 </td>
  <td class=xl1456787>7.94 </td>
  <td class=xl1456787>7.63 </td>
  <td class=xl1456787>7.94 </td>
  <td class=xl1456787>7.94 </td>
  <td class=xl1456787>7.00 </td>
  <td class=xl1456787>10.88 </td>
  <td class=xl1456787>31.44 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>6,620 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.04 </td>
  <td class=xl1536787>1.25 </td>
  <td class=xl1536787>1.02 </td>
  <td class=xl1536787>1.20 </td>
  <td class=xl1536787>1.15 </td>
  <td class=xl1536787>1.20 </td>
  <td class=xl1536787>1.20 </td>
  <td class=xl1536787>1.06 </td>
  <td class=xl1536787>1.64 </td>
  <td class=xl1536787>4.75 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.96 </td>
  <td class=xl1316787>4.75 </td>
  <td class=xl1316787>4.98 </td>
  <td class=xl1316787>4.80 </td>
  <td class=xl1316787>4.85 </td>
  <td class=xl1316787>4.80 </td>
  <td class=xl1316787>4.80 </td>
  <td class=xl1316787>4.94 </td>
  <td class=xl1316787>4.36 </td>
  <td class=xl1316787>1.25 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1086787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl876787 style='border-left:none'>&nbsp;</td>
  <td class=xl786787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1176787 width=163 style='height:18.0pt;border-top:none;
  width:122pt'>LeFrak Management</td>
  <td class=xl976787 style='border-top:none;border-left:none'>300 </td>
  <td class=xl966787 style='border-top:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W3F</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>3.75</td>
  <td class=xl1446787>3.07</td>
  <td class=xl1446787>3.25</td>
  <td class=xl1446787>2.97</td>
  <td class=xl1446787>2.81</td>
  <td class=xl1446787>3.53</td>
  <td class=xl1446787>2.88</td>
  <td class=xl1446787>2.43</td>
  <td class=xl1446787>2.88</td>
  <td class=xl1446787>2.28</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W3E</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>16.72</td>
  <td class=xl1446787>13.64</td>
  <td class=xl1446787>11.75</td>
  <td class=xl1446787>11.85</td>
  <td class=xl1446787>11.72</td>
  <td class=xl1446787>11.35</td>
  <td class=xl1446787>11.16</td>
  <td class=xl1446787>13.29</td>
  <td class=xl1446787>11.34</td>
  <td class=xl1446787>13.34</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>20.47 </td>
  <td class=xl1456787>16.71 </td>
  <td class=xl1456787>15.00 </td>
  <td class=xl1456787>14.82 </td>
  <td class=xl1456787>14.53 </td>
  <td class=xl1456787>14.88 </td>
  <td class=xl1456787>14.04 </td>
  <td class=xl1456787>15.72 </td>
  <td class=xl1456787>14.22 </td>
  <td class=xl1456787>15.62 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.75)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.07)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.25)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.97)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.81)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.53)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.88)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.43)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.88)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.28)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(16.72)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(13.64)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(11.75)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(11.85)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(11.72)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(11.35)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(11.16)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(13.29)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(11.34)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(13.34)</font></td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(20.47)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(16.71)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(15.00)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(14.82)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(14.53)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(14.88)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(14.04)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(15.72)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(14.22)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(15.62)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>8,360 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>2.45 </td>
  <td class=xl1536787>2.00 </td>
  <td class=xl1536787>1.79 </td>
  <td class=xl1536787>1.77 </td>
  <td class=xl1536787>1.74 </td>
  <td class=xl1536787>1.78 </td>
  <td class=xl1536787>1.68 </td>
  <td class=xl1536787>1.88 </td>
  <td class=xl1536787>1.70 </td>
  <td class=xl1536787>1.87 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1296787 style='height:15.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>3.55 </td>
  <td class=xl1316787>4.00 </td>
  <td class=xl1316787>4.21 </td>
  <td class=xl1316787>4.23 </td>
  <td class=xl1316787>4.26 </td>
  <td class=xl1316787>4.22 </td>
  <td class=xl1316787>4.32 </td>
  <td class=xl1316787>4.12 </td>
  <td class=xl1316787>4.30 </td>
  <td class=xl1316787>4.13 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl876787 style='border-left:none'>&nbsp;</td>
  <td class=xl786787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>L'Oreal
  Temp Space</td>
  <td class=xl976787 style='border-top:none;border-left:none'>900 </td>
  <td class=xl966787 style='border-top:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>Meters Pending</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>       </span>29,270 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1296787 style='height:15.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl1126787 style='height:21.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl876787 style='border-left:none'>&nbsp;</td>
  <td class=xl786787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>L'Oreal
  Temp Space</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1000 </td>
  <td class=xl966787 style='border-top:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>Meters Pending</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl916787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>       </span>38,340 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td colspan=17 height=40 class=xl1086787 style='border-right:1.0pt solid black;
  height:30.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1186787 style='height:30.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl1016787 style='border-left:none'>Suite</td>
  <td class=xl1256787 style='border-left:none'>&nbsp;</td>
  <td class=xl766787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1196787 width=163 style='height:18.0pt;border-top:none;
  width:122pt'>Mandara Trading Americas<span style='mso-spacerun:yes'> </span></td>
  <td class=xl1016787 style='border-top:none;border-left:none'>310</td>
  <td class=xl1036787 style='border-top:none'>Meter #</td>
  <td class=xl1026787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl1016787 style='border-left:none'>Jan</td>
  <td class=xl1016787 style='border-left:none'>Feb</td>
  <td class=xl1016787 style='border-left:none'>March</td>
  <td class=xl1016787 style='border-left:none'>April</td>
  <td class=xl1016787 style='border-left:none'>May</td>
  <td class=xl1016787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl1016787 style='border-left:none'>July</td>
  <td class=xl1016787 style='border-left:none'>August</td>
  <td class=xl1016787 style='border-left:none'>Sept</td>
  <td class=xl1016787 style='border-left:none'>Oct</td>
  <td class=xl1016787 style='border-left:none'>Nov</td>
  <td class=xl1016787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='border-left:none;width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'><span
  style='mso-spacerun:yes'> </span>Check Meter Labeling</td>
  <td class=xl1486787></td>
  <td class=xl1486787>DP-3E3</td>
  <td class=xl1496787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>1.63</td>
  <td class=xl1446787>1.43</td>
  <td class=xl1446787>1.36</td>
  <td class=xl1446787>1.38</td>
  <td class=xl1446787>2.27</td>
  <td class=xl1446787>1.65</td>
  <td class=xl1446787>0.05</td>
  <td class=xl1446787>0.05</td>
  <td class=xl1446787>0.05</td>
  <td class=xl1446787>0.05</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1506787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E2A-5</td>
  <td class=xl1496787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>0.59</td>
  <td class=xl1446787>1.40</td>
  <td class=xl1446787>1.26</td>
  <td class=xl1446787>1.43</td>
  <td class=xl1446787>0.58</td>
  <td class=xl1446787>0.58</td>
  <td class=xl1446787>0.59</td>
  <td class=xl1446787>1.30</td>
  <td class=xl1446787>0.58</td>
  <td class=xl1446787>1.06</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1506787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E2A-6</td>
  <td class=xl1496787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>0.42</td>
  <td class=xl1446787>0.42</td>
  <td class=xl1446787>0.42</td>
  <td class=xl1446787>0.44</td>
  <td class=xl1446787>0.43</td>
  <td class=xl1446787>0.75</td>
  <td class=xl1446787>0.58</td>
  <td class=xl1446787>0.43</td>
  <td class=xl1446787>0.52</td>
  <td class=xl1446787>0.59</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1506787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E3A-2</td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1446787>1.73</td>
  <td class=xl1446787>1.30</td>
  <td class=xl1446787>1.30</td>
  <td class=xl1446787>1.29</td>
  <td class=xl1446787>1.29</td>
  <td class=xl1446787>1.27</td>
  <td class=xl1446787>1.48</td>
  <td class=xl1446787>1.26</td>
  <td class=xl1446787>1.68</td>
  <td class=xl1446787>1.27</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1506787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E3B-1</td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.05</td>
  <td class=xl1446787>0.04</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1506787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E3D-1</td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1506787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl796787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1516787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>4.37 </td>
  <td class=xl1456787>4.56 </td>
  <td class=xl1456787>4.34 </td>
  <td class=xl1456787>4.54 </td>
  <td class=xl1456787>4.61 </td>
  <td class=xl1456787>4.29 </td>
  <td class=xl1456787>2.70 </td>
  <td class=xl1456787>3.05 </td>
  <td class=xl1456787>2.84 </td>
  <td class=xl1456787>2.97 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.01)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.82)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.68)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.87)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.01)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.33)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.17)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.73)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.11)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.66)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(1.63)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(1.43)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(1.36)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(1.38)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(2.27)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(1.65)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(0.05)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(0.05)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(0.05)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(0.05)</font></td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.64)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.25)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.04)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.25)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.28)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.98)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.22)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.78)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.16)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.71)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>2,725 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.52 </td>
  <td class=xl1536787>0.55 </td>
  <td class=xl1536787>0.52 </td>
  <td class=xl1536787>0.54 </td>
  <td class=xl1536787>0.55 </td>
  <td class=xl1536787>0.51 </td>
  <td class=xl1536787>0.32 </td>
  <td class=xl1536787>0.36 </td>
  <td class=xl1536787>0.34 </td>
  <td class=xl1536787>0.36 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1296787 style='height:15.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>5.48 </td>
  <td class=xl1316787>5.45 </td>
  <td class=xl1316787>5.48 </td>
  <td class=xl1316787>5.46 </td>
  <td class=xl1316787>5.45 </td>
  <td class=xl1316787>5.49 </td>
  <td class=xl1316787>5.68 </td>
  <td class=xl1316787>5.64 </td>
  <td class=xl1316787>5.66 </td>
  <td class=xl1316787>5.64 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1346787 style='height:18.0pt;border-top:none'>&nbsp;</td>
  <td class=xl1356787 style='border-top:none'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1376787 width=67 style='border-top:none;width:50pt'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1366787 style='border-top:none'>&nbsp;</td>
  <td class=xl1616787 style='border-top:none'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1426787 style='height:18.0pt;border-top:none'>Mathysis</td>
  <td class=xl976787 style='border-top:none;border-left:none'>401 </td>
  <td class=xl886787 style='border-left:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W4A-4</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>0.78</td>
  <td class=xl1446787>0.86</td>
  <td class=xl1446787>0.86</td>
  <td class=xl1446787>0.77</td>
  <td class=xl1446787>0.86</td>
  <td class=xl1446787>0.86</td>
  <td class=xl1446787>0.86</td>
  <td class=xl1446787>0.86</td>
  <td class=xl1446787>0.87</td>
  <td class=xl1446787>0.70</td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W4A-3</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>1.55</td>
  <td class=xl1446787>1.55</td>
  <td class=xl1446787>1.55</td>
  <td class=xl1446787>1.53</td>
  <td class=xl1446787>1.50</td>
  <td class=xl1446787>1.29</td>
  <td class=xl1446787>1.29</td>
  <td class=xl1446787>1.26</td>
  <td class=xl1446787>1.24</td>
  <td class=xl1446787>1.48</td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl926787 width=67 style='width:50pt'></td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl736787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl756787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl736787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1286787 width=62 style='width:47pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>2,550 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1166787 style='height:15.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl716787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>6.00 </td>
  <td class=xl1536787>6.00 </td>
  <td class=xl1536787>6.00 </td>
  <td class=xl1536787>6.00 </td>
  <td class=xl1536787>6.00 </td>
  <td class=xl1536787>6.00 </td>
  <td class=xl1536787>6.00 </td>
  <td class=xl1536787>6.00 </td>
  <td class=xl1536787>6.00 </td>
  <td class=xl1536787>6.00 </td>
  <td class=xl1536787>6.00 </td>
  <td class=xl1536787>6.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1746787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl876787 style='border-left:none'>&nbsp;</td>
  <td class=xl786787 width=67 style='width:50pt'>&nbsp;</td>
  <td colspan=12 class=xl1696787 style='border-left:none'>2019 Coincidental
  Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>New
  York<span style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-top:none;border-left:none'>1236 </td>
  <td class=xl966787 style='border-top:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-top:none;border-left:none;
  width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1426787 style='height:18.0pt;border-top:none'>Technology
  Partners</td>
  <td class=xl1006787></td>
  <td class=xl916787>TCT-W12C-4</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>3.00</td>
  <td class=xl1446787>2.83</td>
  <td class=xl1446787>2.67</td>
  <td class=xl1446787>2.85</td>
  <td class=xl1446787>2.83</td>
  <td class=xl1446787>2.85</td>
  <td class=xl1446787>2.86</td>
  <td class=xl1446787>1.40</td>
  <td class=xl1446787>1.62</td>
  <td class=xl1446787>1.98</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>3.00 </td>
  <td class=xl1456787>2.83 </td>
  <td class=xl1456787>2.67 </td>
  <td class=xl1456787>2.85 </td>
  <td class=xl1456787>2.83 </td>
  <td class=xl1456787>2.85 </td>
  <td class=xl1456787>2.86 </td>
  <td class=xl1456787>1.40 </td>
  <td class=xl1456787>1.62 </td>
  <td class=xl1456787>1.98 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>3,077 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.97 </td>
  <td class=xl1536787>0.92 </td>
  <td class=xl1536787>0.87 </td>
  <td class=xl1536787>0.93 </td>
  <td class=xl1536787>0.92 </td>
  <td class=xl1536787>0.93 </td>
  <td class=xl1536787>0.93 </td>
  <td class=xl1536787>0.45 </td>
  <td class=xl1536787>0.53 </td>
  <td class=xl1536787>0.64 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>5.03 </td>
  <td class=xl1316787>5.08 </td>
  <td class=xl1316787>5.13 </td>
  <td class=xl1316787>5.07 </td>
  <td class=xl1316787>5.08 </td>
  <td class=xl1316787>5.07 </td>
  <td class=xl1316787>5.07 </td>
  <td class=xl1316787>5.55 </td>
  <td class=xl1316787>5.47 </td>
  <td class=xl1316787>5.36 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td colspan=17 height=40 class=xl1086787 style='border-right:1.0pt solid black;
  height:30.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1126787 style='height:30.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Outsource
  Partners Intl</td>
  <td class=xl976787 style='border-top:none;border-left:none'>407 </td>
  <td class=xl886787 style='border-left:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W4A-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>2.06</td>
  <td class=xl1446787>2.36</td>
  <td class=xl1446787>2.26</td>
  <td class=xl1446787>1.60</td>
  <td class=xl1446787>1.90</td>
  <td class=xl1446787>1.84</td>
  <td class=xl1446787>1.88</td>
  <td class=xl1446787>1.95</td>
  <td class=xl1446787>2.19</td>
  <td class=xl1446787>2.14</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1166787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl996787></td>
  <td class=xl916787>TCT-W4B-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1166787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl996787></td>
  <td class=xl916787>TCT-W4C-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1166787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl996787></td>
  <td class=xl916787>TCT-W4C-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.92</td>
  <td class=xl1446787>0.94</td>
  <td class=xl1446787>1.02</td>
  <td class=xl1446787>1.41</td>
  <td class=xl1446787>1.04</td>
  <td class=xl1446787>1.25</td>
  <td class=xl1446787>1.22</td>
  <td class=xl1446787>1.10</td>
  <td class=xl1446787>1.04</td>
  <td class=xl1446787>1.08</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1166787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl996787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>2.98 </td>
  <td class=xl1456787>3.30 </td>
  <td class=xl1456787>3.28 </td>
  <td class=xl1456787>3.02 </td>
  <td class=xl1456787>2.95 </td>
  <td class=xl1456787>3.09 </td>
  <td class=xl1456787>3.10 </td>
  <td class=xl1456787>3.06 </td>
  <td class=xl1456787>3.22 </td>
  <td class=xl1456787>3.22 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>3,005 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.99 </td>
  <td class=xl1536787>1.10 </td>
  <td class=xl1536787>1.09 </td>
  <td class=xl1536787>1.00 </td>
  <td class=xl1536787>0.98 </td>
  <td class=xl1536787>1.03 </td>
  <td class=xl1536787>1.03 </td>
  <td class=xl1536787>1.02 </td>
  <td class=xl1536787>1.07 </td>
  <td class=xl1536787>1.07 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>5.01 </td>
  <td class=xl1316787>4.90 </td>
  <td class=xl1316787>4.91 </td>
  <td class=xl1316787>5.00 </td>
  <td class=xl1316787>5.02 </td>
  <td class=xl1316787>4.97 </td>
  <td class=xl1316787>4.97 </td>
  <td class=xl1316787>4.98 </td>
  <td class=xl1316787>4.93 </td>
  <td class=xl1316787>4.93 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Pier
  Capital</td>
  <td class=xl976787 style='border-top:none;border-left:none'>740 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7E-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>3.41</td>
  <td class=xl1446787>3.71</td>
  <td class=xl1446787>3.32</td>
  <td class=xl1446787>3.30</td>
  <td class=xl1446787>3.80</td>
  <td class=xl1446787>3.77</td>
  <td class=xl1446787>4.74</td>
  <td class=xl1446787>3.11</td>
  <td class=xl1446787>3.08</td>
  <td class=xl1446787>3.54</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7N</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>3.10</td>
  <td class=xl1446787>3.18</td>
  <td class=xl1446787>3.27</td>
  <td class=xl1446787>3.26</td>
  <td class=xl1446787>3.27</td>
  <td class=xl1446787>3.16</td>
  <td class=xl1446787>3.15</td>
  <td class=xl1446787>3.26</td>
  <td class=xl1446787>3.26</td>
  <td class=xl1446787>3.26</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>6.51 </td>
  <td class=xl1456787>6.89 </td>
  <td class=xl1456787>6.59 </td>
  <td class=xl1456787>6.56 </td>
  <td class=xl1456787>7.07 </td>
  <td class=xl1456787>6.93 </td>
  <td class=xl1456787>7.89 </td>
  <td class=xl1456787>6.37 </td>
  <td class=xl1456787>6.34 </td>
  <td class=xl1456787>6.80 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>5,631 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.16 </td>
  <td class=xl1536787>1.22 </td>
  <td class=xl1536787>1.17 </td>
  <td class=xl1536787>1.16 </td>
  <td class=xl1536787>1.25 </td>
  <td class=xl1536787>1.23 </td>
  <td class=xl1536787>1.40 </td>
  <td class=xl1536787>1.13 </td>
  <td class=xl1536787>1.13 </td>
  <td class=xl1536787>1.21 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.84 </td>
  <td class=xl1316787>4.78 </td>
  <td class=xl1316787>4.83 </td>
  <td class=xl1316787>4.84 </td>
  <td class=xl1316787>4.75 </td>
  <td class=xl1316787>4.77 </td>
  <td class=xl1316787>4.60 </td>
  <td class=xl1316787>4.87 </td>
  <td class=xl1316787>4.87 </td>
  <td class=xl1316787>4.79 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td colspan=17 height=40 class=xl1086787 style='border-right:1.0pt solid black;
  height:30.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1186787 style='height:30.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl1016787 style='border-left:none'>Suite</td>
  <td class=xl1266787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1196787 width=163 style='height:30.0pt;border-top:none;
  width:122pt'>Virtusa (Polaris)</td>
  <td class=xl1016787 style='border-top:none;border-left:none'>340</td>
  <td class=xl1036787>Meter #</td>
  <td class=xl1026787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl1016787 style='border-left:none'>Jan</td>
  <td class=xl1016787 style='border-left:none'>Feb</td>
  <td class=xl1016787 style='border-left:none'>March</td>
  <td class=xl1016787 style='border-left:none'>April</td>
  <td class=xl1016787 style='border-left:none'>May</td>
  <td class=xl1016787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl1016787 style='border-left:none'>July</td>
  <td class=xl1016787 style='border-left:none'>August</td>
  <td class=xl1016787 style='border-left:none'>Sept</td>
  <td class=xl1016787 style='border-left:none'>Oct</td>
  <td class=xl1016787 style='border-left:none'>Nov</td>
  <td class=xl1046787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W3B-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.21</td>
  <td class=xl1446787>0.06</td>
  <td class=xl1446787>0.19</td>
  <td class=xl1446787>0.18</td>
  <td class=xl1446787>0.09</td>
  <td class=xl1446787>0.20</td>
  <td class=xl1446787>0.05</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W3B-2</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.84</td>
  <td class=xl1446787>0.92</td>
  <td class=xl1446787>0.74</td>
  <td class=xl1446787>0.79</td>
  <td class=xl1446787>0.66</td>
  <td class=xl1446787>0.77</td>
  <td class=xl1446787>0.59</td>
  <td class=xl1446787>0.71</td>
  <td class=xl1446787>0.24</td>
  <td class=xl1446787>0.23</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W3C-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.36</td>
  <td class=xl1446787>0.38</td>
  <td class=xl1446787>0.36</td>
  <td class=xl1446787>0.08</td>
  <td class=xl1446787>0.29</td>
  <td class=xl1446787>0.18</td>
  <td class=xl1446787>0.19</td>
  <td class=xl1446787>0.05</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.02</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W3C-2</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.18</td>
  <td class=xl1446787>0.28</td>
  <td class=xl1446787>0.12</td>
  <td class=xl1446787>0.26</td>
  <td class=xl1446787>0.19</td>
  <td class=xl1446787>0.08</td>
  <td class=xl1446787>0.06</td>
  <td class=xl1446787>0.16</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-W3D-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>2.71</td>
  <td class=xl1446787>2.72</td>
  <td class=xl1446787>2.39</td>
  <td class=xl1446787>2.66</td>
  <td class=xl1446787>2.62</td>
  <td class=xl1446787>2.38</td>
  <td class=xl1446787>2.64</td>
  <td class=xl1446787>2.65</td>
  <td class=xl1446787>2.33</td>
  <td class=xl1446787>1.92</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1446787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1446787>4.30</td>
  <td class=xl1446787>4.36</td>
  <td class=xl1446787>3.79</td>
  <td class=xl1446787>3.96</td>
  <td class=xl1446787>3.85</td>
  <td class=xl1446787>3.62</td>
  <td class=xl1446787>3.53</td>
  <td class=xl1446787>3.57</td>
  <td class=xl1446787>2.57</td>
  <td class=xl1446787>2.17</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>2,450 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.75 </td>
  <td class=xl1536787>1.78 </td>
  <td class=xl1536787>1.55 </td>
  <td class=xl1536787>1.62 </td>
  <td class=xl1536787>1.57 </td>
  <td class=xl1536787>1.48 </td>
  <td class=xl1536787>1.44 </td>
  <td class=xl1536787>1.46 </td>
  <td class=xl1536787>1.05 </td>
  <td class=xl1536787>0.89 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.25 </td>
  <td class=xl1316787>4.22 </td>
  <td class=xl1316787>4.45 </td>
  <td class=xl1316787>4.38 </td>
  <td class=xl1316787>4.43 </td>
  <td class=xl1316787>4.52 </td>
  <td class=xl1316787>4.56 </td>
  <td class=xl1316787>4.54 </td>
  <td class=xl1316787>4.95 </td>
  <td class=xl1316787>5.11 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Principis
  Capital</td>
  <td class=xl976787 style='border-top:none;border-left:none'>700 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7F</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>0.26</td>
  <td class=xl1446787>0.67</td>
  <td class=xl1446787>0.07</td>
  <td class=xl1446787>0.11</td>
  <td class=xl1446787>0.57</td>
  <td class=xl1446787>0.15</td>
  <td class=xl1446787>0.16</td>
  <td class=xl1446787>0.16</td>
  <td class=xl1446787>0.11</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7G</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>17.06</td>
  <td class=xl1446787>15.19</td>
  <td class=xl1446787>14.81</td>
  <td class=xl1446787>13.25</td>
  <td class=xl1446787>6.56</td>
  <td class=xl1446787>5.00</td>
  <td class=xl1446787>4.76</td>
  <td class=xl1446787>4.59</td>
  <td class=xl1446787>4.50</td>
  <td class=xl1446787>5.19</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7H-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W7H-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>17.32 </td>
  <td class=xl1456787>15.86 </td>
  <td class=xl1456787>14.88 </td>
  <td class=xl1456787>13.36 </td>
  <td class=xl1456787>7.13 </td>
  <td class=xl1456787>5.15 </td>
  <td class=xl1456787>4.92 </td>
  <td class=xl1456787>4.75 </td>
  <td class=xl1456787>4.61 </td>
  <td class=xl1456787>5.20 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.26)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.67)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.07)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.11)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.57)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.15)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.16)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.16)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.11)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.01)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(17.06)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(15.19)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(14.81)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(13.25)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(6.56)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(5.00)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(4.76)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(4.59)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(4.50)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(5.19)</font></td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(17.32)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(15.86)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(14.88)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(13.36)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(7.13)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(5.15)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.92)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.75)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(4.61)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(5.20)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>6,272 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>7.07 </td>
  <td class=xl1536787>6.47 </td>
  <td class=xl1536787>6.07 </td>
  <td class=xl1536787>5.45 </td>
  <td class=xl1536787>2.91 </td>
  <td class=xl1536787>2.10 </td>
  <td class=xl1536787>2.01 </td>
  <td class=xl1536787>1.94 </td>
  <td class=xl1536787>1.88 </td>
  <td class=xl1536787>2.12 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1296787 style='height:18.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(1.07)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(0.47)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(0.07)</font></td>
  <td class=xl1316787>0.55 </td>
  <td class=xl1316787>3.09 </td>
  <td class=xl1316787>3.90 </td>
  <td class=xl1316787>3.99 </td>
  <td class=xl1316787>4.06 </td>
  <td class=xl1316787>4.12 </td>
  <td class=xl1316787>3.88 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Qwest
  Communications</td>
  <td class=xl976787 style='border-top:none;border-left:none'>725 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>(Century Link)</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E7E</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>358.00</td>
  <td class=xl1446787>357.00</td>
  <td class=xl1446787>362.00</td>
  <td class=xl1446787>356.00</td>
  <td class=xl1446787>356.00</td>
  <td class=xl1446787>346.00</td>
  <td class=xl1446787>348.00</td>
  <td class=xl1446787>344.00</td>
  <td class=xl1446787>342.00</td>
  <td class=xl1446787>332.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>358.00 </td>
  <td class=xl1456787>357.00 </td>
  <td class=xl1456787>362.00 </td>
  <td class=xl1456787>356.00 </td>
  <td class=xl1456787>356.00 </td>
  <td class=xl1456787>346.00 </td>
  <td class=xl1456787>348.00 </td>
  <td class=xl1456787>344.00 </td>
  <td class=xl1456787>342.00 </td>
  <td class=xl1456787>332.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>560 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>202.00 </td>
  <td class=xl746787>203.00 </td>
  <td class=xl746787>198.00 </td>
  <td class=xl746787>204.00 </td>
  <td class=xl746787>204.00 </td>
  <td class=xl746787>214.00 </td>
  <td class=xl746787>212.00 </td>
  <td class=xl746787>216.00 </td>
  <td class=xl746787>218.00 </td>
  <td class=xl746787>228.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>560 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>202.00 </td>
  <td class=xl1536787>203.00 </td>
  <td class=xl1536787>198.00 </td>
  <td class=xl1536787>204.00 </td>
  <td class=xl1536787>204.00 </td>
  <td class=xl1536787>214.00 </td>
  <td class=xl1536787>212.00 </td>
  <td class=xl1536787>216.00 </td>
  <td class=xl1536787>218.00 </td>
  <td class=xl1536787>228.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>       </span>15,982 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>22.40 </td>
  <td class=xl1536787>22.34 </td>
  <td class=xl1536787>22.65 </td>
  <td class=xl1536787>22.28 </td>
  <td class=xl1536787>22.28 </td>
  <td class=xl1536787>21.65 </td>
  <td class=xl1536787>21.77 </td>
  <td class=xl1536787>21.52 </td>
  <td class=xl1536787>21.40 </td>
  <td class=xl1536787>20.77 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(16.40)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(16.34)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(16.65)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(16.28)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(16.28)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(15.65)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(15.77)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(15.52)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(15.40)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(14.77)</font></td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>RKT
  Partners</td>
  <td class=xl976787 style='border-top:none;border-left:none'>201 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1486787>TCT-W2B-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>2.86</td>
  <td class=xl1446787>2.90</td>
  <td class=xl1446787>2.99</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1486787>TCT-W2B-2</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>10.22</td>
  <td class=xl1446787>11.78</td>
  <td class=xl1446787>11.56</td>
  <td class=xl1446787>12.32</td>
  <td class=xl1446787>10.28</td>
  <td class=xl1446787>9.96</td>
  <td class=xl1446787>6.40</td>
  <td class=xl1446787>7.30</td>
  <td class=xl1446787>7.29</td>
  <td class=xl1446787>8.82</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>13.08 </td>
  <td class=xl1456787>14.68 </td>
  <td class=xl1456787>14.56 </td>
  <td class=xl1456787>12.33 </td>
  <td class=xl1456787>10.28 </td>
  <td class=xl1456787>9.97 </td>
  <td class=xl1456787>6.40 </td>
  <td class=xl1456787>7.31 </td>
  <td class=xl1456787>7.30 </td>
  <td class=xl1456787>8.82 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>1,445 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>9.05 </td>
  <td class=xl1536787>10.16 </td>
  <td class=xl1536787>10.07 </td>
  <td class=xl1536787>8.53 </td>
  <td class=xl1536787>7.12 </td>
  <td class=xl1536787>6.90 </td>
  <td class=xl1536787>4.43 </td>
  <td class=xl1536787>5.06 </td>
  <td class=xl1536787>5.05 </td>
  <td class=xl1536787>6.11 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(3.05)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(4.16)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(4.07)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(2.53)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(1.12)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(0.90)</font></td>
  <td class=xl1316787>1.57 </td>
  <td class=xl1316787>0.94 </td>
  <td class=xl1316787>0.95 </td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(0.11)</font></td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1086787 style='border-right:1.0pt solid black;
  height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1686787 style='height:18.0pt;border-top:none'>Work
  Social</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1208 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1646787 style='height:18.0pt'>Start Date TBD</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W12C-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>2.05</td>
  <td class=xl1446787>1.15</td>
  <td class=xl1446787>1.72</td>
  <td class=xl1446787>1.37</td>
  <td class=xl1446787>1.73</td>
  <td class=xl1446787>1.70</td>
  <td class=xl1446787>1.55</td>
  <td class=xl1446787>1.55</td>
  <td class=xl1446787>1.68</td>
  <td class=xl1446787>1.72</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W12D-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>1.06</td>
  <td class=xl1446787>1.79</td>
  <td class=xl1446787>0.92</td>
  <td class=xl1446787>1.32</td>
  <td class=xl1446787>1.02</td>
  <td class=xl1446787>0.96</td>
  <td class=xl1446787>1.18</td>
  <td class=xl1446787>1.14</td>
  <td class=xl1446787>1.31</td>
  <td class=xl1446787>1.40</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>No Meter #</td>
  <td class=xl896787 width=67 style='width:50pt'>Gen</td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1626787></td>
  <td class=xl916787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>3.11 </td>
  <td class=xl1456787>2.94 </td>
  <td class=xl1456787>2.64 </td>
  <td class=xl1456787>2.69 </td>
  <td class=xl1456787>2.74 </td>
  <td class=xl1456787>2.66 </td>
  <td class=xl1456787>2.73 </td>
  <td class=xl1456787>2.70 </td>
  <td class=xl1456787>2.99 </td>
  <td class=xl1456787>3.12 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>3,015 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.03 </td>
  <td class=xl1536787>0.98 </td>
  <td class=xl1536787>0.88 </td>
  <td class=xl1536787>0.89 </td>
  <td class=xl1536787>0.91 </td>
  <td class=xl1536787>0.88 </td>
  <td class=xl1536787>0.90 </td>
  <td class=xl1536787>0.89 </td>
  <td class=xl1536787>0.99 </td>
  <td class=xl1536787>1.03 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1296787 style='height:18.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.97 </td>
  <td class=xl1316787>5.02 </td>
  <td class=xl1316787>5.12 </td>
  <td class=xl1316787>5.11 </td>
  <td class=xl1316787>5.09 </td>
  <td class=xl1316787>5.12 </td>
  <td class=xl1316787>5.10 </td>
  <td class=xl1316787>5.11 </td>
  <td class=xl1316787>5.01 </td>
  <td class=xl1316787>4.97 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>T-Four</td>
  <td class=xl976787 style='border-top:none;border-left:none'>205 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W2A-2</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>1.05</td>
  <td class=xl1446787>0.22</td>
  <td class=xl1446787>0.36</td>
  <td class=xl1446787>0.13</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.12</td>
  <td class=xl1446787>0.13</td>
  <td class=xl1446787>0.20</td>
  <td class=xl1446787>0.16</td>
  <td class=xl1446787>0.17</td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W2B-2</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1446787>9.39</td>
  <td class=xl1446787>11.78</td>
  <td class=xl1446787>11.56</td>
  <td class=xl1446787>12.32</td>
  <td class=xl1446787>10.28</td>
  <td class=xl1446787>9.96</td>
  <td class=xl1446787>6.40</td>
  <td class=xl1446787>7.30</td>
  <td class=xl1446787>7.29</td>
  <td class=xl1446787>8.82</td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1626787></td>
  <td class=xl916787></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>10.44 </td>
  <td class=xl1456787>12.00 </td>
  <td class=xl1456787>11.92 </td>
  <td class=xl1456787>12.45 </td>
  <td class=xl1456787>10.45 </td>
  <td class=xl1456787>10.09 </td>
  <td class=xl1456787>6.52 </td>
  <td class=xl1456787>7.50 </td>
  <td class=xl1456787>7.44 </td>
  <td class=xl1456787>8.98 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(9.39)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(11.78)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(11.56)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(12.32)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(10.28)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(9.96)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(6.40)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(7.30)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(7.29)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.82)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(9.39)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(11.78)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(11.56)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(12.32)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(10.28)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(9.96)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(6.40)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(7.30)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(7.29)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(8.82)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>2,995 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>3.46 </td>
  <td class=xl1536787>3.98 </td>
  <td class=xl1536787>3.95 </td>
  <td class=xl1536787>4.13 </td>
  <td class=xl1536787>3.47 </td>
  <td class=xl1536787>3.35 </td>
  <td class=xl1536787>2.16 </td>
  <td class=xl1536787>2.49 </td>
  <td class=xl1536787>2.47 </td>
  <td class=xl1536787>2.98 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>2.54 </td>
  <td class=xl1316787>2.02 </td>
  <td class=xl1316787>2.05 </td>
  <td class=xl1316787>1.87 </td>
  <td class=xl1316787>2.53 </td>
  <td class=xl1316787>2.65 </td>
  <td class=xl1316787>3.84 </td>
  <td class=xl1316787>3.51 </td>
  <td class=xl1316787>3.53 </td>
  <td class=xl1316787>3.02 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td colspan=17 height=40 class=xl1086787 style='border-right:1.0pt solid black;
  height:30.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1176787 width=163 style='height:18.0pt;border-top:none;
  width:122pt'>Sovereign Logistics</td>
  <td class=xl976787 style='border-top:none;border-left:none'>430 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E4A-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>1.92</td>
  <td class=xl1446787>2.12</td>
  <td class=xl1446787>1.88</td>
  <td class=xl1446787>1.84</td>
  <td class=xl1446787>1.84</td>
  <td class=xl1446787>1.74</td>
  <td class=xl1446787>1.73</td>
  <td class=xl1446787>1.90</td>
  <td class=xl1446787>1.74</td>
  <td class=xl1446787>1.74</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E4B-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>3.40</td>
  <td class=xl1446787>3.32</td>
  <td class=xl1446787>2.97</td>
  <td class=xl1446787>2.37</td>
  <td class=xl1446787>2.14</td>
  <td class=xl1446787>2.37</td>
  <td class=xl1446787>2.74</td>
  <td class=xl1446787>2.86</td>
  <td class=xl1446787>2.38</td>
  <td class=xl1446787>2.50</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E4B-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.48</td>
  <td class=xl1446787>0.48</td>
  <td class=xl1446787>0.48</td>
  <td class=xl1446787>0.48</td>
  <td class=xl1446787>0.48</td>
  <td class=xl1446787>0.48</td>
  <td class=xl1446787>0.48</td>
  <td class=xl1446787>0.48</td>
  <td class=xl1446787>0.48</td>
  <td class=xl1446787>0.45</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>5.81 </td>
  <td class=xl1456787>5.92 </td>
  <td class=xl1456787>5.32 </td>
  <td class=xl1456787>4.69 </td>
  <td class=xl1456787>4.46 </td>
  <td class=xl1456787>4.59 </td>
  <td class=xl1456787>4.94 </td>
  <td class=xl1456787>5.24 </td>
  <td class=xl1456787>4.61 </td>
  <td class=xl1456787>4.69 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>2,328 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>2.50 </td>
  <td class=xl1536787>2.54 </td>
  <td class=xl1536787>2.29 </td>
  <td class=xl1536787>2.02 </td>
  <td class=xl1536787>1.92 </td>
  <td class=xl1536787>1.97 </td>
  <td class=xl1536787>2.12 </td>
  <td class=xl1536787>2.25 </td>
  <td class=xl1536787>1.98 </td>
  <td class=xl1536787>2.02 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1296787 style='height:18.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>3.50 </td>
  <td class=xl1316787>3.46 </td>
  <td class=xl1316787>3.71 </td>
  <td class=xl1316787>3.98 </td>
  <td class=xl1316787>4.08 </td>
  <td class=xl1316787>4.03 </td>
  <td class=xl1316787>3.88 </td>
  <td class=xl1316787>3.75 </td>
  <td class=xl1316787>4.02 </td>
  <td class=xl1316787>3.98 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>SS&amp;C/Conifer
  Asset Solutions</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1505 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W14E</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>14.27</td>
  <td class=xl1446787>12.60</td>
  <td class=xl1446787>13.75</td>
  <td class=xl1446787>13.31</td>
  <td class=xl1446787>13.24</td>
  <td class=xl1446787>13.53</td>
  <td class=xl1446787>12.53</td>
  <td class=xl1446787>12.95</td>
  <td class=xl1446787>12.99</td>
  <td class=xl1446787>13.40</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl1606787></td>
  <td class=xl676787 width=67 style='width:50pt'>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl686787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>14.27 </td>
  <td class=xl1456787>12.60 </td>
  <td class=xl1456787>13.75 </td>
  <td class=xl1456787>13.31 </td>
  <td class=xl1456787>13.24 </td>
  <td class=xl1456787>13.53 </td>
  <td class=xl1456787>12.53 </td>
  <td class=xl1456787>12.95 </td>
  <td class=xl1456787>12.99 </td>
  <td class=xl1456787>13.40 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>       </span>13,000 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.10 </td>
  <td class=xl1536787>0.97 </td>
  <td class=xl1536787>1.06 </td>
  <td class=xl1536787>1.02 </td>
  <td class=xl1536787>1.02 </td>
  <td class=xl1536787>1.04 </td>
  <td class=xl1536787>0.96 </td>
  <td class=xl1536787>1.00 </td>
  <td class=xl1536787>1.00 </td>
  <td class=xl1536787>1.03 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1296787 style='height:18.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.90 </td>
  <td class=xl1316787>5.03 </td>
  <td class=xl1316787>4.94 </td>
  <td class=xl1316787>4.98 </td>
  <td class=xl1316787>4.98 </td>
  <td class=xl1316787>4.96 </td>
  <td class=xl1316787>5.04 </td>
  <td class=xl1316787>5.00 </td>
  <td class=xl1316787>5.00 </td>
  <td class=xl1316787>4.97 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>State of
  New Jersey OTIS</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1135 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W11A</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>7.86</td>
  <td class=xl1446787>7.84</td>
  <td class=xl1446787>7.88</td>
  <td class=xl1446787>6.88</td>
  <td class=xl1446787>6.88</td>
  <td class=xl1446787>6.91</td>
  <td class=xl1446787>7.00</td>
  <td class=xl1446787>6.87</td>
  <td class=xl1446787>6.88</td>
  <td class=xl1446787>6.69</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W11B</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>16.59</td>
  <td class=xl1446787>9.48</td>
  <td class=xl1446787>9.39</td>
  <td class=xl1446787>10.00</td>
  <td class=xl1446787>11.50</td>
  <td class=xl1446787>10.95</td>
  <td class=xl1446787>10.64</td>
  <td class=xl1446787>12.49</td>
  <td class=xl1446787>12.13</td>
  <td class=xl1446787>10.89</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>24.45 </td>
  <td class=xl1456787>17.32 </td>
  <td class=xl1456787>17.27 </td>
  <td class=xl1456787>16.88 </td>
  <td class=xl1456787>18.38 </td>
  <td class=xl1456787>17.86 </td>
  <td class=xl1456787>17.64 </td>
  <td class=xl1456787>19.36 </td>
  <td class=xl1456787>19.01 </td>
  <td class=xl1456787>17.58 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>21 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>13.14 </td>
  <td class=xl1536787>13.16 </td>
  <td class=xl1536787>13.12 </td>
  <td class=xl1536787>14.12 </td>
  <td class=xl1536787>14.12 </td>
  <td class=xl1536787>14.09 </td>
  <td class=xl1536787>14.00 </td>
  <td class=xl1536787>14.13 </td>
  <td class=xl1536787>14.12 </td>
  <td class=xl1536787>14.31 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(16.59)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(9.48)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(9.39)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(10.00)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(11.50)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(10.95)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(10.64)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(12.49)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(12.13)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(10.89)</font></td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>21 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(3.45)</font></td>
  <td class=xl1536787>3.68 </td>
  <td class=xl1536787>3.73 </td>
  <td class=xl1536787>4.12 </td>
  <td class=xl1536787>2.62 </td>
  <td class=xl1536787>3.14 </td>
  <td class=xl1536787>3.36 </td>
  <td class=xl1536787>1.64 </td>
  <td class=xl1536787>1.99 </td>
  <td class=xl1536787>3.42 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>20 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1166787 style='height:18.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>1,275 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>19.18 </td>
  <td class=xl1536787>13.58 </td>
  <td class=xl1536787>13.55 </td>
  <td class=xl1536787>13.24 </td>
  <td class=xl1536787>14.42 </td>
  <td class=xl1536787>14.01 </td>
  <td class=xl1536787>13.84 </td>
  <td class=xl1536787>15.18 </td>
  <td class=xl1536787>14.91 </td>
  <td class=xl1536787>13.79 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(13.18)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(7.58)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(7.55)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(7.24)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(8.42)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(8.01)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(7.84)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(9.18)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(8.91)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(7.79)</font></td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td colspan=17 height=40 class=xl1086787 style='border-right:1.0pt solid black;
  height:30.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1126787 style='height:30.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1126787 style='height:30.0pt;border-top:none'>Stifel
  Nicolaus &amp; Co. Inc</td>
  <td class=xl976787 style='border-top:none;border-left:none'>901 </td>
  <td class=xl886787 style='border-left:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E10A</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>36.00</td>
  <td class=xl1446787>35.00</td>
  <td class=xl1446787>35.00</td>
  <td class=xl1446787>35.00</td>
  <td class=xl1446787>35.04</td>
  <td class=xl1446787>35.00</td>
  <td class=xl1446787>33.00</td>
  <td class=xl1446787>32.96</td>
  <td class=xl1446787>32.96</td>
  <td class=xl1446787>34.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E9A-1</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>37.54</td>
  <td class=xl1446787>36.41</td>
  <td class=xl1446787>34.91</td>
  <td class=xl1446787>34.77</td>
  <td class=xl1446787>34.63</td>
  <td class=xl1446787>34.67</td>
  <td class=xl1446787>34.16</td>
  <td class=xl1446787>34.06</td>
  <td class=xl1446787>33.88</td>
  <td class=xl1446787>33.69</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E10C</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>13.50</td>
  <td class=xl1446787>12.00</td>
  <td class=xl1446787>12.25</td>
  <td class=xl1446787>12.50</td>
  <td class=xl1446787>12.50</td>
  <td class=xl1446787>16.00</td>
  <td class=xl1446787>15.00</td>
  <td class=xl1446787>14.25</td>
  <td class=xl1446787>14.00</td>
  <td class=xl1446787>8.75</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E10D</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>14.13</td>
  <td class=xl1446787>13.25</td>
  <td class=xl1446787>16.63</td>
  <td class=xl1446787>19.88</td>
  <td class=xl1446787>14.75</td>
  <td class=xl1446787>14.13</td>
  <td class=xl1446787>10.50</td>
  <td class=xl1446787>8.75</td>
  <td class=xl1446787>7.00</td>
  <td class=xl1446787>6.50</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E9B-1</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>25.41</td>
  <td class=xl1446787>28.23</td>
  <td class=xl1446787>25.77</td>
  <td class=xl1446787>16.53</td>
  <td class=xl1446787>22.96</td>
  <td class=xl1446787>23.38</td>
  <td class=xl1446787>35.68</td>
  <td class=xl1446787>23.94</td>
  <td class=xl1446787>26.58</td>
  <td class=xl1446787>34.15</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E9B-2</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>15.62</td>
  <td class=xl1446787>16.88</td>
  <td class=xl1446787>15.64</td>
  <td class=xl1446787>18.40</td>
  <td class=xl1446787>17.98</td>
  <td class=xl1446787>10.73</td>
  <td class=xl1446787>11.07</td>
  <td class=xl1446787>10.93</td>
  <td class=xl1446787>14.18</td>
  <td class=xl1446787>11.39</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E9B-3</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E9B-4</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>142.21 </td>
  <td class=xl1456787>141.77 </td>
  <td class=xl1456787>140.20 </td>
  <td class=xl1456787>137.08 </td>
  <td class=xl1456787>137.85 </td>
  <td class=xl1456787>133.91 </td>
  <td class=xl1456787>139.41 </td>
  <td class=xl1456787>124.89 </td>
  <td class=xl1456787>128.60 </td>
  <td class=xl1456787>128.48 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>240 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>166.46 </td>
  <td class=xl1536787>168.59 </td>
  <td class=xl1536787>170.09 </td>
  <td class=xl1536787>170.23 </td>
  <td class=xl1536787>170.33 </td>
  <td class=xl1536787>170.33 </td>
  <td class=xl1536787>172.84 </td>
  <td class=xl1536787>172.98 </td>
  <td class=xl1536787>173.16 </td>
  <td class=xl1536787>172.31 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>145 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>117.37 </td>
  <td class=xl746787>119.75 </td>
  <td class=xl746787>116.12 </td>
  <td class=xl746787>112.62 </td>
  <td class=xl746787>117.75 </td>
  <td class=xl746787>114.87 </td>
  <td class=xl746787>119.50 </td>
  <td class=xl746787>122.00 </td>
  <td class=xl746787>124.00 </td>
  <td class=xl746787>129.75 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>385 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>283.83 </td>
  <td class=xl1536787>288.34 </td>
  <td class=xl1536787>286.21 </td>
  <td class=xl1536787>282.85 </td>
  <td class=xl1536787>288.08 </td>
  <td class=xl1536787>285.20 </td>
  <td class=xl1536787>292.34 </td>
  <td class=xl1536787>294.98 </td>
  <td class=xl1536787>297.16 </td>
  <td class=xl1536787>302.06 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>105 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>6,443 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>22.07 </td>
  <td class=xl1536787>22.00 </td>
  <td class=xl1536787>21.76 </td>
  <td class=xl1536787>21.28 </td>
  <td class=xl1536787>21.40 </td>
  <td class=xl1536787>20.78 </td>
  <td class=xl1536787>21.64 </td>
  <td class=xl1536787>19.38 </td>
  <td class=xl1536787>19.96 </td>
  <td class=xl1536787>19.94 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(16.07)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(16.00)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(15.76)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(15.28)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(15.40)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(14.78)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(15.64)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(13.38)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(13.96)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(13.94)</font></td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td colspan=17 height=40 class=xl1086787 style='border-right:1.0pt solid black;
  height:30.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1186787 style='height:30.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl1016787 style='border-left:none'>Suite</td>
  <td class=xl1266787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1196787 width=163 style='height:30.0pt;border-top:none;
  width:122pt'>SumRidge Partners</td>
  <td class=xl1016787 style='border-top:none;border-left:none'>320</td>
  <td class=xl1036787>Meter #</td>
  <td class=xl1026787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl1016787 style='border-left:none'>Jan</td>
  <td class=xl1016787 style='border-left:none'>Feb</td>
  <td class=xl1016787 style='border-left:none'>March</td>
  <td class=xl1016787 style='border-left:none'>April</td>
  <td class=xl1016787 style='border-left:none'>May</td>
  <td class=xl1016787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl1016787 style='border-left:none'>July</td>
  <td class=xl1016787 style='border-left:none'>August</td>
  <td class=xl1016787 style='border-left:none'>Sept</td>
  <td class=xl1016787 style='border-left:none'>Oct</td>
  <td class=xl1016787 style='border-left:none'>Nov</td>
  <td class=xl1046787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E3A-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.15</td>
  <td class=xl1446787>0.16</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.16</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.01</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1506787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E3C-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.08</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.15</td>
  <td class=xl1446787>0.27</td>
  <td class=xl1446787>0.09</td>
  <td class=xl1446787>0.17</td>
  <td class=xl1446787>0.09</td>
  <td class=xl1446787>0.11</td>
  <td class=xl1446787>0.18</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1506787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E3C-2</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1506787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E3E</td>
  <td class=xl1496787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>17.50</td>
  <td class=xl1446787>14.13</td>
  <td class=xl1446787>16.98</td>
  <td class=xl1446787>16.38</td>
  <td class=xl1446787>15.12</td>
  <td class=xl1446787>16.50</td>
  <td class=xl1446787>16.64</td>
  <td class=xl1446787>15.39</td>
  <td class=xl1446787>16.58</td>
  <td class=xl1446787>17.52</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1506787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E3F-1</td>
  <td class=xl1496787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>6.06</td>
  <td class=xl1446787>3.61</td>
  <td class=xl1446787>0.09</td>
  <td class=xl1446787>0.10</td>
  <td class=xl1446787>0.09</td>
  <td class=xl1446787>0.09</td>
  <td class=xl1446787>0.09</td>
  <td class=xl1446787>0.09</td>
  <td class=xl1446787>0.08</td>
  <td class=xl1446787>0.09</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1506787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E3F-2</td>
  <td class=xl1496787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>3.15</td>
  <td class=xl1446787>2.91</td>
  <td class=xl1446787>2.99</td>
  <td class=xl1446787>3.02</td>
  <td class=xl1446787>2.98</td>
  <td class=xl1446787>2.97</td>
  <td class=xl1446787>2.98</td>
  <td class=xl1446787>3.00</td>
  <td class=xl1446787>2.92</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1506787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1526787>&nbsp;</td>
  <td class=xl1526787>&nbsp;</td>
  <td class=xl1526787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1526787>&nbsp;</td>
  <td class=xl1526787>&nbsp;</td>
  <td class=xl1526787>&nbsp;</td>
  <td class=xl1526787>&nbsp;</td>
  <td class=xl1526787>&nbsp;</td>
  <td class=xl1526787>&nbsp;</td>
  <td class=xl1526787>&nbsp;</td>
  <td class=xl1526787>&nbsp;</td>
  <td class=xl1516787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1206787 width=163 style='height:30.0pt;width:122pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1056787 width=67 style='width:50pt'></td>
  <td class=xl1066787>23.71</td>
  <td class=xl1066787>21.12</td>
  <td class=xl1066787>19.99</td>
  <td class=xl1066787>19.77</td>
  <td class=xl1066787>18.50</td>
  <td class=xl1066787>19.67</td>
  <td class=xl1066787>19.88</td>
  <td class=xl1066787>18.55</td>
  <td class=xl1066787>19.77</td>
  <td class=xl1066787>20.72</td>
  <td class=xl1066787>0.00</td>
  <td class=xl1066787>0.00</td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>40 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>22.50 </td>
  <td class=xl1536787>25.87 </td>
  <td class=xl1536787>23.02 </td>
  <td class=xl1536787>23.62 </td>
  <td class=xl1536787>24.88 </td>
  <td class=xl1536787>23.50 </td>
  <td class=xl1536787>23.36 </td>
  <td class=xl1536787>24.61 </td>
  <td class=xl1536787>23.42 </td>
  <td class=xl1536787>22.48 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>35 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>28.94 </td>
  <td class=xl746787>141.62 </td>
  <td class=xl746787>142.08 </td>
  <td class=xl746787>141.71 </td>
  <td class=xl746787>141.71 </td>
  <td class=xl746787>141.92 </td>
  <td class=xl746787>141.85 </td>
  <td class=xl746787>141.92 </td>
  <td class=xl746787>141.88 </td>
  <td class=xl746787>141.90 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>75 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>51.44 </td>
  <td class=xl1536787>54.11 </td>
  <td class=xl1536787>55.02 </td>
  <td class=xl1536787>55.54 </td>
  <td class=xl1536787>56.77 </td>
  <td class=xl1536787>55.43 </td>
  <td class=xl1536787>55.30 </td>
  <td class=xl1536787>56.55 </td>
  <td class=xl1536787>55.34 </td>
  <td class=xl1536787>54.47 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>20 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>5,299 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>4.47 </td>
  <td class=xl1536787>3.99 </td>
  <td class=xl1536787>3.77 </td>
  <td class=xl1536787>3.73 </td>
  <td class=xl1536787>3.49 </td>
  <td class=xl1536787>3.71 </td>
  <td class=xl1536787>3.75 </td>
  <td class=xl1536787>3.50 </td>
  <td class=xl1536787>3.73 </td>
  <td class=xl1536787>3.91 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1296787 style='height:18.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>1.53 </td>
  <td class=xl1316787>2.01 </td>
  <td class=xl1316787>2.23 </td>
  <td class=xl1316787>2.27 </td>
  <td class=xl1316787>2.51 </td>
  <td class=xl1316787>2.29 </td>
  <td class=xl1316787>2.25 </td>
  <td class=xl1316787>2.50 </td>
  <td class=xl1316787>2.27 </td>
  <td class=xl1316787>2.09 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1186787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl1016787 style='border-left:none'>Suite</td>
  <td class=xl1266787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1196787 width=163 style='height:18.0pt;border-top:none;
  width:122pt'>SumRidge Partners</td>
  <td class=xl1016787 style='border-top:none;border-left:none'>317</td>
  <td class=xl1036787>Meter #</td>
  <td class=xl1026787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl1016787 style='border-left:none'>Jan</td>
  <td class=xl1016787 style='border-left:none'>Feb</td>
  <td class=xl1016787 style='border-left:none'>March</td>
  <td class=xl1016787 style='border-left:none'>April</td>
  <td class=xl1016787 style='border-left:none'>May</td>
  <td class=xl1016787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl1016787 style='border-left:none'>July</td>
  <td class=xl1016787 style='border-left:none'>August</td>
  <td class=xl1016787 style='border-left:none'>Sept</td>
  <td class=xl1016787 style='border-left:none'>Oct</td>
  <td class=xl1016787 style='border-left:none'>Nov</td>
  <td class=xl1046787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E4C</td>
  <td class=xl1496787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>7.43</td>
  <td class=xl1446787>6.82</td>
  <td class=xl1446787>6.63</td>
  <td class=xl1446787>5.25</td>
  <td class=xl1446787>5.52</td>
  <td class=xl1446787>6.51</td>
  <td class=xl1446787>5.61</td>
  <td class=xl1446787>6.19</td>
  <td class=xl1446787>5.24</td>
  <td class=xl1446787>5.18</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1446787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1486787>7.43</td>
  <td class=xl1486787>6.82</td>
  <td class=xl1486787>6.63</td>
  <td class=xl1486787>5.25</td>
  <td class=xl1486787>5.52</td>
  <td class=xl1486787>6.51</td>
  <td class=xl1486787>5.61</td>
  <td class=xl1486787>6.19</td>
  <td class=xl1486787>5.24</td>
  <td class=xl1486787>5.18</td>
  <td class=xl1486787>0</td>
  <td class=xl1486787>0</td>
  <td class=xl1486787>0</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>7,095 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.05 </td>
  <td class=xl1536787>0.96 </td>
  <td class=xl1536787>0.93 </td>
  <td class=xl1536787>0.74 </td>
  <td class=xl1536787>0.78 </td>
  <td class=xl1536787>0.92 </td>
  <td class=xl1536787>0.79 </td>
  <td class=xl1536787>0.87 </td>
  <td class=xl1536787>0.74 </td>
  <td class=xl1536787>0.73 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.95 </td>
  <td class=xl1316787>5.04 </td>
  <td class=xl1316787>5.07 </td>
  <td class=xl1316787>5.26 </td>
  <td class=xl1316787>5.22 </td>
  <td class=xl1316787>5.08 </td>
  <td class=xl1316787>5.21 </td>
  <td class=xl1316787>5.13 </td>
  <td class=xl1316787>5.26 </td>
  <td class=xl1316787>5.27 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1176787 width=163 style='height:18.0pt;border-top:none;
  width:122pt'>Terra Tech</td>
  <td class=xl976787 style='border-top:none;border-left:none'>488 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>On West UPS ?</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E2A-7</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>0.35</td>
  <td class=xl1446787>0.37</td>
  <td class=xl1446787>0.30</td>
  <td class=xl1446787>0.36</td>
  <td class=xl1446787>0.40</td>
  <td class=xl1446787>0.31</td>
  <td class=xl1446787>0.32</td>
  <td class=xl1446787>0.36</td>
  <td class=xl1446787>0.30</td>
  <td class=xl1446787>0.35</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>0.35 </td>
  <td class=xl1456787>0.37 </td>
  <td class=xl1456787>0.30 </td>
  <td class=xl1456787>0.36 </td>
  <td class=xl1456787>0.40 </td>
  <td class=xl1456787>0.31 </td>
  <td class=xl1456787>0.32 </td>
  <td class=xl1456787>0.36 </td>
  <td class=xl1456787>0.30 </td>
  <td class=xl1456787>0.35 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.35)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.37)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.30)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.36)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.40)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.31)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.32)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.36)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.30)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.35)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.35)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.37)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.30)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.36)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.40)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.31)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.32)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.36)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.30)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(0.35)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>1,600 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>58.67 </td>
  <td class=xl1536787>0.05 </td>
  <td class=xl1536787>0.04 </td>
  <td class=xl1536787>0.05 </td>
  <td class=xl1536787>0.06 </td>
  <td class=xl1536787>0.04 </td>
  <td class=xl1536787>0.04 </td>
  <td class=xl1536787>0.05 </td>
  <td class=xl1536787>0.04 </td>
  <td class=xl1536787>0.05 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(52.67)</font></td>
  <td class=xl1316787>5.95 </td>
  <td class=xl1316787>5.96 </td>
  <td class=xl1316787>5.95 </td>
  <td class=xl1316787>5.94 </td>
  <td class=xl1316787>5.96 </td>
  <td class=xl1316787>5.96 </td>
  <td class=xl1316787>5.95 </td>
  <td class=xl1316787>5.96 </td>
  <td class=xl1316787>5.95 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1166787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl996787>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>GMS</td>
  <td class=xl976787 style='border-left:none'>1234 </td>
  <td class=xl886787 style='border-left:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W12E</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>1.78</td>
  <td class=xl1446787>1.78</td>
  <td class=xl1446787>1.94</td>
  <td class=xl1446787>1.88</td>
  <td class=xl1446787>1.93</td>
  <td class=xl1446787>1.73</td>
  <td class=xl1446787>1.87</td>
  <td class=xl1446787>1.91</td>
  <td class=xl1446787>1.78</td>
  <td class=xl1446787>1.79</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W12C-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>5.08</td>
  <td class=xl1446787>5.27</td>
  <td class=xl1446787>5.32</td>
  <td class=xl1446787>5.18</td>
  <td class=xl1446787>5.48</td>
  <td class=xl1446787>5.38</td>
  <td class=xl1446787>5.26</td>
  <td class=xl1446787>4.70</td>
  <td class=xl1446787>5.06</td>
  <td class=xl1446787>5.08</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W12C-3</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>1.27</td>
  <td class=xl1446787>1.27</td>
  <td class=xl1446787>1.27</td>
  <td class=xl1446787>1.27</td>
  <td class=xl1446787>1.28</td>
  <td class=xl1446787>1.28</td>
  <td class=xl1446787>1.27</td>
  <td class=xl1446787>1.25</td>
  <td class=xl1446787>1.24</td>
  <td class=xl1446787>1.23</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>8.12 </td>
  <td class=xl1456787>8.32 </td>
  <td class=xl1456787>8.53 </td>
  <td class=xl1456787>8.33 </td>
  <td class=xl1456787>8.68 </td>
  <td class=xl1456787>8.39 </td>
  <td class=xl1456787>8.40 </td>
  <td class=xl1456787>7.86 </td>
  <td class=xl1456787>8.07 </td>
  <td class=xl1456787>8.10 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.78)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.78)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.94)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.88)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.93)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.73)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.87)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.91)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.78)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.79)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.78)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.78)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.94)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.88)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.93)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.73)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.87)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.91)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.78)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(1.79)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1166787 style='height:18.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>6,367 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.28 </td>
  <td class=xl1536787>1.31 </td>
  <td class=xl1536787>1.34 </td>
  <td class=xl1536787>1.31 </td>
  <td class=xl1536787>1.36 </td>
  <td class=xl1536787>1.32 </td>
  <td class=xl1536787>1.32 </td>
  <td class=xl1536787>1.23 </td>
  <td class=xl1536787>1.27 </td>
  <td class=xl1536787>1.27 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1296787 style='height:18.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.72 </td>
  <td class=xl1316787>4.69 </td>
  <td class=xl1316787>4.66 </td>
  <td class=xl1316787>4.69 </td>
  <td class=xl1316787>4.64 </td>
  <td class=xl1316787>4.68 </td>
  <td class=xl1316787>4.68 </td>
  <td class=xl1316787>4.77 </td>
  <td class=xl1316787>4.73 </td>
  <td class=xl1316787>4.73 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1126787 style='height:30.0pt;border-top:none'>Transcom<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-top:none;border-left:none'>605 </td>
  <td class=xl886787 style='border-left:none'>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W6C</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>11.13</td>
  <td class=xl1446787>11.24</td>
  <td class=xl1446787>11.25</td>
  <td class=xl1446787>11.38</td>
  <td class=xl1446787>11.25</td>
  <td class=xl1446787>11.13</td>
  <td class=xl1446787>11.14</td>
  <td class=xl1446787>11.14</td>
  <td class=xl1446787>11.01</td>
  <td class=xl1446787>11.13</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W6D</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>11.00</td>
  <td class=xl1446787>11.36</td>
  <td class=xl1446787>11.39</td>
  <td class=xl1446787>10.75</td>
  <td class=xl1446787>10.88</td>
  <td class=xl1446787>10.88</td>
  <td class=xl1446787>10.90</td>
  <td class=xl1446787>11.13</td>
  <td class=xl1446787>11.26</td>
  <td class=xl1446787>11.13</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W6A-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W6A-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W6A-3</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W6A-4</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W6B-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W6B-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W6E-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W6E-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>22.13 </td>
  <td class=xl1456787>22.60 </td>
  <td class=xl1456787>22.64 </td>
  <td class=xl1456787>22.13 </td>
  <td class=xl1456787>22.13 </td>
  <td class=xl1456787>22.01 </td>
  <td class=xl1456787>22.04 </td>
  <td class=xl1456787>22.27 </td>
  <td class=xl1456787>22.27 </td>
  <td class=xl1456787>22.26 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>20 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.13)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.60)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.64)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.13)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.13)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.01)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.04)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.27)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.27)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.26)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>20 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.13)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.60)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.64)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.13)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.13)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.01)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.04)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.27)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.27)</font></td>
  <td class=xl1536787><font color="#FF0000" style='mso-ignore:color'>(2.26)</font></td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>20 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>       </span>12,987 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.70 </td>
  <td class=xl1536787>1.74 </td>
  <td class=xl1536787>1.74 </td>
  <td class=xl1536787>1.70 </td>
  <td class=xl1536787>1.70 </td>
  <td class=xl1536787>1.69 </td>
  <td class=xl1536787>1.70 </td>
  <td class=xl1536787>1.71 </td>
  <td class=xl1536787>1.71 </td>
  <td class=xl1536787>1.71 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1296787 style='height:18.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.30 </td>
  <td class=xl1316787>4.26 </td>
  <td class=xl1316787>4.26 </td>
  <td class=xl1316787>4.30 </td>
  <td class=xl1316787>4.30 </td>
  <td class=xl1316787>4.31 </td>
  <td class=xl1316787>4.30 </td>
  <td class=xl1316787>4.29 </td>
  <td class=xl1316787>4.29 </td>
  <td class=xl1316787>4.29 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Wall
  Street Strategies</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1510 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W15D-1</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>6.00</td>
  <td class=xl1446787>5.04</td>
  <td class=xl1446787>5.35</td>
  <td class=xl1446787>6.42</td>
  <td class=xl1446787>5.97</td>
  <td class=xl1446787>6.47</td>
  <td class=xl1446787>6.57</td>
  <td class=xl1446787>7.04</td>
  <td class=xl1446787>5.46</td>
  <td class=xl1446787>5.92</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl946787>&nbsp;</td>
  <td class=xl946787>&nbsp;</td>
  <td class=xl946787>&nbsp;</td>
  <td class=xl946787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl926787 width=67 style='width:50pt'></td>
  <td class=xl936787>6.00 </td>
  <td class=xl936787>5.04 </td>
  <td class=xl936787>5.35 </td>
  <td class=xl936787>6.42 </td>
  <td class=xl936787>5.97 </td>
  <td class=xl936787>6.47 </td>
  <td class=xl936787>6.57 </td>
  <td class=xl936787>7.04 </td>
  <td class=xl936787>5.46 </td>
  <td class=xl936787>5.92 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>2,500 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>2.40 </td>
  <td class=xl1536787>2.02 </td>
  <td class=xl1536787>2.14 </td>
  <td class=xl1536787>2.57 </td>
  <td class=xl1536787>2.39 </td>
  <td class=xl1536787>2.59 </td>
  <td class=xl1536787>2.63 </td>
  <td class=xl1536787>2.81 </td>
  <td class=xl1536787>2.18 </td>
  <td class=xl1536787>2.37 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1296787 style='height:18.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>3.60 </td>
  <td class=xl1316787>3.98 </td>
  <td class=xl1316787>3.86 </td>
  <td class=xl1316787>3.43 </td>
  <td class=xl1316787>3.61 </td>
  <td class=xl1316787>3.41 </td>
  <td class=xl1316787>3.37 </td>
  <td class=xl1316787>3.19 </td>
  <td class=xl1316787>3.82 </td>
  <td class=xl1316787>3.63 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1176787 width=163 style='height:18.0pt;border-top:none;
  width:122pt'>Walton Family Foundation</td>
  <td class=xl976787 style='border-top:none;border-left:none'>420a</td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>Walton Enterprises</td>
  <td class=xl986787>420b</td>
  <td class=xl916787>TCT-E4A-4</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>5.25</td>
  <td class=xl1446787>5.77</td>
  <td class=xl1446787>5.86</td>
  <td class=xl1446787>5.68</td>
  <td class=xl1446787>5.77</td>
  <td class=xl1446787>6.42</td>
  <td class=xl1446787>5.44</td>
  <td class=xl1446787>5.76</td>
  <td class=xl1446787>5.36</td>
  <td class=xl1446787>5.17</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl926787 width=67 style='width:50pt'></td>
  <td class=xl936787>5.25 </td>
  <td class=xl936787>5.77 </td>
  <td class=xl936787>5.86 </td>
  <td class=xl936787>5.68 </td>
  <td class=xl936787>5.77 </td>
  <td class=xl936787>6.42 </td>
  <td class=xl936787>5.44 </td>
  <td class=xl936787>5.76 </td>
  <td class=xl936787>5.36 </td>
  <td class=xl936787>5.17 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl726787>0 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>4,130 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.27 </td>
  <td class=xl1536787>1.40 </td>
  <td class=xl1536787>1.42 </td>
  <td class=xl1536787>1.38 </td>
  <td class=xl1536787>1.40 </td>
  <td class=xl1536787>1.55 </td>
  <td class=xl1536787>1.32 </td>
  <td class=xl1536787>1.39 </td>
  <td class=xl1536787>1.30 </td>
  <td class=xl1536787>1.25 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1296787 style='height:18.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.73 </td>
  <td class=xl1316787>4.60 </td>
  <td class=xl1316787>4.58 </td>
  <td class=xl1316787>4.62 </td>
  <td class=xl1316787>4.60 </td>
  <td class=xl1316787>4.45 </td>
  <td class=xl1316787>4.68 </td>
  <td class=xl1316787>4.61 </td>
  <td class=xl1316787>4.70 </td>
  <td class=xl1316787>4.75 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Watermill<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-top:none;border-left:none'>1520 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>Institutional
  Trading</td>
  <td class=xl996787></td>
  <td class=xl916787>TCT-W15B</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>4.34</td>
  <td class=xl1446787>4.31</td>
  <td class=xl1446787>4.73</td>
  <td class=xl1446787>4.69</td>
  <td class=xl1446787>4.75</td>
  <td class=xl1446787>4.50</td>
  <td class=xl1446787>4.50</td>
  <td class=xl1446787>4.19</td>
  <td class=xl1446787>4.44</td>
  <td class=xl1446787>4.75</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E15G</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>6.28</td>
  <td class=xl1446787>6.13</td>
  <td class=xl1446787>5.91</td>
  <td class=xl1446787>5.84</td>
  <td class=xl1446787>5.91</td>
  <td class=xl1446787>5.22</td>
  <td class=xl1446787>3.53</td>
  <td class=xl1446787>5.91</td>
  <td class=xl1446787>6.25</td>
  <td class=xl1446787>6.13</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl926787 width=67 style='width:50pt'></td>
  <td class=xl936787>10.62 </td>
  <td class=xl936787>10.44 </td>
  <td class=xl936787>10.64 </td>
  <td class=xl936787>10.53 </td>
  <td class=xl936787>10.66 </td>
  <td class=xl936787>9.72 </td>
  <td class=xl936787>8.03 </td>
  <td class=xl936787>10.10 </td>
  <td class=xl936787>10.69 </td>
  <td class=xl936787>10.88 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl1536787>11.50 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>7.16 </td>
  <td class=xl1536787>7.19 </td>
  <td class=xl1536787>6.77 </td>
  <td class=xl1536787>6.81 </td>
  <td class=xl1536787>6.75 </td>
  <td class=xl1536787>7.00 </td>
  <td class=xl1536787>7.00 </td>
  <td class=xl1536787>7.31 </td>
  <td class=xl1536787>7.06 </td>
  <td class=xl1536787>6.75 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl1536787>11.50 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>7.16 </td>
  <td class=xl1536787>7.19 </td>
  <td class=xl1536787>6.77 </td>
  <td class=xl1536787>6.81 </td>
  <td class=xl1536787>6.75 </td>
  <td class=xl1536787>7.00 </td>
  <td class=xl1536787>7.00 </td>
  <td class=xl1536787>7.31 </td>
  <td class=xl1536787>7.06 </td>
  <td class=xl1536787>6.75 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1166787 style='height:18.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>2,631 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>4.04 </td>
  <td class=xl1536787>3.97 </td>
  <td class=xl1536787>4.04 </td>
  <td class=xl1536787>4.00 </td>
  <td class=xl1536787>4.05 </td>
  <td class=xl1536787>3.69 </td>
  <td class=xl1536787>3.05 </td>
  <td class=xl1536787>3.84 </td>
  <td class=xl1536787>4.06 </td>
  <td class=xl1536787>4.14 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1296787 style='height:18.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>1.96 </td>
  <td class=xl1316787>2.03 </td>
  <td class=xl1316787>1.96 </td>
  <td class=xl1316787>2.00 </td>
  <td class=xl1316787>1.95 </td>
  <td class=xl1316787>2.31 </td>
  <td class=xl1316787>2.95 </td>
  <td class=xl1316787>2.16 </td>
  <td class=xl1316787>1.94 </td>
  <td class=xl1316787>1.86 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1126787 style='height:30.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1126787 style='height:30.0pt;border-top:none'>Weil,
  Gotshal &amp; Manges</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1124 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1646787 style='height:18.0pt'>offline:2019-05</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E11B</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>49.50</td>
  <td class=xl1446787>48.89</td>
  <td class=xl1446787>48.00</td>
  <td class=xl1446787>49.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E9A-2</td>
  <td class=xl896787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>51.00</td>
  <td class=xl1446787>50.33</td>
  <td class=xl1446787>49.86</td>
  <td class=xl1446787>51.04</td>
  <td class=xl1446787>51.35</td>
  <td class=xl1446787>51.24</td>
  <td class=xl1446787>51.18</td>
  <td class=xl1446787>50.56</td>
  <td class=xl1446787>50.81</td>
  <td class=xl1446787>50.48</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E11A-1</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E11A-2</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>24.14</td>
  <td class=xl1446787>27.42</td>
  <td class=xl1446787>26.73</td>
  <td class=xl1446787>19.52</td>
  <td class=xl1446787>19.76</td>
  <td class=xl1446787>19.15</td>
  <td class=xl1446787>20.86</td>
  <td class=xl1446787>20.54</td>
  <td class=xl1446787>20.72</td>
  <td class=xl1446787>16.60</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E11A-3</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>17.10</td>
  <td class=xl1446787>19.49</td>
  <td class=xl1446787>15.78</td>
  <td class=xl1446787>21.82</td>
  <td class=xl1446787>13.04</td>
  <td class=xl1446787>18.34</td>
  <td class=xl1446787>16.94</td>
  <td class=xl1446787>19.91</td>
  <td class=xl1446787>19.93</td>
  <td class=xl1446787>16.06</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E11A-4</td>
  <td class=xl896787 width=67 style='width:50pt'>?</td>
  <td class=xl1446787>2.16</td>
  <td class=xl1446787>2.15</td>
  <td class=xl1446787>2.13</td>
  <td class=xl1446787>2.07</td>
  <td class=xl1446787>2.07</td>
  <td class=xl1446787>2.06</td>
  <td class=xl1446787>2.03</td>
  <td class=xl1446787>2.03</td>
  <td class=xl1446787>2.03</td>
  <td class=xl1446787>1.82</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E11C-1</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>20.50</td>
  <td class=xl1446787>19.04</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E11C-2</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E11C-3</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>11.71</td>
  <td class=xl1446787>10.02</td>
  <td class=xl1446787>10.91</td>
  <td class=xl1446787>0.00</td>
  <td class=xl1446787>12.88</td>
  <td class=xl1446787>12.90</td>
  <td class=xl1446787>12.81</td>
  <td class=xl1446787>12.55</td>
  <td class=xl1446787>12.46</td>
  <td class=xl1446787>12.82</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E11C-4</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>15.92</td>
  <td class=xl1446787>15.92</td>
  <td class=xl1446787>14.50</td>
  <td class=xl1446787>3.62</td>
  <td class=xl1446787>3.67</td>
  <td class=xl1446787>4.90</td>
  <td class=xl1446787>5.63</td>
  <td class=xl1446787>5.33</td>
  <td class=xl1446787>4.83</td>
  <td class=xl1446787>16.07</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-E11C-6</td>
  <td class=xl896787 width=67 style='width:50pt'>GEN</td>
  <td class=xl1446787>2.99</td>
  <td class=xl1446787>2.76</td>
  <td class=xl1446787>3.00</td>
  <td class=xl1446787>3.51</td>
  <td class=xl1446787>2.59</td>
  <td class=xl1446787>2.40</td>
  <td class=xl1446787>2.34</td>
  <td class=xl1446787>3.81</td>
  <td class=xl1446787>4.41</td>
  <td class=xl1446787>3.56</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl926787 width=67 style='width:50pt'></td>
  <td class=xl936787>174.51 </td>
  <td class=xl936787>176.98 </td>
  <td class=xl936787>170.92 </td>
  <td class=xl936787>171.07 </td>
  <td class=xl936787>124.39 </td>
  <td class=xl936787>111.00 </td>
  <td class=xl936787>111.78 </td>
  <td class=xl936787>114.73 </td>
  <td class=xl936787>115.18 </td>
  <td class=xl936787>117.41 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl1536787>150.00 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>49.50 </td>
  <td class=xl1536787>50.78 </td>
  <td class=xl1536787>52.14 </td>
  <td class=xl1536787>49.96 </td>
  <td class=xl1536787>98.65 </td>
  <td class=xl1536787>98.76 </td>
  <td class=xl1536787>98.82 </td>
  <td class=xl1536787>99.44 </td>
  <td class=xl1536787>99.19 </td>
  <td class=xl1536787>99.52 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(47.72)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(48.19)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(44.19)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(45.93)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(48.62)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(36.14)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(35.38)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(37.79)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(37.22)</font></td>
  <td class=xl746787><font color="#FF0000" style='mso-ignore:color'>(44.96)</font></td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl1536787>150.00 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>1.79 </td>
  <td class=xl1536787>2.59 </td>
  <td class=xl1536787>7.95 </td>
  <td class=xl1536787>4.03 </td>
  <td class=xl1536787>50.03 </td>
  <td class=xl1536787>62.62 </td>
  <td class=xl1536787>63.44 </td>
  <td class=xl1536787>61.64 </td>
  <td class=xl1536787>61.98 </td>
  <td class=xl1536787>54.56 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>5,191 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>33.62 </td>
  <td class=xl1536787>34.09 </td>
  <td class=xl1536787>32.93 </td>
  <td class=xl1536787>32.96 </td>
  <td class=xl1536787>23.96 </td>
  <td class=xl1536787>21.38 </td>
  <td class=xl1536787>21.53 </td>
  <td class=xl1536787>22.10 </td>
  <td class=xl1536787>22.19 </td>
  <td class=xl1536787>22.62 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(27.62)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(28.09)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(26.93)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(26.96)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(17.96)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(15.38)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(15.53)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(16.10)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(16.19)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(16.62)</font></td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td colspan=17 height=40 class=xl1086787 style='border-right:1.0pt solid black;
  height:30.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1176787 width=163 style='height:18.0pt;border-top:none;
  width:122pt'>Weinman Brothers</td>
  <td class=xl976787 style='border-top:none;border-left:none'>434 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W4A-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>1.24</td>
  <td class=xl1446787>1.22</td>
  <td class=xl1446787>1.10</td>
  <td class=xl1446787>1.22</td>
  <td class=xl1446787>1.22</td>
  <td class=xl1446787>1.26</td>
  <td class=xl1446787>1.42</td>
  <td class=xl1446787>1.25</td>
  <td class=xl1446787>1.26</td>
  <td class=xl1446787>1.26</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W4B-2</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>2.72</td>
  <td class=xl1446787>2.50</td>
  <td class=xl1446787>2.99</td>
  <td class=xl1446787>2.35</td>
  <td class=xl1446787>2.51</td>
  <td class=xl1446787>2.81</td>
  <td class=xl1446787>2.49</td>
  <td class=xl1446787>2.85</td>
  <td class=xl1446787>2.76</td>
  <td class=xl1446787>2.56</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W4E</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>0.39</td>
  <td class=xl1446787>0.58</td>
  <td class=xl1446787>0.64</td>
  <td class=xl1446787>0.62</td>
  <td class=xl1446787>0.72</td>
  <td class=xl1446787>0.44</td>
  <td class=xl1446787>0.43</td>
  <td class=xl1446787>0.43</td>
  <td class=xl1446787>0.43</td>
  <td class=xl1446787>0.52</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1416787 style='height:30.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl926787 width=67 style='width:50pt'></td>
  <td class=xl936787>4.35 </td>
  <td class=xl936787>4.31 </td>
  <td class=xl936787>4.73 </td>
  <td class=xl936787>4.20 </td>
  <td class=xl936787>4.46 </td>
  <td class=xl936787>4.51 </td>
  <td class=xl936787>4.34 </td>
  <td class=xl936787>4.53 </td>
  <td class=xl936787>4.45 </td>
  <td class=xl936787>4.33 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>2,992 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>1.46 </td>
  <td class=xl1536787>1.44 </td>
  <td class=xl1536787>1.58 </td>
  <td class=xl1536787>1.40 </td>
  <td class=xl1536787>1.49 </td>
  <td class=xl1536787>1.51 </td>
  <td class=xl1536787>1.45 </td>
  <td class=xl1536787>1.51 </td>
  <td class=xl1536787>1.49 </td>
  <td class=xl1536787>1.45 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1296787 style='height:18.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>4.54 </td>
  <td class=xl1316787>4.56 </td>
  <td class=xl1316787>4.42 </td>
  <td class=xl1316787>4.60 </td>
  <td class=xl1316787>4.51 </td>
  <td class=xl1316787>4.49 </td>
  <td class=xl1316787>4.55 </td>
  <td class=xl1316787>4.49 </td>
  <td class=xl1316787>4.51 </td>
  <td class=xl1316787>4.55 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1186787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl1016787 style='border-left:none'>Suite</td>
  <td class=xl1266787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1196787 width=163 style='height:18.0pt;border-top:none;
  width:122pt'>WorkSocial</td>
  <td class=xl1016787 style='border-top:none;border-left:none'>313</td>
  <td class=xl1036787>Meter #</td>
  <td class=xl1026787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl1016787 style='border-left:none'>Jan</td>
  <td class=xl1016787 style='border-left:none'>Feb</td>
  <td class=xl1016787 style='border-left:none'>March</td>
  <td class=xl1016787 style='border-left:none'>April</td>
  <td class=xl1016787 style='border-left:none'>May</td>
  <td class=xl1016787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl1016787 style='border-left:none'>July</td>
  <td class=xl1016787 style='border-left:none'>August</td>
  <td class=xl1016787 style='border-left:none'>Sept</td>
  <td class=xl1016787 style='border-left:none'>Oct</td>
  <td class=xl1016787 style='border-left:none'>Nov</td>
  <td class=xl1046787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787>TCT-E3Z</td>
  <td class=xl1496787 width=67 style='width:50pt'>UPS</td>
  <td class=xl1446787>1.37</td>
  <td class=xl1446787>0.89</td>
  <td class=xl1446787>1.05</td>
  <td class=xl1446787>0.90</td>
  <td class=xl1446787>0.96</td>
  <td class=xl1446787>1.31</td>
  <td class=xl1446787>0.85</td>
  <td class=xl1446787>0.85</td>
  <td class=xl1446787>1.28</td>
  <td class=xl1446787>1.24</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1446787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1476787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl1486787></td>
  <td class=xl1486787></td>
  <td class=xl1496787 width=67 style='width:50pt'></td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1466787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1076787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>1.37 </td>
  <td class=xl1456787>0.89 </td>
  <td class=xl1456787>1.05 </td>
  <td class=xl1456787>0.90 </td>
  <td class=xl1456787>0.96 </td>
  <td class=xl1456787>1.31 </td>
  <td class=xl1456787>0.85 </td>
  <td class=xl1456787>0.85 </td>
  <td class=xl1456787>1.28 </td>
  <td class=xl1456787>1.24 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1156787 width=163 style='height:18.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>1,782 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.77 </td>
  <td class=xl1536787>0.50 </td>
  <td class=xl1536787>0.59 </td>
  <td class=xl1536787>0.51 </td>
  <td class=xl1536787>0.54 </td>
  <td class=xl1536787>0.74 </td>
  <td class=xl1536787>0.48 </td>
  <td class=xl1536787>0.48 </td>
  <td class=xl1536787>0.72 </td>
  <td class=xl1536787>0.70 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>5.23 </td>
  <td class=xl1316787>5.50 </td>
  <td class=xl1316787>5.41 </td>
  <td class=xl1316787>5.49 </td>
  <td class=xl1316787>5.46 </td>
  <td class=xl1316787>5.26 </td>
  <td class=xl1316787>5.52 </td>
  <td class=xl1316787>5.52 </td>
  <td class=xl1316787>5.28 </td>
  <td class=xl1316787>5.30 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td colspan=17 height=40 class=xl1086787 style='border-right:1.0pt solid black;
  height:30.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>WorkSocial.com
  LLC</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1515 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W15C-3</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>2.04</td>
  <td class=xl1446787>2.04</td>
  <td class=xl1446787>2.13</td>
  <td class=xl1446787>2.04</td>
  <td class=xl1446787>2.04</td>
  <td class=xl1446787>2.29</td>
  <td class=xl1446787>1.80</td>
  <td class=xl1446787>1.80</td>
  <td class=xl1446787>2.04</td>
  <td class=xl1446787>2.04</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W15F</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>16.86</td>
  <td class=xl1446787>19.86</td>
  <td class=xl1446787>18.85</td>
  <td class=xl1446787>10.17</td>
  <td class=xl1446787>14.70</td>
  <td class=xl1446787>4.86</td>
  <td class=xl1446787>2.45</td>
  <td class=xl1446787>12.43</td>
  <td class=xl1446787>14.39</td>
  <td class=xl1446787>9.13</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W15G</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>9.09</td>
  <td class=xl1446787>3.59</td>
  <td class=xl1446787>3.69</td>
  <td class=xl1446787>6.19</td>
  <td class=xl1446787>7.01</td>
  <td class=xl1446787>10.28</td>
  <td class=xl1446787>3.42</td>
  <td class=xl1446787>3.89</td>
  <td class=xl1446787>3.62</td>
  <td class=xl1446787>2.83</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl926787 width=67 style='width:50pt'></td>
  <td class=xl936787>27.99 </td>
  <td class=xl936787>25.49 </td>
  <td class=xl936787>24.67 </td>
  <td class=xl936787>18.40 </td>
  <td class=xl936787>23.75 </td>
  <td class=xl936787>17.43 </td>
  <td class=xl936787>7.67 </td>
  <td class=xl936787>18.12 </td>
  <td class=xl936787>20.05 </td>
  <td class=xl936787>14.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl936787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1166787 style='height:30.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>1,551 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>18.05 </td>
  <td class=xl1536787>16.43 </td>
  <td class=xl1536787>15.91 </td>
  <td class=xl1536787>11.87 </td>
  <td class=xl1536787>15.32 </td>
  <td class=xl1536787>11.24 </td>
  <td class=xl1536787>4.95 </td>
  <td class=xl1536787>11.68 </td>
  <td class=xl1536787>12.93 </td>
  <td class=xl1536787>9.03 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1296787 style='height:30.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(12.05)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(10.43)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(9.91)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(5.87)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(9.32)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(5.24)</font></td>
  <td class=xl1316787>1.05 </td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(5.68)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(6.93)</font></td>
  <td class=xl1316787><font color="#FF0000" style='mso-ignore:color'>(3.03)</font></td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=17 height=24 class=xl1086787 style='border-right:1.0pt solid black;
  height:18.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt'>Tenant<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl976787 style='border-left:none'>Suite</td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td colspan=12 class=xl1696787>2019 Coincidental Demand KW by Month</td>
  <td class=xl1336787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1126787 style='height:18.0pt;border-top:none'>WorkSocial.com</td>
  <td class=xl976787 style='border-top:none;border-left:none'>1203 </td>
  <td class=xl966787>Meter #</td>
  <td class=xl906787 width=67 style='border-left:none;width:50pt'>Meter Type</td>
  <td class=xl886787 style='border-left:none'>Jan</td>
  <td class=xl886787 style='border-left:none'>Feb</td>
  <td class=xl886787 style='border-left:none'>March</td>
  <td class=xl886787 style='border-left:none'>April</td>
  <td class=xl886787 style='border-left:none'>May</td>
  <td class=xl886787 style='border-left:none'><span
  style='mso-spacerun:yes'> </span>June</td>
  <td class=xl886787 style='border-left:none'>July</td>
  <td class=xl886787 style='border-left:none'>August</td>
  <td class=xl886787 style='border-left:none'>Sept</td>
  <td class=xl886787 style='border-left:none'>Oct</td>
  <td class=xl886787 style='border-left:none'>Nov</td>
  <td class=xl956787 style='border-left:none'>Dec</td>
  <td class=xl1276787 width=62 style='width:47pt'>Average</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W12C-6</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>1.43</td>
  <td class=xl1446787>2.55</td>
  <td class=xl1446787>1.28</td>
  <td class=xl1446787>1.61</td>
  <td class=xl1446787>1.50</td>
  <td class=xl1446787>1.50</td>
  <td class=xl1446787>1.51</td>
  <td class=xl1446787>1.51</td>
  <td class=xl1446787>1.66</td>
  <td class=xl1446787>1.88</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787>TCT-W12C-7</td>
  <td class=xl896787 width=67 style='width:50pt'>BB</td>
  <td class=xl1446787>2.91</td>
  <td class=xl1446787>2.11</td>
  <td class=xl1446787>2.90</td>
  <td class=xl1446787>3.07</td>
  <td class=xl1446787>3.02</td>
  <td class=xl1446787>2.79</td>
  <td class=xl1446787>2.86</td>
  <td class=xl1446787>2.59</td>
  <td class=xl1446787>2.66</td>
  <td class=xl1446787>2.38</td>
  <td class=xl1446787></td>
  <td class=xl1446787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl1416787 style='height:18.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1406787>&nbsp;</td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1416787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787>4.34 </td>
  <td class=xl1456787>4.66 </td>
  <td class=xl1456787>4.18 </td>
  <td class=xl1456787>4.68 </td>
  <td class=xl1456787>4.51 </td>
  <td class=xl1456787>4.30 </td>
  <td class=xl1456787>4.37 </td>
  <td class=xl1456787>4.10 </td>
  <td class=xl1456787>4.32 </td>
  <td class=xl1456787>4.26 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1456787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  Power Lease <br>
    Reservation (KW)</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Generator
  Backed Power (KW)<br>
    Lease Reservation</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>&nbsp;</td>
  <td class=xl706787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl746787>0.00 </td>
  <td class=xl1146787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>UPS
  &amp; Generator Backed Power Reservation (KW)</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787></td>
  <td class=xl696787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl1156787 width=163 style='height:30.0pt;width:122pt'>Condenser
  Water<br>
    Lease Reservation (tons)</td>
  <td class=xl996787>0 </td>
  <td class=xl1536787></td>
  <td class=xl716787 width=67 style='width:50pt'></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1536787></td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1166787 style='height:15.0pt'>Watts per SqFt by Month</td>
  <td class=xl1246787><span style='mso-spacerun:yes'>         </span>4,408 </td>
  <td class=xl1536787>RSF</td>
  <td class=xl896787 width=67 style='width:50pt'></td>
  <td class=xl1536787>0.98 </td>
  <td class=xl1536787>1.06 </td>
  <td class=xl1536787>0.95 </td>
  <td class=xl1536787>1.06 </td>
  <td class=xl1536787>1.02 </td>
  <td class=xl1536787>0.97 </td>
  <td class=xl1536787>0.99 </td>
  <td class=xl1536787>0.93 </td>
  <td class=xl1536787>0.98 </td>
  <td class=xl1536787>0.97 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1536787>0.00 </td>
  <td class=xl1136787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl1296787 style='height:15.0pt'>Watts/SqFt allow per
  Lease</td>
  <td class=xl1306787><span style='mso-spacerun:yes'>                </span>6 </td>
  <td class=xl1316787>RSF</td>
  <td class=xl1326787 width=67 style='width:50pt'>Monthly Delta</td>
  <td class=xl1316787>5.02 </td>
  <td class=xl1316787>4.94 </td>
  <td class=xl1316787>5.05 </td>
  <td class=xl1316787>4.94 </td>
  <td class=xl1316787>4.98 </td>
  <td class=xl1316787>5.03 </td>
  <td class=xl1316787>5.01 </td>
  <td class=xl1316787>5.07 </td>
  <td class=xl1316787>5.02 </td>
  <td class=xl1316787>5.03 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1316787>6.00 </td>
  <td class=xl1556787>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=17 height=20 class=xl1746787 style='height:15.0pt'>&nbsp;</td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl916787 style='height:15.0pt'></td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl916787 style='height:15.0pt'></td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl916787 style='height:15.0pt'></td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl916787 style='height:15.0pt'></td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl916787 style='height:15.0pt'></td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl916787 style='height:15.0pt'></td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl916787 style='height:15.0pt'></td>
  <td class=xl986787></td>
  <td class=xl916787></td>
  <td class=xl1436787 width=67 style='width:50pt'></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl1456787></td>
  <td class=xl916787></td>
  <td class=xl916787></td>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=163 style='width:122pt'></td>
  <td width=64 style='width:48pt'></td>
  <td width=96 style='width:72pt'></td>
  <td width=67 style='width:50pt'></td>
  <td width=82 style='width:62pt'></td>
  <td width=62 style='width:47pt'></td>
  <td width=62 style='width:47pt'></td>
  <td width=62 style='width:47pt'></td>
  <td width=62 style='width:47pt'></td>
  <td width=62 style='width:47pt'></td>
  <td width=62 style='width:47pt'></td>
  <td width=62 style='width:47pt'></td>
  <td width=62 style='width:47pt'></td>
  <td width=62 style='width:47pt'></td>
  <td width=62 style='width:47pt'></td>
  <td width=62 style='width:47pt'></td>
  <td width=62 style='width:47pt'></td>
  <td width=63 style='width:47pt'></td>
 </tr>
 <![endif]>
</table>

</div>


<!----------------------------->
<!--END OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD-->
<!----------------------------->
</body>

</html>
