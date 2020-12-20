<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style type="text/css">

    .navMenu {
        height: 30px;
        padding: 20px 18px 18px;
        color: #ffffff!important;
        background-color: #425bd8!important;
        letter-spacing: 1px;
        word-spacing: 2px;
    }
    .navItem {
        color: #ffffff!important;
        padding: 12px 16px!important;
        line-height: 1.5;

    }
    .navItem:hover{
        color: #ffffff!important;
        background-color: #253582!important;
    }

    .formNav {
        margin-top: 40px;
    }
    .formNav .button-large {
        color: #ffffff!important;
        background-color: #425bd8!important;
        font-weight: 600;
        font-size: 20px;
        padding: 15px 30px 15px;
        border: none;
    }
    .formNav .button-large:hover {
        color: #ffffff!important;
        background-color: #253582!important;
        cursor: pointer;
    }

    textarea, input {
        width:150px;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }

    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td, th {
        border: 1px solid #425bd8;
        text-align: left;
        padding: 10px;
    }

    th {
        background-color: #425bd8;
        color: #ffffff;
    }

    tr:nth-child(odd) {
        background-color: #98a3da;
        color: #000000;
    }

    #searchTool input {
        padding: 10px;
    }
</style>

<div class="navMenu">
    <a class="navItem" href="login" style="text-decoration: none;">BACK</a>
</div>
    <form method="post" action="newAccount">
        username : <input type="text" name="username" value="${account.username}">${msg1}<br>
        password : <input type="password" name="password">${msg2}<br>
        email    : <input type="text" name="email" value="${account.email}"><br>
        phone    : <input type="text" name="phone" value="${account.phone}"><br>
        <div class="formNav">
            <input class="button-large" type="submit" value="sign up">
        </div>
    </form>

</body>
</html>
