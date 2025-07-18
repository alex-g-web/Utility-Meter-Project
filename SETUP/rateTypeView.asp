<%option explicit%>

<!--METADATA TYPE="typelib" FILE="\Program Files\Common Files\System\ado\msado15.dll"-->
<!--#INCLUDE VIRTUAL="/genergy2/nonsecure.inc"-->
<%
'2/15/2008 N.Ambo amended to remove limit placed on enddate where rates are shown dependent on the enddate

if not(allowGroups("Rate Setup")) then '("Genergy Users,clientOperations")) then
<!--#INCLUDE VIRTUAL="/genergy2/secure.inc"-->
%>

<%
end if

dim cnn1, rst1, strsql, rst2
set cnn1 = server.createobject("ADODB.connection")
set rst1 = server.createobject("ADODB.recordset")
set rst2 = server.createobject("ADODB.recordset")
cnn1.open getConnect(0,0,"dbCore")

dim rid, rtid
rid = secureRequest("rid")
rtid = secureRequest("rtid")

' Added by Tarun 03/07/2008
Dim fid,fname,fdesc

dim rcity
if trim(rid)<>""  then
	rst1.Open "SELECT city FROM regions WHERE id='"&rid&"'", cnn1
	if not rst1.EOF then rcity = rst1("city")
  rst1.Close
end if
%>
<html>
<head>
<title>Rate Types</title>
<script>
function popUp(page, windowsizew, windowsizeh,scrollstat,id){
	var w = windowsizew;
	var h = windowsizeh;
	var winl = (screen.width - w) / 2;
    var wint = (screen.height - h) / 2;

    winprops = 'height='+h+',width='+w+',top='+wint+',left='+winl+',status=yes,scrollbars='+scrollstat+',resizable=yes'
	popupwin=window.open(page,id,winprops)
	popupwin.focus(id)
}
function rateEdit(rateid,rtid)
{	//document.location.href = 
	var url 
	url='rateEdit.asp?rid=<%=rid%>&rtid=' + rtid + '&rateid='+rateid;
	popUp(url, 640, 480, 'yes',rtid)
}

function rateHistory(rateid, rtid) {	//document.location.href = 
    var url
    url = 'rateTypeViewHistory.asp?rid=<%=rid%>&rtid=' + rtid + '&rateid=' + rateid;
    popUp(url, 900, 500, 'yes', rtid)
}

function rateTypeEdit(rtid)
{	document.location.href = 'rateTypeEdit.asp?rid=<%=rid%>&rtid='+rtid;
}
function goEdit(rtype, rtid){
  //alert(rtype)
  document.location="rateTypeSave.asp?rid=<%=rid%>&action=Update&rtype=" + rtype + "&rtid=" + rtid;
}

function showEdit(rtid){	
  document.all['txt'+(rtid)].style.display = 'none';
  document.all['edit'+(rtid)].style.display = 'inline';
  document.all['row'+(rtid)].style.backgroundColor = '#ddffdd';
}

function hideEdit(rtid){	
  document.all['txt'+(rtid)].style.display = 'inline';
  document.all['edit'+(rtid)].style.display = 'none';
  document.all['row'+(rtid)].style.backgroundColor = '#eeeeee';
}

function visibilityChange(rate,labels){
	try{
		state = labels.innerHTML;
		state = (state=="[-]"?"[+]":"[-]");
		document.all[rate].style.display=(state=="[+]"?'none':'inline');
		labels.innerHTML = state;
		document.location="#a"+rate
	}catch(exception){};
}
</script>
<link rel="Stylesheet" href="setup.css" type="text/css">
</head>

<body topmargin=0 leftmargin=0 marginwidth=0 marginheight=0 <%if rtid<>"" then%>onload="visibilityChange('panel<%=rtid%>', 'row<%=rtid%>')"<%end if%>>
<table width="100%" border="0" cellpadding="3" cellspacing="0">
  <form>
    <input type="hidden" name="rid" value="<%=rid%>">
    <tr bgcolor="#3399cc"> 
      <td style="border-bottom:1px solid #ffffff;"><span class="standard" style="color:#ffffff">&nbsp;<a href="regionView.asp" style="color:#ffffff;font-weight:bold;text-decoration:none;">Rate 
        Setup</a> | <a href="regionedit.asp?rid=<%=rid%>" style="color:#ffffff"><%=rcity%> 
        Region</a> | <a href="seasonView.asp?rid=<%=rid%>" style="color:#ffffff">Seasons 
        &amp; Rate Peaks</a> | Rate Types</span></td>
      <td align="right" style="border-bottom:1px solid #ffffff;"><input type="button" value="Copy Rate Type" onClick="document.all['copyratetype'].style.display='inline';document.all['newratetype'].style.display='none';" class="standard">
        &nbsp;
        <input type="button" value="Add Rate Type" onClick="document.all['newratetype'].style.display='inline';document.all['copyratetype'].style.display='none';" class="standard"></td>
    </tr>
  </form>
