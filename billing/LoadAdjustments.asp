<%@ Language=VBScript %>
<%option explicit%>

<!--METADATA TYPE="typelib" FILE="/Program Files/Common Files/System/ado/msado15.dll"-->
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
    dim pid, byear, bperiod, building, utilityid, buildingname, procedure, downloadlink, btype
	Dim sSql, uSql, objFSO
	dim ctime, bperiodchar, utility, crlf
	Dim csvPath,csvFile,csvColumns
	Dim  Billperiod, Billyear, PortFolioId, utilitydisplay, rpt, pdf, Genergy_Users, demo, sql
	' Set Parameters
	pid = request("pid")
    byear = request("byear")
    bperiod = request("bperiod")
    building = request("building")
    utilityid = request("utilityid")
	btype = request("btype")
	
	' Set Default
	if UtilityId = "" then
		Utilityid = 2
	end if
	Dim rst1, rst2, cnn1
	set rst1 = server.createobject("ADODB.Recordset") 	
	
	Dim fs, tfolder, tname
	Set fs = Server.CreateObject("Scripting.FileSystemObject")

	Set tfolder = fs.GetSpecialFolder(2)
	tname = fs.GetTempName

	'Declare variables
	Dim fileSize,filename,file,fileType,p,newPath, fileOldPath

	'Assign variables
	fileSize       = Request.TotalBytes
	fileName       = Request.form("filename")
	file           = request.form("file")
	fileType       = fs.GetExtensionName(file)
	fileOldPath    = tfolder
	newPath        = Server.MapPath("D:/websites/utilitymanager/uploads")

	fs.MoveFile fileOrigPath, newPath


	set fs = nothing

%>
<html>
<head>
<title>Load Adjustments</title>
	 <form name="Upload" enctype="multipart/form-data" method="post" action="loadadjustments.asp">
		<div><INPUT TYPE="file" NAME="file" size="25" > 
		<input type="submit" value="Upload" />    </div>
	</form>
