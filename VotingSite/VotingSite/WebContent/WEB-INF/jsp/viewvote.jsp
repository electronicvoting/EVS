<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Voters List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>FirstName</th><th>LastName</th><th>Gender</th><th>age</th><th>Address</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="vote" items="${list}">   
   <tr>  
   <td>${vote.id}</td>  
   <td>${vote.fname}</td>  
   <td>${vote.lname}</td>  
   <td>${vote.gender}</td>  
   <td>${vote.age }</td>
   <td>${vote.address}</td>
   
   <td><a href="editVote/${vote.id}">Edit</a></td>  
   <td><a href="deleteVote/${vote.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="voterform">Add New voter</a>  