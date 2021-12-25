<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
{box-sizing: border-box;}
        
        body { 
          margin: 0;
          font-family: Arial, Helvetica, sans-serif;
        }
        
        .header {
          overflow: hidden;
          background-color: #f1f1f1;
          padding: 20px 10px;
        }
        
        .header a {
          float: left;
          color: black;
          text-align: center;
          padding: 12px;
          text-decoration: none;
          font-size: 18px; 
          line-height: 25px;
          border-radius: 4px;
        }
        
        .header a.logo {
          font-size: 25px;
          font-weight: bold;
        }
        
        .header a:hover {
          background-color: #ddd;
          color: black;
        }
        
        .header a.active {
          background-color: dodgerblue;
          color: white;
        }
        
        .header-right {
          float: right;
        }
        
        @media screen and (max-width: 500px) {
          .header a {
            float: none;
            display: block;
            text-align: left;
          }
          
          .header-right {
            float: none;
          }
        }

        .card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border:1px solid rgba(0,0,0,.125);
    border-radius: .25rem;
}
.container{
            position:relative;
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 100px;
    
        }
        
        .center{
            margin: auto;
            width: 50%;

        }
.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25rem;
}
        .btn-success{
          text-decoration:none;
    background-color: #03a87c;
    color: white;
    padding: 8px 16px;
    font-family: sans-serif;
    border-radius: 3px;
    font-weight:bold;
        }
        input {
  
            width: 100%;
            padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
        </style>
        <body>
            <div class="header">
                <a href="#default" class="logo">User Management System </a>
                <div class="header-right">
                  
                  <a href="info.jsp">About</a>
                </div>
              </div>
                       
        
                           
                    </header>
                    <br>
                    <div class="container col-md-5">
                        <div class="card">
                            <div class="card-body">
                                <c:if test="${user != null}">
                                    <form action="update" method="post">
                                </c:if>
                                <c:if test="${user == null}">
                                    <form action="insert" method="post">
                                </c:if>
        
                                <caption>
                                    <h2>
                                        <c:if test="${user != null}">
                                            Edit User
                                        </c:if>
                                        <c:if test="${user == null}">
                                            Add New User
                                        </c:if>
                                    </h2>
                                </caption>
        
                                <c:if test="${user != null}">
                                    <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                                </c:if>
        

                                <form>

                                
                                <div class="form-group">
                                   <b> <label>User Name</label> <input type="text" value="<c:out value='${user.name}' />" class="form-control" name="name" required="required">
                                <br>
                                <br>

        
                                <div  class="form-group">
                                  <b> <label>User Email</label> <input type="text" value="<c:out value='${user.email}' />" class="form-control" name="email">
                               <br>
                               <br>

        
                                <div class="form-group">
                                    <label>User Country</label> <input type="text" value="<c:out value='${user.country}' />" class="form-control" name="country">
                                
                                <br>
                                
                                
    
        
                                <button type="submit" class="btn btn-success">Save</button>
                                </form>
                            </div>
                        </div>
                    </div>
        </body>
        </html>