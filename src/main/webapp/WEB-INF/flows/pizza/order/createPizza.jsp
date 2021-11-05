<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored ="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<div>

	<h2>Create Pizza</h2>
	<form:form modelAttribute="pizza">
	  <input type="hidden" name="_flowExecutionKey" 
	      value="${flowExecutionKey}"/>
	
	  <b>Size: </b> <br/>
	 <form:radiobutton path="size" label="Small (12-inch)" value="SMALL"/><br/>
     <form:radiobutton path="size" label="Medium (14-inch)" value="MEDIUM"/><br/>
     <form:radiobutton path="size" label="Large (16-inch)" value="LARGE"/><br/>
     <form:radiobutton path="size" label="Ginormous (20-inch)" value="GINORMOUS"/><br/>
	  <br/>
	  
	  <b>Toppings: </b><br/>
	  <form:checkboxes path="toppings" items="${toppingsList}" 
	                   delimiter="<br/>"/><br/><br/>

	      
	  <input type="submit" class="button" name="_eventId_addPizza" value="Continue"/>
	  <input type="submit" class="button" name="_eventId_cancel" value="Cancel"/>          
	</form:form>
</div>
</body>
</html>