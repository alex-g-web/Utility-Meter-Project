<%@ Language=VBScript %>
<%option explicit%>

<!--METADATA TYPE="typelib" FILE="\Program Files\Common Files\System\ado\msado15.dll"-->
<!--#INCLUDE VIRTUAL="/genergy2/nonsecure.inc"-->
<!--  
    METADATA  
    TYPE="typelib"  
    UUID="CD000000-8B95-11D1-82DB-00C04FB1625D"  
    NAME="CDO for Windows 2000 Library"  
-->

<%
if 	not(allowGroups("Genergy Users,clientOperations")) then
%>
<!--#INCLUDE VIRTUAL="/genergy2/securityerror.inc"-->
<%end if

	function getNumber(number)
	'	response.WriteText"|"&number&"|"
		if not(isNumeric(number)) then number = 0
		getNumber = number
	end function
    dim pid, byear, bperiod, building, utilityid, buildingname, procedure, downloadlink, meter
	
	Dim  Billperiod, Billyear, PortFolioId, utilitydisplay, rpt, pdf, Genergy_Users, demo, sql
	' Set Parameters
	pid = request("pid")
    byear = request("by")
    bperiod = request("bp")
    utilityid = request("utilityid")
	meter = request("meter")
	Set objFSO = CreateObject("Scripting.FileSystemObject")
	
	' Set Default
	if UtilityId = "" then
		Utilityid = 2
	end if
	Dim rst1, rst2, cnn1
	set rst1 = server.createobject("ADODB.Recordset") 	
%>
<html>
<head>
<title>2 Teleport TOU</title>

<style type="text/css">
INPUT#f9 {
	font-size:9
}
</style>
<link rel="Stylesheet" href="/genergy2/setup/setup.css" type="text/css">
</head>
<body>
<table width="100%" border="0" cellpadding="3" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
   <form name="form1" action="2teleporttou.asp">
    <tr bgcolor="#eeeeee"> 
      <td colspan="2" style="border-top:1px solid #ffffff;border-bottom:1px solid #cccccc;"> 
        <table border=0 cellpadding="3" cellspacing="0">
          <tr> 
        
				<td>
				 
            </td>
          </tr>
        </table></td>
        </form>
	</tr>
