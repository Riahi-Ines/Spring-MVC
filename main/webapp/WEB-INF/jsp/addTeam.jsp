<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html> <head> <meta charset="ISO-8859-1"> <title>Teams Management</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css"/>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

 </head>
<body>
    <div>
      <form action="/teams/add" method="post"> 
        <table>
          <tr><td>Name</td><td> <input type="text" name="name"  /></td></tr>
          <tr><td>Budget</td> <td> <input type="text" name="budget"  /></td> </tr>
          <tr><td> <input type="submit" name="action" class="btn btn-primary" value="save"/></td></tr>
        </table>
      </form>
    </div>
    
    </body>
    
 </html>
