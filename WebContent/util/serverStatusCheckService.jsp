<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="org.apache.commons.text.StringEscapeUtils" %>

{
	"HostName": "<%=StringEscapeUtils.escapeHtml4(request.getParameter("HostName"))%>",
	"HostStatus": "OK"
}
