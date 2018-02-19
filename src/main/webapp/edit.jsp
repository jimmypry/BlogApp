<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>

    </style>
</head>
<body>
    <div class="w3-container w3-teal">
        <h1>Edit Post</h1>
    </div>
    <form method="Post" class="w3-container w3-card-4 w3-light-grey">
        <nav class="navbar navbar-light bg-light">
            <button type="submit" name="save" class="btn btn-outline-success">Save</button>
            <button type="submit" name="close" class="btn btn-outline-secondary">Close</button>
            <button type="submit" name="preview" class="btn btn-outline-primary">Preview</button>
            <button type="submit" name="delete" class="btn btn-outline-danger">Delete</button>
        </nav>

        <div id="tit">
            <p>
            <label for="title">Title</label>
            <input type="text" name="title" id="title" placeholder="Title" value=<%= request.getAttribute("title") == null? "": request.getAttribute("title")%>>
            </p>
        </div>

        <div id="textarea">
            <p>
            <label for="body">Body</label>
            <textarea style="height: 20rem;" name="body" id="body"><%= request.getAttribute("body") == null? "": request.getAttribute("body")%></textarea>
            </p>
        </div>

        <input type="hidden" name="action" >
        <input type="hidden" name="username" value=<%= request.getParameter("username") == null? "tourist": request.getParameter("username")%> >
        <input type="hidden" name="postid" value=<%= request.getParameter("postid") == null? "0": request.getParameter("postid")%> >
    </form>
    <!--
    <div>
        <li>Error = <%= request.getAttribute("maxPostIdError") %></li>
        <li>maxPostId = <%= request.getAttribute("maxPostId") %></li>
        <li><test><%= request.getAttribute("test") %></test></li>
        <li><test1><%= request.getAttribute("test1") %></test1></li>
        <li><test2><%= request.getAttribute("test2") %></test2></li>
    </div>
    -->
</body>
</html>
