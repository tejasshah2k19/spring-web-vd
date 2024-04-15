<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="saveuser" method="post">
	FIRSTNAME : <input type="text" name ="firstname">
	<br><br>
	LASTNAME : <input type="text" name ="lastname">
	<br><br>
	EMAIL : <input type="email" name ="email">
	<br><br>
	GENDER : MALE <input type="radio" name ="gender" value="male" > FEMALE <input type="radio" name ="gender" value="female" >
	<br><br>
	HOBBY : Swimming <input type="checkbox" name="hobby" value="swimming">
			Dancing <input type="checkbox" name="hobby" value="dancing">
			Travelling <input type="checkbox" name="hobby" value="travelling">
        	Pottery	<input type="checkbox" name="hobby" value="pottery">
        	Writting <input type="checkbox" name="hobby" value="writting">
	<br><br>
	COUNTRY : <select name="country">
		<option value="america">America</option>
		<option value="dubai">Dubai</option>
		<option value="russia">Russia</option>
		<option value="israel">Israel</option>
		<option value="italy">Italy</option>
		</select>
		<br><br>
	ADDRESS : <textarea  cols="30" rows="10" name="address"></textarea>
	<br><br>
	<input type="submit" name="submit">
</form>
</body>
</html>