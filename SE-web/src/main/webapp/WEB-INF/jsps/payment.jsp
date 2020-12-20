<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<title>Alemania Tools Portal</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript">
    window.onload=function () {
        document.getElementById("total").innerText="Total Payment: "+${count}.toFixed(2);

        var same=document.getElementById("same");
        same.onclick=function () {
            if(this.checked){
                var i=1;
                var j=11;
                for(var k=0;k<9;k++){
                    document.getElementById(j).value=document.getElementById(i).value;
                    i++;
                    j++;
                }
            }else{
                for(var k=11;k<20;k++){
                    document.getElementById(k).value=null;
                }
            }
        }

        document.getElementById("agree").onclick=function () {
            document.getElementById("order").disabled=!this.checked;
        };

        document.getElementById("order").onclick=function () {
            var xmlHttp=new XMLHttpRequest();

        };
    }
</script>
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
    .container {
        margin-top: 30px;
        margin-bottom: 30px;
    }
    .formNav {
        text-align: center;
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
    .team {
        margin-top: 72px;
        text-align: center;
    }

    textarea, input {
        width:300px;
        -webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
        -moz-box-sizing: border-box;    /* Firefox, other Gecko */
        box-sizing: border-box;         /* Opera/IE 8+ */
    }

    .terms-conditions {
        text-align: left;
        margin-bottom: 50px;
    }

    .signature {
        padding: 10px;
    }

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

    .section {
        margin-top: 50px;
    }
</style>
<body>
<div class="navMenu">
    <a class="navItem" href="tools" style="text-decoration: none;">HOME</a>
    <a class="navItem" href="mycart" style="text-decoration: none;">VIEW MY CART</a>
    Hello ${cookie.get("username").value}!
</div>

<div class="container">
    <div class="main">
        <br/>
        <div id="total">

        </div>
        <div class="section">
            <h2>Billing details</h2>
            <table>
                <tr>
                    <td><label for="firstName">First Name</label></td>
                    <td><input type="text" name="firstName" id="1" placeholder="First Name"/></td>
                </tr>
                <tr>
                    <td><label for="lastName">Last Name</label></td>
                    <td><input type="text" name="lastName" id="2" placeholder="Last Name"/></td>
                </tr>
                <tr>
                    <td><label for="country">Country</label></td>
                    <td><input type="text" name="country" id="3" placeholder="Country"/></td>
                </tr>
                <tr>
                    <td><label for="street">Street Address</label></td>
                    <td><input type="text" name="street" id="4" placeholder="Street Address"/></td>
                </tr>
                <tr>
                    <td><label for="city">Town/City</label></td>
                    <td><input type="text" name="city" id="5" placeholder="Town/City"/></td>
                </tr>
                <tr>
                    <td><label for="state">State/County</label></td>
                    <td><input type="text" name="state" id="6"  placeholder="State/County"/></td>
                </tr>
                <tr>
                    <td><label for="zip">Postal/CodeZip</label></td>
                    <td><input type="text" name="zip" id="7" placeholder="PostalCode/Zip"/></td>
                </tr>
                <tr>
                    <td><label for="phone">Phone</label></td>
                    <td><input type="text" name="phone" id="8" placeholder="Phone"/></td>
                </tr>
                <tr>
                    <td><label for="email">Email</label></td>
                    <td><input type="text" name="email" id="9" placeholder="Email"/></td>
                </tr>
            </table>
        </div>

        <div class="section">
            <h2 style="margin-right:20px; display:inline">Mailing address the same?</h2><input type="checkbox" name="sameAddress" id="same" value="sameAddress" style="width: auto"/>
            <table>
                <tr>
                    <td><label for="mfirstName">First Name</label></td>
                    <td><input type="text" name="mfirstName" id="11" placeholder="First Name"/></td>
                </tr>
                <tr>
                    <td><label for="mlastName">Last Name</label></td>
                    <td><input type="text" name="mlastName" id="12" placeholder="Last Name"/></td>
                </tr>
                <tr>
                    <td><label for="mcountry">Country</label></td>
                    <td><input type="text" name="mcountry" id="13" placeholder="Country"/></td>
                </tr>
                <tr>
                    <td><label for="mstreet">Street Address</label></td>
                    <td><input type="text" name="mstreet" id="14" placeholder="Street Address"/></td>
                </tr>
                <tr>
                    <td><label for="mcity">Town/City</label></td>
                    <td><input type="text" name="mcity" id="15" placeholder="Town/City"/></td>
                </tr>
                <tr>
                    <td><label for="mstate">State/County</label></td>
                    <td><input type="text" name="mstate" id="16"  placeholder="State/County"/></td>
                </tr>
                <tr>
                    <td><label for="mzip">Postal/CodeZip</label></td>
                    <td><input type="text" name="zip" id="17" placeholder="PostalCode/Zip"/></td>
                </tr>
                <tr>
                    <td><label for="mphone">Phone</label></td>
                    <td><input type="text" name="phone" id="18" placeholder="Phone"/></td>
                </tr>
                <tr>
                    <td><label for="memail">Email</label></td>
                    <td><input type="text" name="email" id="19" placeholder="Email"/></td>
                </tr>
            </table>
        </div>

        <div class="section">
            <h2>Payment Information</h2>
            <table>
                <tr>
                    <td><label for="creditNum">Credit Card Number</label></td>
                    <td><input type="text" name="creditNum" id="creditNum" placeholder="Credit Card Number"/></td>
                </tr>
                <tr>
                    <td><label for="cvc">CVC</label></td>
                    <td><input type="text" name="cvc" id="cvc" placeholder="CVC"/></td>
                </tr>
                <tr>
                    <td><label for="expDate">Expiry Date</label></td>
                    <td><input type="text" name="expDate" id="expDate" placeholder="Expiry Date"/></td>
                </tr>
            </table>
        </div>

        <div class="section">
            <input type="checkbox" name="termsCondAgree" id="agree" value="Yes" style="width: auto"/>
            <label for="termsCondAgree"> I agree to the terms and conditions</label><br>
            <p style="margin-top: 40px">
                <label for="signature">Please sign here</label><br />
                <input type="text" id="signature" name="signature" class="signature" style="width: auto"/>
            </p>
        </div>

        <div class="formNav" style="text-align: left">
            <a href="thankYou">
                <button class="button-large" disabled="true" id="order">Place order</button>
            </a>

        </div>

    </div>
</div>
</body>
</html>

