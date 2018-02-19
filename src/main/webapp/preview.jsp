<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Preview Post</title>
</head>
<body>
        <div>
            <form action="post" method="POST">
                <input type="hidden" name="username" value=<%= request.getParameter("username") == null? "tourist": request.getParameter("username")%>>
                <input type="hidden" name="postid" value=<%= request.getParameter("postid") == null? "0": request.getParameter("postid")%>>
                <input type="hidden" name="title" value=<%= request.getAttribute("title") == null? "": request.getAttribute("title")%>>
                <input type="hidden" name="body" value=<%= request.getAttribute("body") == null? "": request.getAttribute("body")%>>
                <button type="submit" name="action" value="open">Close Preview</button>
            </form>
        </div>
        <%= request.getAttribute("htmlTitle") %>
        <%= request.getAttribute("htmlBody") %>
</body>
</html>