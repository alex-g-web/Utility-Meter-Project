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
	'	response.write "|"&number&"|"
		if not(isNumeric(number)) then number = 0
		getNumber = number
	end function

	Dim  Billperiod, building, Billyear, PortFolioId, UtilityId, utilitydisplay, rpt, pdf, Genergy_Users, demo, sql, pid
	' Set Parameters
	building = request("bldgNum")	
	BillYear = request("billyear")
	BillPeriod = request("billperiod")
	UtilityId = request("utilityid")
    pid = request("pid")
	' Set Default
	
	Dim rst1, rst2, cnn1
	set rst1 = server.createobject("ADODB.Recordset") 	
%>
<html>
<head>
<title>Tenant Summary Excel</title>

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
   <form name="form1" action="TenantSummaryExcel.asp">
    <tr bgcolor="#eeeeee"> 
      <td colspan="2" style="border-top:1px solid #ffffff;border-bottom:1px solid #cccccc;"> 
        <table border=0 cellpadding="3" cellspacing="0">
          <tr> 
        
				<% if trim(building)<>"" then%>
				<td> <select name="utilityid" onChange="document.location='TenantSummaryExcel.asp?pid=<%=pid%>&bldgnum=<%=building%>&utilityid='+this.value">
					<option value="">Select Utility</option>
						<%rst1.open "SELECT DISTINCT byp.Utility as utilityid, u.Utilitydisplay " & _
									" FROM BillYrPeriod byp inner join dbo.tblutility u " & _
									" ON byp.Utility = u.utilityid WHERE (BldgNum = '" & trim(building) &"')", getLocalConnect(building)
						do until rst1.eof   %>
						<option value="<%=rst1("utilityid")%>"<%if trim(rst1("utilityid"))=trim(utilityid) then response.write " SELECTED"%>><%=rst1("utilitydisplay")%></option>
                <%      if trim(rst1("utilityid"))=trim(utilityid) then utilitydisplay = rst1("utilitydisplay")
						rst1.movenext
						loop
						rst1.close
						%>
					  </select> </td>	
				 <%end if %>
				           
			<%if trim(utilityid)<>"" then%>
            <td> <select name="billyear" >
                <option value="">Select Bill Year</option>
                <%
                	sql = "SELECT distinct billyear " & _
						" FROM billyrperiod WHERE " & _
				        " bldgnum='"&building&"' and utility = '"&utilityid&"' order by billyear desc "

					rst1.open sql, getLocalConnect(building)
					do until rst1.eof%>
					<option value="<%=rst1("billyear")%>"<%if trim(rst1("billyear"))=trim(billyear) then response.write " SELECTED"%>><%=rst1("billyear")%></option>
					<%
						
							rst1.movenext
					loop
					rst1.close
					%>
					</select> </td>
				<%end if%>	
	  			
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

	If billyear <> "" then
		Set objExcelReport = CreateObject("Excel.Application")
		Set objWorkBook = objExcelReport.Workbooks.Add
	
		set rst1 = server.createobject("ADODB.Recordset")

		set cnn1 = server.createobject("ADODB.Connection")
		
		cnn1.open getLocalConnect(building)
		
		dim utilname
		if pid = "" then
			rst1.open "select portfolio from portfolio where id = (select top 1 portfolioid from buildings where bldgnum = '"&building&"')", cnn1
			if not rst1.eof then portfolioid = rst1("portfolio")
		else
			rst1.open "select portfolio from portfolio where id =" &pid, cnn1
			if not rst1.eof then portfolioid = rst1("portfolio")
		end if
		rst1.close
		rst1.open "select utility from tblutility where utilityid = " & utilityid, cnn1
		if not rst1.eof then utilname = rst1("utility")
		rst1.close

	sSql = "Exec usp_tenant_summary_excel_bldg_info " & "'" & building & "'" & ", " & UtilityId  & "," & Billyear
	rst1.CursorLocation = 3
	rst1.open sSql , cnn1, 3 
	
	
	' Select the First Worksheet
	Set objWorkSheet = objExcelReport.Application.Workbooks(1).Sheets(1)
	objWorkSheet.Cells.Font.Name = "Calibri"
	objWorkSheet.Cells.Font.Size = 7

    'objWorkSheet.PageSetup.Zoom = False
    'objWorkSheet.PageSetup.FitToPagesWide = 1
    'objWorkSheet.PageSetup.FitToPagesTall = 1


