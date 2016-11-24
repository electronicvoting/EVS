<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Add New Voter</h1>
<form1:form method="post" action="save">

	<table border="1" width="30%" cellpadding="5">
		<thead>
			<tr>
				<th colspan="2">Enter Voter Information Here</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>First Name :</td>
				<td><form1:input path="fname" /></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><form1:input path="lname" /></td>
			</tr>
			<tr>
				<td>user Name :</td>
				<td><form1:input path="username" /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><form1:input path="password" /></td>
			</tr>
			<tr>
				<td>Gender :</td>
				<td><form1:input path="gender" /></td>
			</tr>
			<tr>
				<td>Age :</td>
				<td><form1:input path="age" /></td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><form1:input path="address" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="Save" /></td>
			</tr>
			 <tr>
                        <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
	</table>
</form1:form>
