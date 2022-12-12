<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html> <head> <meta charset="ISO-8859-1"> <title>Teams Management</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css"/> </head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<body>
 <div>
    <form action="/teams/search" method="post"> 
        <table>
        <tr> 
        <td>Mot Cle:  </td>
        <td> <input type="text" name="motCle" value="${motCle}"/></td>
        <td><input type="submit" class="btn btn-info" name="action" value="Search"/> </td>
        </tr>
      
        </table>
        </form>

<table border="1" style="margin:8px 0 0px 0p;"> <tr> <th>REF</th><th>Name</th><th>Budget</th> </tr>

<c:forEach items="${teams}" var="t">
	<tr>
        <td>${t.idTeam}</td><td>${t.name}</td><td>${t.budget}</td>  
        
        <td><a onclick="return confirm('Please Confirm')" 	href="/teams/delete?ref=${t.idTeam}&mc=${motCle}"><button type="button" class="btn btn-danger">Delete</button>    </a> </td>
        
        <td><a 	href="/teams/edit?ref=${t.idTeam}&name=${t.name}&budget=${t.budget}&edit=0&mc=${motCle}"><button type="button" class="btn btn-success">Edit</button> </a> </td>
    
    </tr>

</c:forEach>

</table>
<a href="/teams/add"> <button type="button" style="margin:20px 0 0 170px;" class="btn btn-primary">Add</button></a>
 </div> </body> </html>
