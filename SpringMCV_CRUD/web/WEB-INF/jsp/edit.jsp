<%-- 
    Document   : edit
    Created on : Oct 5, 2021, 6:07:22 PM
    Author     : Sasitha Munasinghe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SpringMVC_CRUD</title>
        
    </head>
    
    <body>
       
        <h1>Edit Employee</h1>
        <hr>
        <div class="container">
            <form method="POST">
                <div class="form-group">
                    <label > Name :</label>
                    <input type="text" class="form-control" name="name" aria-describedby="emailHelp" required value="${list[0].name}">

                    <label for="exampleInputEmail1"> Email :</label>
                    <input type="email" class="form-control" name="email" aria-describedby="emailHelp" required value="${list[0].email}">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    <button type="submit" class="btn btn-primary">Update</button>
                    
            </form>
            
        </div>
                <a href="index.htm"><button class="btn btn-danger">Cancel</button></a>
    </body>
</html>
