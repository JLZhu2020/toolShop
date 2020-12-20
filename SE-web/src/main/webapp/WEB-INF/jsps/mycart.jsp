<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>
<html>
<head>
    <title>my cart</title>
    <script type="text/javascript">
        window.onload=function () {

            var xmlhttp=new XMLHttpRequest();
            xmlhttp.open("get","allCartItem?username="+${cookie.get("username").value},true);
            xmlhttp.onreadystatechange=function () {
                if (xmlhttp.readyState == 4){
                    if (xmlhttp.status == 200) {
                        var table = document.getElementById("tb");
                        var data = xmlhttp.responseText;
                        data=eval(data);
                        var btn1=new Array();
                        var btn2=new Array();
                        var btn3=new Array();
                        var td5=new Array();
                        var td7=new Array();
                        var amount=new Array();
                        var totalMoney=0.0;
                        for(var i=0;i<data.length;i++) {
                            var cartItem = data[i];
                            var tr = document.createElement("tr");

                            var td1 = document.createElement("td");
                            var td2 = document.createElement("td");
                            var td3 = document.createElement("td");
                            var td4 = document.createElement("td");
                            td5[i] = document.createElement("td");
                            var td6 = document.createElement("td");
                            td7[i] = document.createElement("td");
                            var td8 = document.createElement("td");
                            btn1[i] = document.createElement("button");
                            btn2[i] = document.createElement("button");
                            btn3[i] = document.createElement("button");
                            td1.innerText = cartItem["item"];
                            td2.innerText = cartItem["model"];
                            td3.innerText = cartItem["rate"];
                            td5[i].innerText = cartItem["amount"];
                            var money=(cartItem["amount"]*cartItem["rate"]);
                            totalMoney+=money;
                            td7[i].innerText=money.toFixed(2)+"";
                            amount[i]=cartItem["amount"];
                            btn1[i].innerText="-";
                            btn1[i].i=i;
                            btn1[i].item=cartItem["item"];
                            btn2[i].innerText="+";
                            btn2[i].i=i;
                            btn2[i].item=cartItem["item"];
                            btn3[i].innerText="remove";
                            btn3[i].i=i;
                            btn3[i].item=cartItem["item"];
                            btn3[i].tr=tr;
                            table.appendChild(tr);
                            tr.appendChild(td1);
                            tr.appendChild(td2);
                            tr.appendChild(td3);
                            tr.appendChild(td4);
                            tr.appendChild(td5[i]);
                            tr.appendChild(td6);
                            tr.appendChild(td7[i]);
                            tr.appendChild(td8);
                            td4.appendChild(btn1[i]);
                            td6.appendChild(btn2[i]);
                            td8.appendChild(btn3[i]);

                            btn1[i].onclick=function(){
                                var ii=this.i;
                                if(amount[ii]>1){
                                    var addToCart=new XMLHttpRequest();
                                    addToCart.open("get","addToCart?username="+${cookie.get("username").value}
                                        +"&item="+this.item+"&amount=-1",true);
                                    addToCart.send();
                                    amount[ii]--;
                                    td5[ii].innerText=amount[ii];
                                    td7[ii].innerText=(data[ii]["rate"]*amount[ii]).toFixed(2);
                                    totalMoney-=data[ii]["rate"];
                                    td7l.innerText=totalMoney.toFixed(2);
                                }else alert("the amount should be at least 1");
                            }
                            btn2[i].onclick=function(){
                                var ii=this.i;
                                var addToCart=new XMLHttpRequest();
                                addToCart.open("get","addToCart?username="+${cookie.get("username").value}
                                    +"&item="+this.item+"&amount=1",true);
                                addToCart.send();
                                amount[ii]++;
                                td5[ii].innerText=amount[ii];
                                td7[ii].innerText=(data[ii]["rate"]*amount[ii]).toFixed(2);
                                totalMoney+=data[ii]["rate"];
                                td7l.innerText=totalMoney.toFixed(2);
                            }
                            btn3[i].onclick=function(){
                                var con=confirm("Are you sure to remove the item "+this.item+"?");
                                if(con){
                                    var remove=new XMLHttpRequest();
                                    remove.open("get","remove?username="+${cookie.get("username").value}
                                        +"&item="+this.item,true);
                                    remove.send();
                                    totalMoney-=data[this.i]["rate"]*amount[this.i];
                                    td7l.innerText=totalMoney.toFixed(2);
                                    table.removeChild(this.tr);
                                }
                            }
                        }
                        var trl=document.createElement("tr");
                        table.appendChild(trl);
                        for(var j=0;j<5;j++){
                            var td=document.createElement("td");
                            trl.appendChild(td);
                        }
                        var td6l=document.createElement("td");
                        var td7l=document.createElement("td");
                        var td8l=document.createElement("td");
                        trl.appendChild(td6l);
                        trl.appendChild(td7l);
                        trl.appendChild(td8l);
                        td6l.innerText="All in total:";
                        td7l.innerText=totalMoney.toFixed(2);
                        td8l.innerHTML="<a href='payment'>Go to pay</a>";
                    }
                }
            }

            xmlhttp.send();
        }
    </script>
</head>
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

    #searchTool {
        margin-top: 50px;
    }

    #searchTool input {
        padding: 10px;
    }
</style>
<body>
    <div class="navMenu">
        <a class="navItem" href="tools" style="text-decoration: none;">HOME</a>
        Hello ${cookie.get("username").value}!
    </div>

    <div class="container">
        <div class="main">
            <table id="tb">
                <tr>
                    <th>Item #</th>
                    <th>Model #</th>
                    <th>Rate</th>
                    <th></th>
                    <th>Amount</th>
                    <th></th>
                    <th>Total Price</th>
                    <th></th>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
