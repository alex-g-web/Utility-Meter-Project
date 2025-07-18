<%
db = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=d:/Websites/isabella/appserver1/genergy2/billpay/sales.mdb"
set conn = Server.CreateObject("ADODB.Connection")
conn.open db 
set sqlQuery = Server.CreateObject("ADODB.Recordset")
sqlQuery.CursorType = 3
qtxt = "SELECT SalesTotal, Date, (SELECT MAX(SalesTotal) FROM Sales) as M FROM Sales ORDER BY Date"
sqlQuery.Open qtxt, conn, 3, 3
%>

<html>
<body>

<applet codebase="new" code="linegraph.class" height=220 width=360>
	<param name="title" value="Sales">
	<param name="NumberOfVals" value="<%=sqlQuery.RecordCount%>">
	<param name="NumberOfLabs" value="<%=sqlQuery.RecordCount%>">
	<PARAM NAME=ymax VALUE=<%=(Fix(sqlQuery("M")/10000)+1)*10000%>>
	<PARAM NAME=ymin VALUE=0>
	<PARAM NAME=mode VALUE=0>
	<PARAM NAME=border VALUE="20">
	<PARAM NAME=Grid VALUE="true">
	<PARAM NAME=LineColor_R_L1 VALUE=53>
	<PARAM NAME=LineColor_G_L1 VALUE=153>
	<PARAM NAME=LineColor_B_L1 VALUE=51>	
<%
i = 1
while (not sqlQuery.EOF) %>
	<param name="VAL<%=i%>_L1" value="<%=sqlQuery("SalesTotal")%>">
	<param name="LAB<%=i%>" value="<%=MonthName(Month(sqlQuery("Date")))%>">
<%
i = i + 1
sqlQuery.MoveNext
wend %>

</APPLET><p>

</body>
</html>

<%
sqlQuery.close
set sqlQuery = nothing
conn.close
set conn = nothing
%> 
