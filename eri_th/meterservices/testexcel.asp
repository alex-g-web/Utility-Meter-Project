<%
Dim xlApp, xlBook, xlSheet
'create the Application Object and workbook object
Set xlApp = Server.CreateObject("Excel.Application")
Set xlBook = xlApp.Workbooks.Add
Set xlSheet = xlBook.Worksheets.Add
%>