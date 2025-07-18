<%@ Language=VBScript %>
<%option explicit%>

<!--METADATA TYPE="typelib" FILE="\Program Files\Common Files\System\ado\msado15.dll"-->
<!--#INCLUDE VIRTUAL="/genergy2/secure.inc"-->
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
	'	response.write "|"&number&"|"
		if not(isNumeric(number)) then number = 0
		getNumber = number
	end function

	Dim  Billperiod, building, Billyear, PortFolioId, UtilityId, utilitydisplay, rpt, pdf, Genergy_Users, demo, sql
	' Set Parameters
	building = request("bldgNum")	
	BillYear = request("billyear")
	BillPeriod = request("billperiod")
	UtilityId = request("utilityid")
	' Set Default
	if UtilityId = "" then
		Utilityid = 2
	end if
	Dim rst1, rst2, cnn1
	set rst1 = server.createobject("ADODB.Recordset") 	
%>
<html>
<head>
<title>Meter Setup Charges</title>

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
   <form name="form1" action="MeterSetupCharges.asp">
    <tr bgcolor="#eeeeee"> 
      <td colspan="2" style="border-top:1px solid #ffffff;border-bottom:1px solid #cccccc;"> 
        <table border=0 cellpadding="3" cellspacing="0">
          <tr> 
        
								           
			
            <td> <select name="billyear" onclick="loadPeriod()">
                <option value="">Select Search Year</option>
                <%
                	sql = "SELECT distinct billyear " & _
						" FROM billyrperiod where billyear > 2014 and billyear < year(getdate())+1" & _
				        " order by billyear desc "
				        
					rst1.open sql, getLocalConnect(building)
					do until rst1.eof%>
					<option value="<%=rst1("billyear")%>"<%if trim(rst1("billyear"))=trim(billyear) then response.write " SELECTED"%>><%=rst1("billyear")%></option>
					<%
						
							rst1.movenext
					loop
					rst1.close
					%>
					</select> </td>
					
	  			
					<td> <select name="billperiod">
					 <option value="">Select Search Month</option>
                <%
                
				sql = "SELECT distinct billperiod " & _
						" FROM billyrperiod where billperiod > 0 and billperiod < 13" & _
				        " order by billperiod desc "
					
				rst1.open sql, getLocalConnect(building)
				do until rst1.eof
				%>
					<option value="<%=rst1("billperiod")%>" <%if trim(rst1("billperiod"))=billperiod then response.write " SELECTED"%>><%=rst1("billperiod")%></option>
                <%
				  rst1.movenext
				loop
				rst1.close
				%>
              </select> </td>
              
				<td>
					<input type="hidden" name="bldgNum" value="<%=Building%>"> 		
				 <input type="Submit" name="Generate Report" value="Generate Report"> 
            </td>
          </tr>
        </table></td>
        </form>
	</tr>
