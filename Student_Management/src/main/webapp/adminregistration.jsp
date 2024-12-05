<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin Registration</title>
</head>
<body>
	<h3 style="color:red;">Admin Registration</h3>

	<form action="register">
		<table>
		<tr>
		 	<td>adminId:</td>
			<td> <input type="number" name="adminid"></td>
		</tr>
		
		<tr>
			<td>firstname:</td>
			<td><input type="text" name="firstName"></td>
		</tr>
		
				<tr>
			<td>lastname:</td>
			<td><input type="text" name="lastName"></td>
		</tr>
		
		<tr>
			<td>Email:</td>
			<td><input type="text" name="Email"></td>
		</tr>
		
		<tr>
			<td>username:name="username"></td>
		   <td><input type="text"> </td>
	   </tr>
		   
		<tr>
			<td>mobileno:</td>
			<td><input type="text" name="mobileno"></td>
		</tr>
		
				
		
		<tr>
			<td>password:</td>
			<td><input type="text" name="password"></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="register"></td>
		</tr>
		</table>		
	</form>
	
</body>
</html>