' Header Columns	
	If not rst1.eof then

        
			
        objWorkSheet.Cells(1,1).Font.Bold = True
        objWorkSheet.Cells(1,1).Font.Size = 19    
        objWorkSheet.Cells(1,1) = rst1("companyname")
        objWorkSheet.Cells(1,3).Font.Bold = true
        objWorkSheet.Cells(1,3).Font.Size = 14   
        objWorkSheet.Cells(1,3).Font.ColorIndex = 40                     'need logo
		objWorkSheet.Cells(1,3) = rst1("companyname2")
			 

		objWorkSheet.Cells(2,1).Font.Bold = False                    'need logo
		objWorkSheet.Cells(2,1) = ""
			
		
					 
				
		objWorkSheet.Cells(4,1).Font.Bold = False
		objWorkSheet.Cells(4,1) = "" 
		
				
		objWorkSheet.Cells(5,1).Font.Bold = False
		objWorkSheet.Cells(5,1) = rst1("name")
		
				
		objWorkSheet.Cells(6,1).Font.Bold = False
		objWorkSheet.Cells(6,1) = rst1("strt")
		
				
		objWorkSheet.Cells(7,1).Font.Bold = False
		objWorkSheet.Cells(7,1) = rst1("city") & " , " & rst1("statedescr") & "," & rst1("zip")
		
				
		objWorkSheet.Cells(8,1).Font.Bold = False
		objWorkSheet.Cells(8,1) = "" 

		objWorkSheet.Cells(9,1).Font.Bold = False
		objWorkSheet.Cells(9,1) = "" 

		
		
				
		objWorkSheet.Cells(10,1).Font.Bold = False
		objWorkSheet.Cells(10,1) = "Utility: " & rst1("utilityname") & " Tenant Summary Report for " & rst1("bldgname") & " Year " & Billyear 
		
		iRow= 14
		objWorkSheet.Cells(iRow,1) = "Tenant"
        objWorkSheet.Cells(iRow,3) = "Sqft"
        objWorkSheet.Cells(iRow,4) = "From"
		objWorkSheet.Cells(iRow,5) = "To"
        objWorkSheet.Cells(iRow,6) = "Number Of Days In Period"
        objWorkSheet.Cells(iRow,7) = "Usage"
		objWorkSheet.Cells(iRow,8) = "Demand"
        objWorkSheet.Cells(iRow,9) = "Sub Total"
        objWorkSheet.Cells(iRow,10) ="Tax"
		objWorkSheet.Cells(iRow,11) = "Total Amount"
				
		
				
	End if
	rst1.close

	iRow= iRow + 1
	sSql = "Exec usp_tenant_summary_excel " & "'" & building & "'" & ", " & UtilityId  & "," & Billyear
	rst1.CursorLocation = 3
	rst1.open sSql , cnn1, 3 
	Do Until rst1.eof
	
	    iRow= iRow + 1
	    objWorkSheet.Cells(iRow,1) = rst1("billingname")
        objWorkSheet.Cells(iRow,3) = rst1("sqft")
        objWorkSheet.Cells(iRow,4) = rst1("from")
		objWorkSheet.Cells(iRow,5) = rst1("to")
        objWorkSheet.Cells(iRow,6) = rst1("perioddays")
        objWorkSheet.Cells(iRow,7) = rst1("usage")
		objWorkSheet.Cells(iRow,8) = rst1("demand")
        objWorkSheet.Cells(iRow,9) = rst1("subtotal")
        objWorkSheet.Cells(iRow,10) = rst1("tax")
		objWorkSheet.Cells(iRow,11) = rst1("totalamt")
	    
						
		rst1.movenext
	loop
	rst1.close
	
	
	
	
	



    objWorkSheet.Columns("B:AP").Select
    objExcelReport.Selection.Columns.AutoFit
     
    objWorkSheet.Rows("15:15").Select
    objExcelReport.ActiveWindow.FreezePanes = True

    dim ctime, filename, root, pdfdir, pdfname, file
    ctime = hour(now) & minute(now) & second(now) & Billyear  & Billperiod  & UtilityId & building

																				
	Dim objFSO, strFileName
	Set objFSO = CreateObject("Scripting.FileSystemObject")

	objExcelReport.DisplayAlerts = False
	'objWorkBook.SaveAs("\\10.0.7.21\web_folders\finance\"  & building & Billyear  & Billperiod  & UtilityId & "MeterLetter.xls")
	file = ucase(building) &"_"& Billyear  & "_" &Right("0" & billperiod, 2) &"_"& replace(utilname, " ", "_") & "_Tenant_Excel"
	filename = file & ".xlsx"
	pdfname = file & ".pdf"
	root = "\\serv-pdf\pdfmaker\"
	pdfdir = portfolioid &"\"& building &"\"
	
	If objFSO.FileExists(root&pdfdir&pdfname) Then
		objfso.deletefile(root&pdfdir&pdfname)
	end if
	if objfso.fileexists(root & pdfdir & filename) then
		objfso.deletefile(root & pdfdir & filename)
	end if
	objWorkBook.SaveCopyAs(root & pdfdir & filename)
	'objworkbook.exportasfixedformat 0, root&pdfdir&pdfname
	objExcelReport.DisplayAlerts = True
	objExcelReport.Quit
	
	set objWorkSheet = Nothing
	set objWorkBook = Nothing
	set objExcelReport = Nothing
	' Set up Email to be Sent



	strFilename = root & pdfdir & filename
	If objFSO.FileExists(strFileName) Then 
		%>
		<p> Following reports have been generated :<br>
		<a style="font-family:arial;font-size:12;text-decoration:none;color:black;" href="https://appserver1.genergy.com/pdfMaker/<%= pdfdir %><%= filename %>?dt=<%=ctime%>" target="_blank" onMouseOver="this.style.color= 'lightblue'"; onMouseOut="this.style.color = 'black'"><b><%= filename %></b></a> 
		</p>
		
		<h3><b>No PDF files at this time.</b></h3>
		<!--<a style="font-family:arial;font-size:12;text-decoration:none;color:black;" href="https://appserver1.genergy.com/pdfMaker/<%= pdfdir %><%= pdfname %>?dt=<%=ctime%>" target="_blank" onMouseOver="this.style.color= 'lightblue'"; onMouseOut="this.style.color = 'black'"><b><%= pdfname %></b></a> 
		</p>--> 
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
function loadperiod()
{	var frm = document.forms['form1'];
var newhref = "TenantSummaryExcel.asp?" + "&building=" + frm.building.value + "&billyear=" + frm.billyear.value + "&pid=" + frm.pid.value;
document.location.href = newhref;
    alert("rob")
}

function loadutility()
{	var frm = document.forms['form1'];
var newhref = "TenantSummaryExcel.asp?building=" + frm.building.value + "&utilityid=" + frm.utilityid.value + "&pid=" + frm.pid.value;
document.location.href = newhref;
alert("rob")
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