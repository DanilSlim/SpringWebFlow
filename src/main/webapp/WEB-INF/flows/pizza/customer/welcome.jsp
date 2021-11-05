<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Spring Pizza</title>
</head>
<body>
	<h2>Welcome to Spring Pizza!!!</h2>
	
	<form:form>
      <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
	  <input type="text" name="phoneNumber"/><br/>
      <input type="submit" name="_eventId_phoneEntered" value="Lookup Customer" />
	</form:form>
</body>
</html>