<%option explicit%>
<!--METADATA TYPE="typelib" FILE="\Program Files\Common Files\System\ado\msado15.dll"-->
<!--#INCLUDE VIRTUAL="/genergy2/nonsecure.inc"-->
<%
'if not(allowGroups("Genergy Users")) then
'%><%
'end if
response.expires=-1
%>

<%
	dim bldgnum, byear, bperiod, utilid, actions, action, pid, bldgnums, rs,  url
	pid = request("pid")
	bldgnum = request("bldgnum")
	byear = request("byear")
	bperiod = request("bperiod")
	utilid = request("utilfilter")
	actions = split(request("action"),"+")
	action = replace(request("action"),"+"," ")
	bldgnums = request("bldgnums")
	function toNumb(val)
		if val="" or isnull(val) then
			val = 0
		end if
		if IsNumeric(CStr(val)) then
			toNumb = cdbl(val)
		end if
	end function	
	dim cnn1, rst1, rst2, strsql, insertSql
	set cnn1 = server.createobject("ADODB.connection")
	cnn1.Open getLocalConnect(Replace(bldgnum,"+"," "))
	
	Dim cmd, prm
	 
	'for each action in actions
		set cmd = server.createobject("ADODB.Command")
		With cmd
			.ActiveConnection = cnn1
			.CommandType = adCmdStoredProc
			.CommandTimeout = 300
				if action = "genbills" or action ="Bills" or action ="Tenant Bills" or action = "PDF" or action = "Bill Summary" or action = "gensummary" or action = "Summary" or action="Maintenance" or action="f/Mail" or action="eMail" then
					.CommandText = "ConsolePdfs"
					strsql = "exec ConsolePdfs '" &action& "', "
					.Parameters.Append .CreateParameter("@files", adVarChar, adParamInput, 20)
						.parameters("@files") = action
				end if
				if action = "ZIP" or action="ZipPDF" or action= "ZipSum" then
					.CommandText = "ZipFilesbyPid"
					strsql = "exec ZipFilesbyPid '" &action& "', "
					.Parameters.Append .CreateParameter("@files", adVarChar, adParamInput, 10)
						.parameters("@files") = action
				end if
				if action = "Delete" or action = "Create" or action = "UnPost" or action = "Post" then
					.CommandText = "_H2O_bill_processor"
					strsql = " exec _H2O_bill_processor '" &action& "', "
					.Parameters.Append .CreateParameter("@action", adVarChar, adParamInput, 10)
						.parameters("@action") = action
				end if
				.Parameters.Append .CreateParameter("@bldgnum", adVarChar, adParamInput, 20)
				.Parameters.Append .CreateParameter("@pid", adInteger, adParamInput)		
				.Parameters.Append .CreateParameter("@byear", adInteger, adParamInput)
				.Parameters.Append .CreateParameter("@bperiod", adInteger, adParamInput)
				.Parameters.Append .CreateParameter("@utilid", adInteger, adParamInput)
					.parameters("@bldgnum") = Replace(bldgnum,"+"," ")
					.parameters("@pid") = pid
					.parameters("@byear") = byear
					.parameters("@bperiod") = bperiod
					.parameters("@utilid") = utilid
					strsql = strsql & "'" &bldgnum& "', " &pid& ", " &byear& ", " &bperiod& ", " &utilid
			.execute
			response.write strsql
			'response.end
		end with
		
		set cmd = nothing
	'next
%>

<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

	<head>
	<meta http-equiv=Content-Type content="text/html; charset=utf-8">
	</head>

	<body>
<% 
response.write "generating.."
Response.Write ("<script>self.close();</script>")
Response.End
%>
	</body>
</html>

