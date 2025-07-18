<html>
<head>
<title>Calendar</title>
<script language="JavaScript">
<!--
// AUTHOR:       Unknown
// MODIFIED BY:  Robert W. Husted
// COMPANY:      Netscape Communications

var styleFlag;

function setDate() {
    styleFlag = document.calControl.style?1:0;
    this.inDate      = parent.document.forms[0].startdate.value;

    var now   = new Date();
    var day   = now.getDate();
    var month = now.getMonth();
    var year  = now.getFullYear();

    if (inDate.indexOf('/')) {
    var inMonth = inDate.substring(0,inDate.indexOf("/"));
    if (inMonth.substring(0,1) == "0" && inMonth.length > 1)
    inMonth = inMonth.substring(1,inMonth.length);
    inMonth = parseInt(inMonth);
    var inDay   = inDate.substring(inDate.indexOf("/") + 1, inDate.lastIndexOf("/"));
    if (inDay.substring(0,1) == "0" && inDay.length > 1)
    inDay = inDay.substring(1,inDay.length);
    inDay = parseInt(inDay);
    var inYear  = parseInt(inDate.substring(inDate.lastIndexOf("/") + 1, inDate.length));
    if (inDay) {day = inDay;}
    if (inMonth) {month = inMonth-1;}
    if (inYear) {year = inYear;}
    }
    this.focusDay = day;
    document.calControl.month.selectedIndex = month;
    document.calControl.year.value = year;
    displayCalendar(day, month, year);
    }

function setToday() {
    var now   = new Date();
    var day   = now.getDate();
    var month = now.getMonth();
    var year  = now.getFullYear();

    this.focusDay = day;
    document.calControl.month.selectedIndex = month;
    document.calControl.year.value = year;
    displayCalendar(day, month, year);
    }
function isFourDigitYear(year) {
    if (year.length != 4) {
    alert ("Sorry, the year must be four-digits in length.");
    document.calControl.year.select();
    document.calControl.year.focus();
    }
    else {return true;
    }
    }
function selectDate() {
    var year  = document.calControl.year.value;
    if (isFourDigitYear(year)) {
    var day   = 0;
    var month = document.calControl.month.selectedIndex;
    displayCalendar(day, month, year);
    }
}
function setPreviousYear() {
    var year  = document.calControl.year.value;
    if (isFourDigitYear(year)) {
    var day   = 0;
    var month = document.calControl.month.selectedIndex;
    year--;
    document.calControl.year.value = year;
    displayCalendar(day, month, year);
    }
}
function setPreviousMonth() {
    var year  = document.calControl.year.value;
    if (isFourDigitYear(year)) {
    var day   = 0;
    var month = document.calControl.month.selectedIndex;
    if (month == 0) {
    month = 11;
    if (year > 1000) {
    year--;
    document.calControl.year.value = year;
    }
    }
    else {
    month--;
    }
    document.calControl.month.selectedIndex = month;
    displayCalendar(day, month, year);
    }
}
function setNextMonth() {
var year  = document.calControl.year.value;
if (isFourDigitYear(year)) {
var day   = 0;
var month = document.calControl.month.selectedIndex;
if (month == 11) {
month = 0;
year++;
       document.calControl.year.value = year;
        }
        else {
        month++;
        }
        document.calControl.month.selectedIndex = month;
        displayCalendar(day, month, year);
    }
}
function setNextYear() {
    var year  = document.calControl.year.value;
    if (isFourDigitYear(year)) {
    var day   = 0;
    var month = document.calControl.month.selectedIndex;
    year++;
    document.calControl.year.value = year;
    displayCalendar(day, month, year);
    }
}
function displayCalendar(day, month, year) {       
    day     = parseInt(day);
    month   = parseInt(month);
    year    = parseInt(year);
    var i   = 0;
    var now = new Date();
    if (day == 0) {
    var nowDay = now.getDate();
    }
    else {
    var nowDay = day;
    }
    var days         = getDaysInMonth(month+1,year);
    var firstOfMonth = new Date (year, month, 1);
    var startingPos  = firstOfMonth.getDay();
    days += startingPos;

//MAKE BEGINNING NON-DATE BUTTONS BLANK
    for (i = 0; i < startingPos; i++) {
        document.calButtons.elements[i].value = "   ";
        if (styleFlag) document.calButtons.elements[i].style.visibility="hidden";
    }
    // SET VALUES FOR DAYS OF THE MONTH
    for (i = startingPos; i < days; i++)  
    {
     document.calButtons.elements[i].value = i-startingPos+1;
     document.calButtons.elements[i].onClick = "returnDate"
     if (styleFlag) document.calButtons.elements[i].style.visibility="visible";
    }
    // MAKE REMAINING NON-DATE BUTTONS BLANK
    for (i=days; i<42; i++)  {
        document.calButtons.elements[i].value = "   ";
        if (styleFlag) document.calButtons.elements[i].style.visibility="hidden";
    }
    // GIVE FOCUS TO CORRECT DAY
    //document.calButtons.elements[focusDay+startingPos-1].focus();
}
// GET NUMBER OF DAYS IN MONTH
function getDaysInMonth(month,year)  {
var days;
if (month==1 || month==3 || month==5 || month==7 || month==8 ||
month==10 || month==12)  days=31;
else if (month==4 || month==6 || month==9 || month==11) days=30;
else if (month==2)  {
if (isLeapYear(year)) {days=29;}
else {
days=28;
}
}
return (days);
}
// CHECK TO SEE IF YEAR IS A LEAP YEAR
function isLeapYear (Year) {
    if (((Year % 4)==0) && ((Year % 100)!=0) || ((Year % 400)==0)) {
    return (true);
    }
    else {
    return (false);
    }
}
// SET FORM FIELD VALUE TO THE DATE SELECTED
function returnDate(inDay)
{
var day   = inDay;
var month = (document.calControl.month.selectedIndex)+1;
var year  = document.calControl.year.value;
if ((""+month).length == 1)
{
month="0"+month;
}
if ((""+day).length == 1)
{
day="0"+day;
}
if (day != "   ") {
var d = month + "/" + day + "/" + year;

	document.forms.calControl.seldate.value=d
	
}
}
// -->
</script>
</head><style type="text/css">
<!--
BODY {
SCROLLBAR-FACE-COLOR: #0099FF;
SCROLLBAR-HIGHLIGHT-COLOR: #0099FF;
SCROLLBAR-SHADOW-COLOR: #333333;
SCROLLBAR-3DLIGHT-COLOR: #333333;
SCROLLBAR-ARROW-COLOR: #333333;
SCROLLBAR-TRACK-COLOR: #333333;
SCROLLBAR-DARKSHADOW-COLOR: #333333;
}
-->
</style>

