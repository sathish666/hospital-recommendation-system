<%@page import="java.util.StringTokenizer"%>
<%@page import="javafx.scene.shape.Line"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String email = request.getParameter("e");
String password = request.getParameter("p");

FileReader fr=new FileReader("/home/hadoop/user.csv");
BufferedReader br = new BufferedReader(fr);
String s = "";
boolean f = false;
while( (s = br.readLine()) != null)
{
    String s1 [] = s.split(",");
    if(s1[1].equals(email)&& s1[2].equals(password)){
    	
    	f = true;
    	break;
    }
	//break comma separated line using ","

}
if(f){
	response.sendRedirect("search.jsp");
	
}else{
	response.sendRedirect("user.jsp");
	
}
br.close();
fr.close();
%>

</body>

</html>