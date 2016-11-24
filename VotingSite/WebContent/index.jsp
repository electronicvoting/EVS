
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Voting site</title>

<script type="text/javascript">
	function f() {
		var u = document.form1.aname.value;
		var p = document.form1.apass.value;

		if (u != "priya") {
			document.form1.aname.focus();
			document.getElementById("errorBox").innerHTML = "enter the name";
			return false;
		}
		if (p != "priya") {
			document.form1.apass.focus();
			document.getElementById("errorBox").innerHTML = "enter the password";
			return false;
		}

	}
</script>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<h1>
		<img src="file:///C:/Users/Admin/workspace/VotingSite/WebContent/India.jpg" alt="no" align="right" width="50" height="50"/>
	<center>secure voting system</center></h1>
	
	<fieldset>
		<legend>Voters</legend>
		<form method="post" action="index1" onsubmit="parties">

			<table border="1" width="30%" cellpadding="3">
				<thead>
					<tr>
						<th colspan="2">Login Here</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>User Name</td>
						<td><input type="text" name="uname" value="" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="pass" value="" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Login" /></td>
						<td><input type="reset" value="Reset" /></td>
					</tr>

					<tr>
						<td colspan="2">Yet Not Registered!! <a href="voterform">Register
								Here</a></td>
					</tr>
					<tr>
						<td colspan="2"><a href="forgotpassword">Forgot password?</a></td>
					</tr>
				</tbody>
			</table>
			</center>
		</form>
	</fieldset>
	<!-- <a href="voterform">voter</a>-->
	<fieldset>
		<legend>Admin</legend>
		<form name="form1" method="post" action="viewvote"
			onsubmit="return f();">
			<div id="errorBox"></div>
			<table border="1" width="30%" cellpadding="3">
				<thead>
					<tr>
						<th colspan="2">Login Here</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>User Name</td>
						<td><input type="text" name="aname" value="" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="apass" value="" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Login" /></td>
						<td><input type="reset" value="Reset" /></td>
					</tr>

				</tbody>
			</table>
			</center>
		</form>


		<!-- <a href="viewvote">Admin</a>-->
	</fieldset>
</body>
</html>