<%
m=Request.QueryString("m")
d=Request.QueryString("d")
b=Request.QueryString("b")
s=Request.QueryString("s")
e=Request.QueryString("e")
portfolioid=Request.QueryString("portfolioid")
luid=Request.QueryString("luid")

%>
<body bgcolor="#FFFFFF" onload="setDate()" text="#990000" link="#CC3333">
<center>
<form name="calControl" onSubmit="return false;">
              <input type="hidden" name="b" value="<%=b%>">
              <input type="hidden" name="m" value="<%=m%>">
              <input type="hidden" name="s" value="<%=s%>">
              <input type="hidden" name="e" value="<%=e%>">
              <input type="hidden" name="nozoom" value="<%=request.QueryString("nozoom")%>">
              <input type="hidden" name="portfolioid" value="<%=portfolioid%>">
              <input type="hidden" name="luid" value="<%=luid%>">
			  <input type="hidden" name="seldate" value="<%=date()%>">
<table cellpadding=0 cellspacing=0 border=0>
<tr><td colspan=7>
<center>
<select name="month" onChange='selectDate()'>
<option>January
<option>February
<option>March
<option>April
<option>May
<option>June
<option>July
<option>August
<option>September
<option>October
<option>November
<option>December
</select>
<input name="year" type=text size=4 maxlength=4 onChange="selectDate()">
</center>
</td>
</tr>
<tr>
<td colspan=7>
<center>
<input type=button name="previousYear" value="<<"    onClick="setPreviousYear()">
<input type=button name="previousYear" value=" < "   onClick="setPreviousMonth()">
<input type=button name="previousYear" value="Today" onClick="setToday()">
<input type=button name="previousYear" value=" > "   onClick="setNextMonth()">
<input type=button name="previousYear" value=">>"    onClick="setNextYear()">
</center>
</td>
</tr>
</form>
<form name="calButtons">
<tr height=10><td></td></tr>
<tr><td><center><font size=-1 face="Arial,Helv,Helvetica"><b>Su</b></font></center></td>
<td><center><font size=-1 face="Arial,Helv,Helvetica"><b>Mo</b></font></center></td>
<td><center><font size=-1 face="Arial,Helv,Helvetica"><b>Tu</b></font></center></td>
<td><center><font size=-1 face="Arial,Helv,Helvetica"><b>We</b></font></center></td>
<td><center><font size=-1 face="Arial,Helv,Helvetica"><b>Th</b></font></center></td>
<td><center><font size=-1 face="Arial,Helv,Helvetica"><b>Fr</b></font></center></td>
<td><center><font size=-1 face="Arial,Helv,Helvetica"><b>Sa</b></font></center></td></tr>
<tr><td><input type="button" name="but0"  value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but1"  value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but2"  value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but3"  value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but4"  value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but5"  value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but6"  value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td></tr>
<tr><td><input type="button" name="but7"  value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but8"  value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but9"  value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but10" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but11" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but12" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but13" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td></tr>
<tr><td><input type="button" name="but14" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but15" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but16" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but17" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but18" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but19" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but20" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td></tr>
<tr><td><input type="button" name="but21" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but22" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but23" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but24" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but25" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but26" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but27" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td></tr>
<tr><td><input type="button" name="but28" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but29" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but30" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but31" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but32" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but33" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but34" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td></tr>
<tr><td><input type="button" name="but35" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but36" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but37" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but38" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but39" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but40" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td>
<td><input type="button" name="but41" value="    " onClick="returnDate(this.value)" style="width:22px" width=22></td></tr>
</form></table>
</form>

</center></body>

</html>


