<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<title>Alemania Tools Portal</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="main.css">

<style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td, th {
        text-align: left;
        padding: 10px;
    }

    td input {
        padding: 10px;
    }

    .button-normal {
        background-color: #425bd8;
        color: #ffffff;
        border: none;
        padding: 10px 20px;
    }

    .button-normal:hover {
        color: #ffffff!important;
        background-color: #253582!important;
        cursor: pointer;
    }

</style>
<body>
<div class="navMenu">
    <a class="navItem" href="welcome.html" style="text-decoration: none;">HOME</a>
    <a class="navItem" href="#" style="text-decoration: none;">SIGN UP/SIGN IN</a>
</div>

<div class="container">
    <div class="main">
        <table>
            <tr>
                <td>Picture goes here</td>
                <td>
                    <form method="post" action="">
                        <label for="itemNum">Item #</label><br>
                        <input type="text" name="itemNum" id="itemNum" readonly/><br/><br />
                        <label for="modelNum">Warranty #</label><br/>
                        <input type="text" name="modelNum" id="modelNum" readonly/><br/><br />
                        <label for="condition">Condition of Product</label><br>
                        <textarea name="condition" id="condition" rows="10"></textarea><br/><br />
                        <label for="purchaseDate">Purchase Date</label><br/>
                        <input type="date" name="purchaseDate" id="purchaseDate"/><br/><br /><br/><br />
                        <input type="submit" class="button-normal" value="Add to Cart"/>
                    </form>
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>