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

	Dim  Billperiod, building, Billyear, PortFolioId, UtilityId, utilitydisplay, rpt, pdf, Genergy_Users, demo, sql, pid
	' Set Parameters
	building = request("bldgNum")	
	BillYear = request("billyear")
	BillPeriod = request("billperiod")
	UtilityId = request("utilityid")
    pid = request("pid")
	' Set Default
	if UtilityId = "" then
		Utilityid = 2
	end if
	Dim rst1, rst2, cnn1
	set rst1 = server.createobject("ADODB.Recordset") 	
%>
<html>
<head>
<title>Building Tax Prep</title>

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
   <form name="form1" action="BuildingTaxPrepSheet.asp">
    <tr bgcolor="#eeeeee"> 
      <td colspan="2" style="border-top:1px solid #ffffff;border-bottom:1px solid #cccccc;"> 
        <table border=0 cellpadding="3" cellspacing="0">
          <tr> 
        
				<% if trim(building)<>"" then%>
				<td> <select name="utilityid" onChange="loadutility()">
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
            <td> <select name="billyear" onclick="loadPeriod()">
                <option value="">Select Bill Year</option>
                <%
                	sql = "SELECT distinct billyear " & _
						" FROM billyrperiod WHERE " & _
				        "billyear>=year(getdate())-1 and bldgnum='"&building&"' order by billyear desc "
				        
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
					 <option value="">Select Bill Period</option>
                <%
                
				sql = "SELECT distinct billperiod " & _
						" FROM billyrperiod WHERE " & _
				        "billyear>=year(getdate())-1 and "
				sql = sql & "bldgnum='"&building&"' order by billperiod desc "
					
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

	If billperiod <> "" then
		Set objExcelReport = CreateObject("Excel.Application")
		Set objWorkBook = objExcelReport.Workbooks.Add
	
		set rst1 = server.createobject("ADODB.Recordset")

		set cnn1 = server.createobject("ADODB.Connection")
		
		cnn1.open getLocalConnect(building)
	
	sSql = "Exec usp_TaxPrepBuildingInfo " & "'" & building & "'" & ", " & UtilityId  & "," & Billyear & "," & BillPeriod
	rst1.CursorLocation = 3
	rst1.open sSql , cnn1, 3 
	
	
	' Select the First Worksheet
	Set objWorkSheet = objExcelReport.Application.Workbooks(1).Sheets(1)
	objWorkSheet.Cells.Font.Name = "Calibri"
	objWorkSheet.Cells.Font.Size = 12
    objWorkSheet.Columns(1).ColumnWidth = 40
    objWorkSheet.Columns(2).ColumnWidth = 40
    objWorkSheet.Columns(3).ColumnWidth = 40
    objWorkSheet.Columns(4).ColumnWidth = 40
    
    


