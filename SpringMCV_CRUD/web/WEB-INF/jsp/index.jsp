<%-- 
    Document   : index
    Created on : Oct 4, 2021, 6:12:18 PM
    Author     : Sasitha Munasinghe
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">




        <script src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.1/css/jquery.dataTables.min.css">
        <title>SpringMVC_CRUD</title>
    </head>
    <body>
        <%@include file="navBar.jsp" %>
        <h1>Employee List</h1>
        <hr>

        <div class="container">
<!--            <a href="insert.htm"><button class="btn btn-success">Add Employee</button></a>-->
            <hr>
            <table id="sasi" class="table ">
                <thead>
                    <tr>

                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach var="row" items="${list}" >
                        <tr>
                            <th >${row.id}</th>
                            <td>${row.name}</td>
                            <td>${row.email}</td>
                            <td><a href="edit.htm?id=${row.id}"><button class="btn btn-primary">Edit</button></a></td>
                            <td><a href="delete.htm?id=${row.id}"><button class="btn btn-danger " onclick="return confirm('Are you want to delete..?')">Delete</button></a></td>
                        </tr>
                    </c:forEach> 
                </tbody>
            </table>
            <script>
                $(document).ready(function () {
                    $('#sasi').DataTable();
                });
            </script>

        </div>
    </body>
</html>