</table>
<div id="newratetype" style="display:'none';">
<table border=0 cellpadding="3" cellspacing="0" width="100%">
<form method="post" action="rateTypeSave.asp">
<%
'if isempty(Session("name")) then

'Response.End()
'End  If
%>
<input type="hidden" name="rid" value="<%=rid%>">
<tr>
  <td align="center" bgcolor="#eeeeee" style="border-top:1px solid #ffffff;border-bottom:1px solid #999999;">
  <table border=0 cellpadding="1" cellspacing="0">
  <tr>
    <td><span class="standard"><b>New Rate Type:</b></span></td>
    <td><input type="text" name="rtype" value=""></td>
  </tr>
<tr bgcolor="#eeeeee">
	<td><span class="standard"><b>Function Name:</b></span></td>
	<td><input type="text" name="functionname" value="<%=fname%>"></td>
</tr>
<tr bgcolor="#eeeeee">
	<td ><span class="standard"><b>Function Description:</b></span></td>
	<td ><input type="text" name="functiondesc" value="<%=fdesc%>"></td>
</tr>
<tr>
   <td><input type="submit" name="action" value="Save" class="standard"></td>
   <td><input type="button" value="Cancel" onClick="document.all['newratetype'].style.display='none';" class="standard" id=button1 name=button1></td>
</tr>  
  </table>        
  </td>
