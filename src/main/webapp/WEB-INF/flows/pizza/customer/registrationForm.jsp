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
	 <h2>Customer Registration</h2>
    
    <form:form modelAttribute="order">
      <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
      <b>Phone number: </b>
      <form:input path="customer.phoneNumber"/><br/>
      
      <b>Name: </b>
      	<form:input path="customer.name"/><br/>
      
      <b>Address: </b>
      	<form:input path="customer.address"/><br/>
      <b>City: </b>
      	<form:input path="customer.city"/><br/>
      <b>State: </b>
      	<form:input path="customer.state"/><br/>
      <b>Zip Code: </b>
      	<form:input path="customer.zipCode"/><br/>
      <input type="submit" name="_eventId_submit" value="Submit" />
      <input type="submit" name="_eventId_cancel" value="Cancel" />
    </form:form>
</body>
</html>