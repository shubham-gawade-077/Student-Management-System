<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<center><h1>ALL INFORMAITION</h1></center>

<script type="text/javascript">
function addUser() 
{
	
	document.fn.action="addstudent.jsp";
	document.fn.submit();
}
function deleteUser() 
{
	
	document.fn.action="delete";
	document.fn.submit();
}
function editUser() 
{
	document.fn.action="edit";
	document.fn.submit();
}
</script>

</head>
<body>
	<h3>view student</h3>
		<form name="fn">


		<table border="1" align="center">
			<th></t>
			<th>SID</th>
			<th>FIRST NAME</th>
			<th>LAST NAME</th>
			<th>AGE</th>
			<th>PASSOUT YEAR </th>
			<th>COLLEGE NAME</th>
			<th>COURSE</th>
			<th>BATCH NO</th>
			<th>FEES PAID</th>
			<th>ADDRESS</th>
			<th>USERNAME</th>
			<th>PASSWORD</th>
			<th>EDIT</th>
			<th>ADD</th>
			<th>DELETE</th>
						
			
			
			<tr>
				<c:forEach items="${data}" var="user">
					<br>
					<td><input type="radio" name="sid" value="${user.sid}"></td>
					<td>${user.sid }</td>
					<td>${user.firstname}</td>
					<td>${user.lastname}</td>
					<td>${user.age}</td>
					<td>${user.passoutyear}</td>
					<td>${user.collegename}</td>
					<td>${user.course}</td>
					<td>${user.batchno}</td>
					<td>${user.feespaid}</td>
					<td>${user.address}</td>
				    <td>${user.username}</td>
					<td>${user.password}</td>
					<td><input type="button" value="EDIT" onclick="editUser()"></td>
                    <td><input type="button" value="ADD" onclick="addUser()"></td>
                    <td><input type="button" value="DELETE" onclick="deleteUser()"></td>
										
					
					<!-- <td><input type="button" value="EDIT" onclick="editUser()"></td>
					<td><input type="button" value="DELETE" onclick="deleteUser()"><td> -->
			</tr>
			</c:forEach>

		</table>


</form>
	
</body>
</html>