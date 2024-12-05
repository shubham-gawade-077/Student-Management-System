<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="update">
<table border="1">
<tr>
<td>SID:-</td>
<td><input type="text" name="sid" value="${data.sid}"></td>
</tr>
<tr>
<td>FIRST NAME:-</td>
<td><input type="text" name="firstname" value="${data.firstname}"></td>
</tr>
<tr>
<td>LAST NAME :-</td>
<td><input type="text" name="lastname" value="${data.lastname}"></td>
</tr>
<tr>
<td>AGE:-</td>
<td><input type="text" name="age" value="${data.age}"></td>
</tr>
<tr>
<td>PASSOUT YEAR:-</td>
<td><input type="text" name="passoutyear" value="${data.passoutyear}"></td>
</tr>
<tr>
<td>COLLEGE NAME :-</td>
<td><input type="text" name="collegename" value="${data.collegename}"></td>
</tr>
<tr>
<td>COURSE:-</td>
<td><input type="text" name="course" value="${data.course}"></td>
</tr>
<tr>
<td>BATCH NO:-</td>
<td><input type="text" name="batchno" value="${data.batchno}"></td>
</tr>
<tr>
<td>FEES PAID:-</td>
<td><input type="text" name="feespaid" value="${data.feespaid}"></td>
</tr>
<tr>
<td>ADDRESS:-</td>
<td><input type="text" name="address" value="${data.address}"></td>
</tr>
<tr>
<td>USERNAME:-</td>
<td><input type="text" name="username" value="${data.username}"></td>
</tr>
<tr>
<td>PASSWORD:-</td>
<td><input type="text" name="password" value="${data.password}"></td>
</tr>
<tr>
<td><input type="submit" value="UPDATE"></td>
</tr>
</table>
</form>

</body>
</html>