</tr>
</form>
</table>
</div>
<div id="copyratetype" style="display:'none';">
<table border=0 cellpadding="3" cellspacing="0" width="100%">
<form method="GET" action="rateTypeSave.asp">
<input type="hidden" name="rid" value="<%=rid%>">
<tr>
  <td align="center" bgcolor="#eeeeee" style="border-top:1px solid #ffffff;border-bottom:1px solid #999999;">
  <table border=0 cellpadding="1" cellspacing="0">
  <tr>
    <td class="standard"><b>Copy Rate Type:</b></td>
    <td>
		<select name="rtypecopyfrom">
		<%
			rst1.open "SELECT * FROM ratetypes WHERE regionid='"&rid&"' and id not in (select id from ratetypesdisabled) ORDER BY type", cnn1
				do until rst1.eof
					response.write "<option value="""&rst1("id")&""">"&rst1("type")&"</option>"
					rst1.movenext
				loop
			rst1.close
		%>
		</select>
	</td>
	
    <td class="standard"><b>as</b></td>
    <td><input type="text" name="rtypecopyto" value=""></td>
    <td><input type="submit" name="action" value="Copy" class="standard"></td>
    <td><input type="button" value="Cancel" onClick="document.all['copyratetype'].style.display='none';" class="standard"></td>
  </tr>
<tr>
  <td colspan="2" bgcolor="#dddddd"><input type="button" value="Set Up Rate Seasons" onclick="document.location='seasonView.asp?rid=<%=rid%>';" class="standard">&nbsp;<input type="button" value="Set Up Rate Types" onclick="document.location='rateTypeView.asp?rid=<%=rid%>';" class="standard">&nbsp;<input type="button" value="Set Up Holidays" onclick="document.location='holidayView.asp?rid=<%=rid%>';" class="standard"><input type="button" value="Rate Builder" onclick="document.location='ratebuilder/editcomponents.asp';" class="standard"><input type="button" value="Fuel Sheet Adjustments" onclick="document.location='ratebuilder/monthlyadjustments.asp';" class="standard"></td>
</tr>  
  </table>        
  </td>
</tr>
</form>
</table>
</div>
<%
if trim(rid)<>""  then
	rst1.Open "SELECT * FROM ratetypes WHERE regionid='"&rid&"' and id not in (select id from ratetypesdisabled) ORDER BY type", cnn1
	if not rst1.EOF then hasSeasons = true
	if not rst1.EOF then%>
		<table width="100%" border="0" cellpadding="3" cellspacing="0">

		<%do until rst1.EOF%>
    <form method="post" action="rateTypeSave.asp">
    <input type="hidden" name="rid" value="<%=rid%>">
    <tr>
      <td bgcolor="#eeeeee" colspan="2" style="padding:12px;">
      <table border=0 cellpadding="0" cellspacing="0" width="100%" style="border:1px solid #cccccc;">            
      <tr id="row<%=rst1("id")%>" bgcolor="#eeeeee">
        <td style="border-top:1px solid #ffffff;border-bottom:1px solid #999999;padding:3px;"><label onClick="visibilityChange('panel<%=rst1("id")%>', this)">[+]</label>
        <span id="txt<%=rst1("id")%>" style="display:'inline';" class="standard"><a name="aPanel<%=rst1("id")%>"></a><b>Rate Type:</b>&nbsp;<%=rst1("type")%></span>
        <span id="edit<%=rst1("id")%>" style="display:'none';">
        <table border=0 cellpadding="1" cellspacing="0">
        <tr>
          <td><span class="standard"><b>Rate Type:</b></span></td>
          <td><input type="text" name="field<%=rst1("id")%>" value="<%=rst1("type")%>"></td>
          <td><input type="button" value="Save" onClick="goEdit(field<%=rst1("id")%>.value, <%=rst1("id")%>)" class="standard"></td>
          <td><input type="button" value="Cancel" onClick="hideEdit(<%=rst1("id")%>);" class="standard"></td>
        </tr>
        </table>        
        </span>
        </td>
        <td style="border-top:1px solid #ffffff;border-bottom:1px solid #999999;padding:3px;" align="right"><input type="button" value="Edit Rate Type" onClick="showEdit(<%=rst1("id")%>)" class="standard"></td>
        <!--[[td style="border-top:1px solid #ffffff;border-bottom:1px solid #999999;padding:3px;" align="right"]][[input type="button" value="Edit Rate Type" onclick="rateTypeEdit([[%=rst1("id")%]]);" class="standard"]][[/td]]-->
      </tr>
      <tr valign="top" bgcolor="#eeeeee">
        <td colspan="2" bgcolor="#ffffff">
        <!-- begin rate type cell -->
        <!-- begin rate type tables -->
    <%
    Response.Write(Session("name"))
    dim hasSeasons, hasRatepeaks, sqlstr
    if rst1("id")<>"" then
    '2/15/2008 N.Ambo removed limit to enddate
	  'sqlstr = "SELECT r.id as rateid, rp.id as rpid, * FROM rate r LEFT JOIN ratepeak rp ON rp.id=r.peak LEFT JOIN rateseasons rs ON rs.id=rp.seasonid LEFT JOIN ratedescription rd ON rd.id=r.linecharge LEFT JOIN tblutility u ON u.utilityid=r.utility WHERE r.type='"&rst1("id")&"' and enddate > getdate()-670 ORDER BY itemtype desc, enddate desc, season desc, rateto desc"
	  sqlstr = "SELECT r.id as rateid, rp.id as rpid, r.linecharge, * FROM rate r LEFT JOIN ratepeak rp ON rp.id=r.peak LEFT JOIN rateseasons rs ON rs.id=rp.seasonid LEFT JOIN ratedescription rd ON rd.id=r.linecharge LEFT JOIN tblutility u ON u.utilityid=r.utility WHERE r.type='"&rst1("id")&"' and startdate > '5/31/2009'  ORDER BY startdate desc, enddate desc, itemtype desc, description asc, ratefrom asc, rateto asc"
      rst2.Open sqlstr, cnn1
      if not rst2.EOF then%>
        <table border=0 cellpadding="3" cellspacing="0" width="100%" bgcolor="#cccccc" id="panel<%=rst1("id")%>" style="display:none">
      <tr bgcolor="#ffffff">
        <td colspan="8"><input type="button" value="Add Rate" onClick="rateEdit('',<%=rst1("id")%>)" class="standard"><input type="button" value="Show History" onClick="rateHistory('',<%=rst1("id")%>)" class="standard"></td><td><%= rst1("id") %> </td>
      </tr>
        <tr bgcolor="#dddddd">
          <td width="10%"><span class="standard"><b>Utility</b></span></td>
          <td width="10%"><span class="standard"><b>Rate</b></span></td>
          <td width="25%"><span class="standard"><b>Peak</b></span></td>
          <td width="10%"><span class="standard"><b>Rate Level</b></span></td>
          <td width="10%"><span class="standard"><b>Item Type</b></span></td>
          <td width="10%"><span class="standard"><b>Line Charge</b></span></td>
          <td width="15%"><span class="standard"><b>Season</b></span></td>
          <td width="10%"><span class="standard"><b>Date Range</b></span></td>
        </tr>
    
        <%do until rst2.EOF%>
        <tr bgcolor="#ffffff" onMouseOver="this.style.backgroundColor = 'lightgreen'" onMouseOut="this.style.backgroundColor = 'white'" onClick="rateEdit(<%=rst2("rateid")%>,<%=rst2("type")%>);">
          <td><span class="standard"><%=rst2("Utility")%></span></td>
          <td><span class="standard">$<%=rst2("rate")%></span></td>
          <td><span class="standard"><%if not isnull(rst2("sweekday")) then%><%=rst2("label")%> (<%=left(weekdayname(rst2("sweekday")),2)%>&nbsp;-&nbsp;<%=left(weekdayname(rst2("eweekday")),2)%>&nbsp;<%=rst2("stime")%>&nbsp;-&nbsp;<%=rst2("etime")%>)<%else%>No Rate Peak<%end if%></span></td>
          <td><span class="standard"><%=rst2("ratefrom")%>-<%=rst2("rateto")%></span></td>
          <td><span class="standard"><%=rst2("itemtype")%></span></td>
          <td><span class="standard"><%=rst2("description")%></span></td>
          <td><span class="standard"><%if not isnull(rst2("season")) then%><%=rst2("season")%>&nbsp;(<%=left(monthname(rst2("Smonth")),3)%>&nbsp;<%=rst2("sday")%>&nbsp;-&nbsp;<%=left(monthname(rst2("emonth")),3)%>&nbsp;<%=rst2("eday")%>)<%end if%>
                                     <%if not(isnull(rst2("monthstart")) or rst2("monthstart")="0") and not(isnull(rst2("monthend")) or rst2("monthend")="0" or rst2("monthend")>12) then%><%=monthname(cInt(rst2("monthstart")))%>&nbsp;-&nbsp;<%=monthname(cInt(rst2("monthend")))%><%ELSE%><font color="#FF0000">CHECK SETUP</font><%end if%></span></td>
          <td><span class="standard"><%=rst2("startdate")%>-<%=rst2("enddate")%></span></td>
        </tr>
        
        <%
		rst2.movenext
        loop%>

      </table>
      <%
      else
      %>
      <table border=0 cellpadding="3" cellspacing="0" id="panel<%=rst1("id")%>" style="display:none">
      <tr><td><span class="standard">There are no rates set up for this rate type.</span></td></tr>
      <tr><td><span class="standard"><input type="button" value="Add Rate" onClick="rateEdit('',<%=rst1("id")%>)" class="standard"></span></td></tr>
      </table>	
      <%
      end if
      rst2.close
      %>
      </td>
    </tr>
    </table>
    <%
    else
      %>
      <table border=0 cellpadding="3" cellspacing="0">
      <tr><td><span class="standard">There are no rates set up for this rate type.</span></td></tr>
      </table>	
      <%
    end if
    %>
    <!-- end rate type cell -->
    </td>
    </tr>
		</form>
		<%rst1.movenext
		loop%>
	<tr><td bgcolor="#eeeeee" style="border-bottom:1px solid #999999;" height="10"><span class="standard">&nbsp;</span></td></tr>
	</table>
	<%
	else %>
  <table border=0 cellpadding="3" cellspacing="0" width="100%">
  <tr bgcolor="#dddddd"><td><span class="standard"><b>Rate Types</b></span></td></tr>
  <tr bgcolor="#ffffff"><td><span class="standard">No rate types have been set up for this region.</span></td></tr>
  <tr bgcolor="#ffffff"><td><input type="button" value="Add Rate Type" onClick="document.all['newratetype'].style.display='inline';" id=1 name=1></td></tr>
  </table>
  <%
	end if
	rst1.close
else	%>
  <table border=0 cellpadding="3" cellspacing="0" width="100%">
  <tr bgcolor="#dddddd"><td><span class="standard"><b>Rate Types</b></span></td></tr>
  <tr bgcolor="#ffffff"><td><span class="standard">No region was passed to this script. Please return to <a href="regionView.asp">Rate Setup</a> to select a region.</span></td></tr>
  <tr bgcolor="#ffffff"><td><input type="button" value="Add Rate Type" onClick="document.all['newratetype'].style.display='inline';" id=1 name=1></td></tr>
  </table>

<%
end if

%>
</form>
</body>
</html>
