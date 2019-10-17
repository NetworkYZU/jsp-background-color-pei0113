<%-- 
    Document   : random
    Created on : Sep 23, 2018, 8:44:44 PM
    Author     : lendle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="refresh" content="0.5">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" integrity="sha256-46qynGAkLSFpVbEBog43gvNhfrOj+BmwXdxFgVK/Kvc=" crossorigin="anonymous" />
    </head>
    
    <%
        String [] icons = new String[]{"fa-chess-board", "fa-cloud-rain"};
        String color="blue";
        String icon = "fa-chess-board";
        String fontColor="white";
        String [] colors=new String[]{"CD5C5C", "F08080", "FA8072", "E9967A", "FFA07A"};
        String parameter=request.getParameter("color");
        if(parameter!=null){
            color=parameter;
        }else{
            color=colors[(int)(Math.random()*1000%colors.length)];
            icon=icons[(int)(Math.random()*1000%icons.length)];
        }
    %>
    
    <body bgcolor="<%=color%>">
        <font color="<%=fontColor%>"><h1>Hello </h1>
        <span class="fa <%=icon%>"></span>
    </body>
</html>