' Header Columns	
	If not rst1.eof then

    
    iRow = 1
    Dim pic1
    pic1 = "https://appserver1.genergy.com/genergy2/eri_th/meterservices/invoice_logo_1.jpeg"
    
    objWorkSheet.Range("I51:I51").Select() 
    objWorkSheet.PageSetup.Zoom = False
    objWorkSheet.PageSetup.FitToPagesWide = 1
    objWorkSheet.PageSetup.FitToPagesTall = 1
    'Dim opicture1
    'opicture1 = objWorkSheet.Pictures.Insert(pic1)
    'objWorkSheet.Pictures.Insert("https://appserver1.genergy.com/genergy2/eri_th/meterservices/invoice_logo_1.jpeg").Select
    'objWorkSheet.Shapes.AddPicture("https://appserver1.genergy.com/genergy2/eri_th/meterservices/invoice_logo_1.jpeg", False, True, 1, 1, 1, 1)
    
    'objWorkSheet.Shapes.AddPicture "https://appserver1.genergy.com/genergy2/eri_th/meterservices/invoice_logo_1.jpeg", True, True, 100, 100, 70, 70
    iRow = iRow + 1
    

    objWorkSheet.Cells(iRow,1) = "Account Information"
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Font.Bold = true
    'objWorkSheet.Range("A1").ColumnWidth
    'objWorkSheet.Cells(iRow,1).ColumnWidth = 5
    objWorkSheet.Cells(iRow,2) = ""
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
   
    'objWorkSheet.Range("A1:B1").merge()
    objWorkSheet.Cells(iRow,3) = "Current Sales Taxes"
    objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,4) = ""
    objWorkSheet.Cells(iRow,4).Interior.ColorIndex = 46
    
    iRow = iRow + 1

    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Building #"
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2) = rst1("bldgnumber")
    
	objWorkSheet.Cells(iRow,3) = "NYS"
    objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,4) = rst1("currentstatesalestax")

    	iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
    objWorkSheet.Cells(iRow,1) = "Owner/Mgr"
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2) = rst1("managerowner")
	objWorkSheet.Cells(iRow,3) = "NYC"
    objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,4) = rst1("currentcitysalestax")

    

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Address"
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2) = rst1("address1")
    objWorkSheet.Cells(iRow,3) = "*MCDT"
    objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,4) = rst1("currentmetrotax")
    
    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
    objWorkSheet.Cells(iRow,1) = "*F/R"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2) = rst1("fullserviceretail")
	objWorkSheet.Cells(iRow,3) = "Total"
    objWorkSheet.Cells(iRow,3).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,4) = rst1("totalsalestaxrate")

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "*Full Service or Retail Access"
    objWorkSheet.Cells(iRow,3) = "*Metro Commuter District Transportation Tax"  
    
    iRow = iRow + 5
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Bill Period:"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    'objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,4).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,5).Interior.ColorIndex = 46

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = rst1("monthdescr")
        

    iRow = iRow + 5
    objWorkSheet.Cells(iRow,1).Font.Bold = True
	objWorkSheet.Cells(iRow,3) = "Tenant Submeter Billing"
    objWorkSheet.Cells(iRow,3).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,4).Interior.ColorIndex = 46
    
    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Total(Excl. Sales Tax)"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = rst1("totalsubmeterbilling")

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Taxable"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,3) = rst1("totaltaxablenet")
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Untaxable"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,3) = rst1("totaltenantbilling")
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46

    
    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Total Tax Charged"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,3) = rst1("totalsalestax")
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46

    
    

    iRow = iRow + 5
    objWorkSheet.Cells(iRow,1).Font.Bold = True
	objWorkSheet.Cells(iRow,2) = "Utility Billing"
    objWorkSheet.Cells(iRow,3) = "     ConEd                  ESCO                    Combined"
    'objWorkSheet.Cells(iRow,4) = "ESCO"
    'objWorkSheet.Cells(iRow,5) = "Combined"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,3).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,4).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,5).Interior.ColorIndex = 46

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,2) = "Total(excl. tax)"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Font.Bold = False
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
	'objWorkSheet.Cells(iRow,3) = rst1("conedbillnet")
    'objWorkSheet.Cells(iRow,4) = rst1("escobillnet")
    objWorkSheet.Cells(iRow,3) = rst1("combinedbillnet")
    

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Sales Tax(Calculated)"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    ''objWorkSheet.Cells(iRow,3) = rst1("conedbillsalestaxcalc")
    ''objWorkSheet.Cells(iRow,4) = rst1("escobillsalestaxcalc")
    objWorkSheet.Cells(iRow,3) = rst1("combinedsalestaxcalc")
    
    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Sales Tax(Paid)"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    'objWorkSheet.Cells(iRow,3) = rst1("conedbillsalestaxpaid")
    'objWorkSheet.Cells(iRow,4) = rst1("escobillsalestaxpaid")
    objWorkSheet.Cells(iRow,3) = rst1("combinedsalestaxpaid")
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Total(Calculated)"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    'objWorkSheet.Cells(iRow,3) = rst1("conedbilltotalcalc")
    'objWorkSheet.Cells(iRow,4) = rst1("escobilltotalcalc")
    objWorkSheet.Cells(iRow,3) = rst1("combinedbilltotalcalc")
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Total(Paid)"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    'objWorkSheet.Cells(iRow,3) = rst1("conedbilltotalpaid")
    'objWorkSheet.Cells(iRow,4) = rst1("escobilltotalpaid")
    objWorkSheet.Cells(iRow,3) = rst1("combinedbilltotalpaid")
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46

    
    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Unpaid Use Tax"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    'objWorkSheet.Cells(iRow,3) = rst1("unpaidusetax")
    'objWorkSheet.Cells(iRow,4) = rst1("unpaidusetax")
    objWorkSheet.Cells(iRow,3) = rst1("combinedunpaid")
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46

    

    iRow = iRow + 3
    objWorkSheet.Cells(iRow,1).Font.Bold = True
	objWorkSheet.Cells(iRow,3) = " Electricity Sales & Use"
    objWorkSheet.Cells(iRow,3).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,4).Interior.ColorIndex = 46

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Purchased(KWH)"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = rst1("electricitypurchased")
    
    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Resold(KWH)"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = rst1("electricityresold")
    

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Percentage Resold"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = rst1("ratio")

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Calc. Resold(excl. sales tax)"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = rst1("calcelectricityresoldPER")
    
    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Calc. Resold(excl. sales tax - Subject to NYC loc. tax)"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = rst1("calcelectricityresoldNYC")

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Calc. Resold(excl. sales tax - Subject to NYC+NYS loc. tax)"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = rst1("calcelectricityresoldNYS")

   
    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,2) = "Clac. Credit For Use Tax Paid on Electricity that Was Resold"
    objWorkSheet.Cells(iRow,2).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    'objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = rst1("calccredit")

    

    iRow = iRow + 5
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Long Method of Calculating Monthly Sales Tax Due Based on ST-809 NYS Sales and Use Tax Return for Monthly Filers"
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,4).Interior.ColorIndex = 46
    

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Line 1 = Total Gross Sales and Services"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "Total Gross Submeter Billing(Excluding Sales Tax)"
    objWorkSheet.Cells(iRow,4) = rst1("totalgrosssubmeterbillecltax")

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Line 2 = Gross Taxable Sales and Services"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "Total Gross Submeter Billing(Excluding Sales Tax-Tax-Exempt Tenants)"	
    objWorkSheet.Cells(iRow,4) = rst1("totalgrosssubmeterbillecltaxexempt")

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Line 3 = Total Purchases Subject to Sales Tax"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "Calculation of purchase subject to sales tax based on unpaid use tax"	
    objWorkSheet.Cells(iRow,4) = rst1("calcpurchases")

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = ""
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "4a = Total Sales Tax Billed to Submeter Tenants"	
    objWorkSheet.Cells(iRow,3).Font.ColorIndex = 46
    objWorkSheet.Cells(iRow,4) = rst1("foura")
    objWorkSheet.Cells(iRow,4).Font.ColorIndex = 46

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Line 4 = Sales and Use Tax"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "4b = Unpaid Use Tax Applicable to Electricity Purchases"
    objWorkSheet.Cells(iRow,3).Font.ColorIndex = 46
    objWorkSheet.Cells(iRow,4) = rst1("fourb")
    objWorkSheet.Cells(iRow,4).Font.ColorIndex = 46

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = ""
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "4c = Use Tax Actually Paid on Purchases of Resold Electricity"
    objWorkSheet.Cells(iRow,3).Font.ColorIndex = 46	
    objWorkSheet.Cells(iRow,4) = rst1("fourc")
    objWorkSheet.Cells(iRow,4).Font.ColorIndex = 46

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = ""
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "Total Sales Tax Billed to Submeter Tenants Plus Unpaid Use Tax"	
    objWorkSheet.Cells(iRow,4) = rst1("totalsalestaxbilled")

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Line 5 = Credit for Prepaid Sales Tax"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "Typically not applicable - for building owner to fill out"
    objWorkSheet.Cells(iRow,4) = "$      -"

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Line 6 = Net Tax Due"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "Line 4 minus Line 5"	
    objWorkSheet.Cells(iRow,4) = rst1("line4minusline5")

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Line 7 = Credits Not Identified"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "Typically not applicable - for building owner to fill out"
    objWorkSheet.Cells(iRow,4) = "$      -"

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Line 8 = Advance Payments"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "Typically not applicable - for building owner to fill out"
    objWorkSheet.Cells(iRow,4) = "$      -"
    	
    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Line 9 = Total Credits"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "Line 7 plus Line 8"
    objWorkSheet.Cells(iRow,4) = "$      -"

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Line 10 = Sales and use Tax Due"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "Line 6 minus Line 9"		
    objWorkSheet.Cells(iRow,4) = rst1("line6minusline9")

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Line 11 = Penalty And Interest"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,3) = "Typically not applicable - for building owner to fill out"
    objWorkSheet.Cells(iRow,4) = "$      -"

    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Line 12 = Amount Due"
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,3) = "Line 10 plus Line 11"	
    objWorkSheet.Cells(iRow,1).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,1).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,2).Interior.ColorIndex = 46
    objWorkSheet.Cells(iRow,4) = rst1("line10plusline11")
    objWorkSheet.Cells(iRow,4).Font.ColorIndex = 2
    objWorkSheet.Cells(iRow,4).Interior.ColorIndex = 46

    iRow = iRow + 5
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = ""
    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Please Note: While the data included in this worksheet has been analyzed to ensure it's accuracy, CPLEMS is not an accounting firm."
    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "Sales & Use Tax calculations are provided as a way to assist our clients with the task of filing their monthly/quarterly tax returns."
    iRow = iRow + 1
    objWorkSheet.Cells(iRow,1).Font.Bold = False
	objWorkSheet.Cells(iRow,1) = "However, tax calculations and applicable local tariffs should be verified by your accountant or licenced CPA."
    



    End if
      
	
	
	
	
	



    'objWorkSheet.Columns("A:AP").Select
    'objExcelReport.Selection.Columns.AutoFit
     
    objWorkSheet.Rows("8:8").Select
    objExcelReport.ActiveWindow.FreezePanes = True

    dim ctime 
    ctime = hour(now) & minute(now) & second(now) & Billyear  & Billperiod  & UtilityId & building

																				


	objExcelReport.DisplayAlerts = False
	'objWorkBook.SaveAs("\\10.0.7.21\web_folders\finance\"  & building & Billyear  & Billperiod  & UtilityId & "MeterLetter.xls")
	objWorkBook.SaveCopyAs("\\serv-db\web_folders\finance\"  & ctime & "TaxPrepSheet.xlsx")
	objExcelReport.DisplayAlerts = True
	objExcelReport.Quit
	
	set objWorkSheet = Nothing
	set objWorkBook = Nothing
	set objExcelReport = Nothing
	' Set up Email to be Sent


	Dim objFSO, strFileName
	Set objFSO = CreateObject("Scripting.FileSystemObject")
	strFilename = "\\serv-db\web_folders\finance\"  & ctime & "TaxPrepSheet.xlsx"
	If objFSO.FileExists(strFileName) Then 
	%>
	<p> Following report has been generated :
	<a style="font-family:arial;font-size:12;text-decoration:none;color:black;" href="https://appserver1.genergy.com/eri_TH/finance/<%=ctime%>TaxPrepSheet.xlsx" target="_blank" onMouseOver="this.style.color= 'lightblue'"; onMouseOut="this.style.color = 'black'"><b><%=ctime%>TaxPrepSheet.xlsx</b></a> 
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
function loadperiod()
{	var frm = document.forms['form1'];
var newhref = "BuildingTaxPrepSheet.asp?" + "&building=" + frm.building.value + "&billyear=" + frm.billyear.value + "&pid=" + frm.pid.value;
	document.location.href=newhref;
}

function loadutility()
{	var frm = document.forms['form1'];
var newhref = "BuildingTaxPrepSheet.asp?building=" + frm.building.value + "&utilityid=" + frm.utilityid.value + "&pid=" + frm.pid.value;
	document.location.href=newhref;
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