</table>
<%	
	Dim sSql, uSql, objFSO
	dim ctime, bperiodchar, utility, crlf
	Dim csvPath,csvFile,csvColumns
	
	
	
		set rst1 = server.createobject("ADODB.Recordset")
		set rst2 = server.createobject("ADODB.Recordset")
		set cnn1 = server.createobject("ADODB.Connection")
		
		cnn1.open getLocalConnect(building)
   
		Select Case bperiod
			Case 1     bperiodchar = "01"
			Case 2   bperiodchar = "02"
			Case 3    bperiodchar = "03"
			Case 4      bperiodchar = "04"
			Case 5     bperiodchar = "05"
			Case 6   bperiodchar = "06"
			Case 7    bperiodchar = "07"
			Case 8     bperiodchar = "08"
			Case 9    bperiodchar = "09"
			Case 10   bperiodchar = "10"
			Case 11   bperiodchar = "11"
			Case 12      bperiodchar = "12"
		End Select
		
		ctime = DatePart("yyyy",Date) _
        & Right("0" & DatePart("m",Date), 2) & Right("0" & DatePart("d",Date), 2)


						
		crlf = chr(13) & chr(10)

		' Create new csv file 
		csvPath = "\\serv-pdf\pdfmaker\NICO\NICO\"
		'csvFile = building & "_" & utility & "_" & byear & right("0" & bperiod,2) & ".txt"
		csvFile = "[1-2]Teleport_"&ucase(meter)&"_" & byear&bperiodchar & ".csv"
		
		Dim UTFStream
		Set UTFStream = CreateObject("adodb.stream")
		UTFStream.Type = adTypeText
		UTFStream.Mode = adModeReadWrite
		UTFStream.Charset = "UTF-8"
		UTFStream.LineSeparator = adLF
		UTFStream.Open
		
		'If objFSO.FileExists(csvPath & csvFile) Then
		'	UTFStream.loadfromfile csvpath&csvfile
		'	UTFStream.readtext
			'dim readdata 
			'readdata = "" & UTFStream.readtext
			'UTFStream.writetext readdata
		'else
			csvColumns =  "" & byear  &","& bperiodchar 
			UTFStream.WriteText csvColumns 
			UTFStream.WriteText crlf
			UTFStream.WriteText csvColumns 
			UTFStream.WriteText crlf
			csvColumns = ", 2Teleport"
			UTFStream.WriteText csvColumns 
			UTFStream.WriteText crlf
			csvColumns = "Interval, Usage"
			UTFStream.WriteText csvColumns 
			UTFStream.WriteText crlf
		'end if

		'sSql = "exec lefrakdemand.dbo.PrintTOUForMeter '"&meter&"', '5/1/2021'" 
		sSql = "exec lefrakdemand.dbo.[2teleporttou] "&byear&", "&bperiod 
		'rst1.CursorLocation = 3
		rst1.open sSql , cnn1	
		%>
		
		<Table> 
			<tr width="100%"><td width="33%">&nbsp;</td><td width="33%" align="center"><h1> <%= byear %> ,  <%= bperiodchar %>  </h1> </td><td width="33%">&nbsp;</td></tr>
			<tr width="100%"></tr>
			<tr width="100%"></tr>
			<tr width="100%"><td width="33%">&nbsp;</td><td width="33%" align="center"><h1> 2 Teleport </h1> </td><td width="33%">&nbsp;</td></tr>
			<tr width="100%"></tr>
			<tr> 
				<td><h3>Interval</h3></td><td><h3>Usage</h3></td>
			</tr>
		<%
		Do Until rst1.eof
			%>
			<tr><td><%=rst1("interval")%></td><td><%=rst1("tou")%></td></tr>		
			<%
				UTFStream.WriteText chr(34) & rst1("interval") & chr(34) & ","
				UTFStream.WriteText chr(34) & rst1("tou") & chr(34)
			UTFStream.WriteText crlf
											
			rst1.movenext
		loop
		rst1.close

			%>
			<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
			<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
			
			<%
			UTFStream.WriteText chr(34) & "" & chr(34) & ","
			UTFStream.WriteText chr(34) & "" & chr(34)
			UTFStream.WriteText crlf
			UTFStream.WriteText chr(34) & "" & chr(34) & ","
			UTFStream.WriteText chr(34) & "" & chr(34)
			UTFStream.WriteText crlf
			UTFStream.WriteText chr(34) & "" & chr(34) & ","
			UTFStream.WriteText chr(34) & "" & chr(34)
			UTFStream.WriteText crlf
			UTFStream.WriteText chr(34) & "" & chr(34) & ","
			UTFStream.WriteText chr(34) & "" & chr(34)
			UTFStream.WriteText crlf
			UTFStream.WriteText chr(34) & "" & chr(34) & ","
			UTFStream.WriteText chr(34) & "" & chr(34)
			UTFStream.WriteText crlf
			UTFStream.WriteText chr(34) & "" & chr(34) & ","
			UTFStream.WriteText chr(34) & "" & chr(34)
			UTFStream.WriteText crlf
			
			%>
			<tr><td><h3>AC Meter</td><td><h3>kWh</td><td><h3>kW</td></tr>
			<%
			UTFStream.WriteText chr(34) & "AC Meter" & chr(34) & ","
			UTFStream.WriteText chr(34) & "kWh" & chr(34) & ","
			UTFStream.WriteText chr(34) & "kW" & chr(34)
			UTFStream.WriteText crlf			
		'sSql = "exec lefrakdemand.dbo.PrintTOUForMeter '"&meter&"', '5/1/2021'" 
		sSql = "exec lefrakdemand.dbo.[2teleportmeterreadings] "&byear&", "&bperiod 
		'rst1.CursorLocation = 3
		rst1.open sSql , cnn1		
		Do Until rst1.eof
		
			%>
			<tr><td><%=rst1("meter")%></td><td><%=rst1("kWh")%></td><td><%=rst1("kw")%></td></tr>		
			<%
			UTFStream.WriteText chr(34) & rst1("meter") & chr(34) & ","
			UTFStream.WriteText chr(34) & rst1("kwh") & chr(34) & ","
			UTFStream.WriteText chr(34) & rst1("kw") & chr(34)
			UTFStream.WriteText crlf
											
			rst1.movenext
		loop
		rst1.close			
		%>
			<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
			<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
			<%
			UTFStream.WriteText chr(34) & "" & chr(34) & ","
			UTFStream.WriteText chr(34) & "" & chr(34)
			UTFStream.WriteText crlf
			UTFStream.WriteText chr(34) & "" & chr(34) & ","
			UTFStream.WriteText chr(34) & "" & chr(34)
			UTFStream.WriteText crlf
			UTFStream.WriteText chr(34) & "" & chr(34) & ","
			UTFStream.WriteText chr(34) & "" & chr(34)
			UTFStream.WriteText crlf
			UTFStream.WriteText chr(34) & "" & chr(34) & ","
			UTFStream.WriteText chr(34) & "" & chr(34)
			UTFStream.WriteText crlf
			UTFStream.WriteText chr(34) & "" & chr(34) & ","
			UTFStream.WriteText chr(34) & "" & chr(34)
			UTFStream.WriteText crlf
			UTFStream.WriteText chr(34) & "" & chr(34) & ","
			UTFStream.WriteText chr(34) & "" & chr(34)
			UTFStream.WriteText crlf
			
			%>			
			
			<tr width="100%"><td width="33%">&nbsp;</td><td width="33%" align="center"><h1> 1 Teleport </h1> </td><td width="33%">&nbsp;</td></tr>
			<tr width="100%"></tr>
			<tr><td><h3>AC Meter</td><td><h3>kWh</td><td><h3>kW</td></tr>
			<%
			csvColumns = ", 1Teleport"
			UTFStream.WriteText csvColumns 
			UTFStream.WriteText crlf
			UTFStream.WriteText chr(34) & "AC Meter" & chr(34) & ","
			UTFStream.WriteText chr(34) & "kWh" & chr(34) & ","
			UTFStream.WriteText chr(34) & "kW" & chr(34)
			UTFStream.WriteText crlf			
		'sSql = "exec lefrakdemand.dbo.PrintTOUForMeter '"&meter&"', '5/1/2021'" 
		sSql = "exec lefrakdemand.dbo.[1teleportmeterreadings] "&byear&", "&bperiod 
		'rst1.CursorLocation = 3
		rst1.open sSql , cnn1		
		Do Until rst1.eof
		
			%>
			<tr><td><%=rst1("meter")%></td><td><%=rst1("kWh")%></td><td><%=rst1("kw")%></td></tr>		
			<%
			UTFStream.WriteText chr(34) & rst1("meter") & chr(34) & ","
			UTFStream.WriteText chr(34) & rst1("kwh") & chr(34) & ","
			UTFStream.WriteText chr(34) & rst1("kw") & chr(34)
			UTFStream.WriteText crlf
											
			rst1.movenext
		loop
		rst1.close			

		%></table><%
			


		UTFStream.Position = 3 'skip BOM

		Dim BinaryStream
		Set BinaryStream = CreateObject("adodb.stream")
		BinaryStream.Type = adTypeBinary
		BinaryStream.Mode = adModeReadWrite
		BinaryStream.Open

		'Strips BOM (first 3 bytes)
		UTFStream.CopyTo BinaryStream

		'UTFStream.SaveToFile "d:\temp\adodb-stream1.csv", adSaveCreateOverWrite
		UTFStream.Flush
		UTFStream.Close

		BinaryStream.SaveToFile csvPath & csvFile, adSaveCreateOverWrite
		BinaryStream.Flush
		BinaryStream.Close
		
		If objFSO.FileExists(csvPath & csvFile) Then 
		%>
		<p> Following report has been generated :
		<a style="font-family:arial;font-size:12;text-decoration:none;color:black;" href="http://pdfmaker.genergyonline.com/pdfmaker/Nico/Nico/<%=csvFile%>" target="_blank" onMouseOver="this.style.color= 'lightblue'"; onMouseOut="this.style.color = 'black'"><b><%=csvFile%></b></a> 
		</p>
		<%
		Else
		%>
		<p>There has been an error while generating the requested file. Please try and generate the file again. If the error persists, contact Genergy IT department for assistance.</p>
		<%
		
	

	' Set up Email to be Sent
	'Dim objEmail 
	'Dim strSQL
	'Dim strMailingList
	'Dim rstMailingList
		
	'Set objEmail = Server.CreateObject("CDONTS.NewMail") 
	'Set rstMAilingList =  server.createobject("ADODB.Recordset")

	'strSQL = "SELECT email FROM contacts Where submeter_bills=1 and bldgnum ='" & building & "'"
	'strMailingList = ""
	'rstMAilingList.open strSQL , getConnect(PortFolioId,building,"Billing")
	'If not rstMailingList.EOF Then
	'	Do While not rstMailingList.EOF 
	'		if len(strMailingList) > 0 then 
	'			strMailingList = strMailingList & ";" & rstMailingList("Email")
	'		else
	'			strMailingList = rstMailingList("Email")
	'		end if
	'		rstMailingList.MoveNext 
	'	Loop 
	'End IF
	' If There is a mailing List then
	'If Len(strMailingList) > 0 then
		'objEmail.To = strMailingList
	'	objEmail.To = "AnthonyC@genergy.com; tarunskalra@hotmail.com"
	'	objEmail.From = "rb@genergy.com"
	'	objEmail.Subject = "Meter Letter for Building " & building & " , Period " & Billperiod & " " & Billyear 
	'	objEmail.AttachFile "\\10.0.7.21\web_folders\finance\"  & building & Billyear  & Billperiod  & UtilityId & "MeterLetter.xls" , building & Billyear  & Billperiod  & UtilityId & "MeterLetter.xls" 
	'	objEmail.Send
		
	'	Response.WriteText"<P> Meter Letter Generated and sent to Building Contacts <BR>"
	'	Response.WriteTextstrMailingList 
	'	Response.WriteText"</P></Body></Html>"
	'Else
	'	Response.WriteText"<P> No Mailing List is Available for the Building <BR>"
	'	Response.WriteText"</P></Body></Html>"
	'End IF
	End If %>

<%
	
	'set objEmail = Nothing
	'set rstMailingList = Nothing
	set objFSO = Nothing
	set rst1 = Nothing
	set rst2 = Nothing
	set cnn1 = Nothing
	
	
%>	

<%
	Dim objSWbemServices, colProcess, objProcess, resultCode
	Set objSWbemServices = GetObject ("WinMgmts:Root\Cimv2")
	Set colProcess = objSWbemServices.ExecQuery ("Select * From Win32_Process WHERE Name LIKE '%EXCEL.EXE%'")
'	For Each objProcess In colProcess
'		response.WriteText_
'		"<ul>"&_
'		"<li>Name="& objProcess.Name      &_
'		"<li>PID ="& objProcess.ProcessId &_
'		"</ul>"
'	Next
	For Each objProcess In colProcess
		resultCode = objProcess.Terminate()
	Next
'	response.end
%>
