<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Post List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        table th,td {
            text-align: center;
        }
        .containers{
            margin: 1em 1em 1em 1em;
            padding: 10px;
            width:70%;
        }
        #header{
            margin: 1em 3em 1em 1em;
        }
    </style>
</head>
<body>
    <div class="container">
        <div id = "header">
            <form action="post" id="0">
                <input type="hidden" name="username" value=<%= request.getParameter("username") == null? "tourist": request.getParameter("username")%>>
                <input type="hidden" name="postid" value="0">
                <button type="submit" name="action" value="open" class="btn btn-info">New Post</button>
            </form>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Created</th>
                    <th>Modified</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <tbody>
                <% List<List<String>> results = (ArrayList)request.getAttribute("result");
                   if (results == null) results = new ArrayList<>(); %>
                <% for (int i = 0; i < results.size(); i++) { %>
                    <tr>
                        <% int columnNum = results.get(i).size() == 4? 3: results.get(i).size();
                           for (int j = 0; j < columnNum; j++) { %>
                                   <td><%= results.get(i).get(j) %></td>
                        <% } %>
                        <form id=<%=i %> action="post" method="POST"> 
                            <input type="hidden" name="username" value=<%= request.getParameter("username") == null? "tourist": request.getParameter("username")%>>
                            <input type="hidden" name="postid" value=<%= results.get(i).get(3) %>>
                            <td>
                                <button type="submit" name="action" value="open" class="btn btn-success">Open</button>
                                <button type="submit" name="action" value="delete" class="btn btn-danger">Delete</button>
                            </td>
                        </form>
                    </tr>
                <% } %>
            </tbody>
        </table>
        <br>
    </div>
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
