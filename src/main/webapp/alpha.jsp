<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>blocktag.jsp</title>
<style type="text/css">
span{
font-size : 12pt;
font-family:monospace;
}
h1{
font-size : 20pt;}
</style>

</head>
<body>
<h1>Alpha Generator</h1>
<h1 style="font-family:monospace;">Alpha Generator</h1>    
<hr>
<%-- <span style="background: red; color: blue ">A</span><span>B</span><br>  원래는 background-color --%>
<%
	for(int i=0; i<20; i++){
		for(int j=0; j<40; j++){
			var a = new Alpha();
			var span = String.format("<span style=\"color:%s; background: %s; \">%c</span>", 
			a.getFg().toString(), a.getBg().toString(), a.getCh()); 
			out.print(span);
		}
		out.println("<br>");
	}
%>  <%-- toString()은 빼도 된다 --%>

</body>
</html>