</table>
<%	
    Dim objExcelReport 
    Dim objWorkBook 
    Dim objWorkSheet 
    Dim objCell 
	Dim iRow


	Dim sSql
	Dim usage, demand, utilityname

	' Total
	Dim TotalSqFt, MeterCountTotal, UsageTotal, DemandTotal, TenantChargesTotal, AdminFeesTotal
	Dim SalesTaxTotal, MiscCreditsTotal, BuildingChargesTotal


	'Initialize
	TotalSqFt = 0.0
	MeterCountTotal = 0
	UsageTotal = 0
	DemandTotal = 0 
	TenantChargesTotal = 0.0
	AdminFeesTotal = 0.0
	SalesTaxTotal = 0.0
	MiscCreditsTotal =0.0
	BuildingChargesTotal =0.0

	If billperiod <> "" then
		Set objExcelReport = CreateObject("Excel.Application")
		Set objWorkBook = objExcelReport.Workbooks.Add
	
		set rst1 = server.createobject("ADODB.Recordset")

		set cnn1 = server.createobject("ADODB.Connection")
		cnn1.CommandTimeout = 580
		cnn1.open getLocalConnect(building)
	
		
	' Select the First Worksheet
	Set objWorkSheet = objExcelReport.Application.Workbooks(1).Sheets(1)
	objWorkSheet.Cells.Font.Name = "Calibri"
	objWorkSheet.Cells.Font.Size = 11

    irow = 1

    objWorkSheet.Cells(iRow,1).Font.Bold = False
    objWorkSheet.Cells(iRow,1) = "BillYear: " + BillYear
    objWorkSheet.Cells(iRow,2) = "BillPeriod: " + BillPeriod
    

    iRow= iRow + 1
    
	objWorkSheet.Cells(iRow,1).Font.Bold = False
    objWorkSheet.Cells(iRow,1) = "PortfolioName"
    objWorkSheet.Cells(iRow,2) = "BuildingName"
    objWorkSheet.Cells(iRow,3) = "TenantName"
    objWorkSheet.Cells(iRow,4) = "MeterNumber"
    objWorkSheet.Cells(iRow,5) = "DatesSearched"
    		
	sSql = "Exec sp_select_metersetup_charges " & Billyear & "," & BillPeriod 
	rst1.CursorLocation = 3
	rst1.open sSql , cnn1, 3 
	Do Until rst1.eof
	
	    iRow= iRow + 1
        objWorkSheet.Cells(iRow,1) = rst1("portfolioname")
	    objWorkSheet.Cells(iRow,2) = rst1("buildingname")
        objWorkSheet.Cells(iRow,3) = rst1("tenantname")
        objWorkSheet.Cells(iRow,4) = rst1("meternum")
        objWorkSheet.Cells(iRow,5) = rst1("datessearched")
        objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 40 
	    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 40
        objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 40
        objWorkSheet.Cells(iRow,4).Interior.ColorIndex = 40
        objWorkSheet.Cells(iRow,5).Interior.ColorIndex = 40  
	    	    						
		rst1.movenext
	loop
	rst1.close
	
	

    objWorkSheet.Columns("B:AP").Select
    objExcelReport.Selection.Columns.AutoFit
     
    'objWorkSheet.Rows("8:8").Select
    'objExcelReport.ActiveWindow.FreezePanes = True

	dim ctime 
    ctime = hour(now) & minute(now) & second(now) & Billyear  & Billperiod  & UtilityId
    																		


	objExcelReport.DisplayAlerts = False
	'objWorkBook.SaveAs("\\10.0.7.21\web_folders\finance\"  & building & Billyear  & Billperiod  & UtilityId & "MeterLetter.xls")
	objWorkBook.SaveCopyAs("\\serv-db\web_folders\finance\"  & ctime & "MeterSetupCharges.xlsx")
	objExcelReport.DisplayAlerts = True
	objExcelReport.Quit

    set objWorkSheet = Nothing
	set objWorkBook = Nothing
	set objExcelReport = Nothing
	' Set up Email to be Sent

    
    
    
	Dim objFSO, strFileName
	Set objFSO = CreateObject("Scripting.FileSystemObject")
	strFilename = "\\serv-db\web_folders\finance\" & ctime & "MeterSetupCharges.xlsx"
	If objFSO.FileExists(strFileName) Then 
	%>
	<p> Following report has been generated :
	<a style="font-family:arial;font-size:12;text-decoration:none;color:black;" href="https://appserver1.genergy.com/eri_TH/finance/<%=ctime%>MeterSetupCharges.xlsx" target="_blank" onMouseOver="this.style.color= 'lightblue'"; onMouseOut="this.style.color = 'black'"><b><%=ctime%>MeterSetupCharges.xlsx</b></a> 
	</p>
	<%
	Else
	%>
	<p>There has been an error while generating the requested file. Please try and generate the file again. If the error persists, contact Genergy IT department for assistance.</p>
	<%
		
	End IF


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
		
	'	Response.Write "<P> Meter Letter Generated and sent to Building Contacts <BR>"
	'	Response.Write strMailingList 
	'	Response.Write "</P></Body></Html>"
	'Else
	'	Response.Write "<P> No Mailing List is Available for the Building <BR>"
	'	Response.Write "</P></Body></Html>"
	'End IF
	End If %>
<Script type=text/javascript>
    function loadperiod() {
        var frm = document.forms['form1'];
        var newhref = "MeterSetupCharges.asp?" + "&building=" + frm.building.value + "&billyear=" + frm.billyear.value
        document.location.href = newhref;
    }

    function loadutility() {
        var frm = document.forms['form1'];
        var newhref = "MeterSetupCharges.asp?building=" + frm.building.value + "&utilityid=" + frm.utilityid.value;
        document.location.href = newhref;
    }
</Script>
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
'		response.write _
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
