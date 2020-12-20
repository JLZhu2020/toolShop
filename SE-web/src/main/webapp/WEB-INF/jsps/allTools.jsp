<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<html>
<head>
    <title>all tools</title>
    <script type="text/javascript">
        window.onload=function () {
            var allTools=${allTools};
            allTools=eval(allTools);
            var table = document.getElementById("tb");
            var btn1=new Array();
            var btn2=new Array();
            var btn3=new Array();
            var td6=new Array();
            var count=new Array();
            for(var i=0;i<allTools.length;i++) {
                var tool = allTools[i];
                var tr = document.createElement("tr");

                var td1 = document.createElement("td");
                var td2 = document.createElement("td");
                var td3 = document.createElement("td");
                var td4 = document.createElement("td");
                var td5 = document.createElement("td");
                td6[i] = document.createElement("td");
                var td7 = document.createElement("td");
                var td8 = document.createElement("td");
                btn1[i] = document.createElement("button");
                btn2[i] = document.createElement("button");
                btn3[i] = document.createElement("button");
                td1.innerText = tool["item"];
                td2.innerText = tool["model"];
                td3.innerText = tool["rate"];
                td4.innerText = tool["salevolume"];
                count[i]=0;
                td6[i].innerText=count[i];
                btn1[i].innerText="-";
                btn1[i].i=i;
                btn2[i].innerText="+";
                btn2[i].i=i;
                btn3[i].innerText="add to cart";
                btn3[i].i=i;
                btn3[i].item=tool["item"];
                table.appendChild(tr);
                tr.appendChild(td1);
                tr.appendChild(td2);
                tr.appendChild(td3);
                tr.appendChild(td4);
                tr.appendChild(td5);
                tr.appendChild(td6[i]);
                tr.appendChild(td7);
                tr.appendChild(td8);
                td5.appendChild(btn1[i]);
                td7.appendChild(btn2[i]);
                td8.appendChild(btn3[i]);

                btn1[i].onclick=function(){
                    var ii=this.i;
                    if(count[ii]>0)count[ii]--;
                    td6[ii].innerText=count[ii];
                }
                btn2[i].onclick=function(){
                    var ii=this.i;
                    count[ii]++;
                    td6[ii].innerText=count[ii];
                }
                btn3[i].onclick=function () {
                    var ii=this.i;
                    if(count[ii]>0){
                        var addToCart=new XMLHttpRequest();
                        addToCart.open("get","addToCart?username="+${cookie.get("username").value}
                            +"&item="+this.item+"&amount="+count[ii],true);
                        addToCart.send();
                        td6[ii].innerText=0;
                        alert("successfully add "+count[ii]+" item "+this.item+" to the cart!");
                        count[ii]=0;
                    }

                }
            }
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
    <a class="navItem" href="mycart" style="text-decoration: none;">VIEW MY CART</a>
    Hello ${cookie.get("username").value}!
</div>
<h2>all tools</h2>
<div class="container">
    <div class="main">
        <table id="tb">
            <tr>
                <th>Item #</th>
                <th>Model #</th>
                <th>Rate</th>
                <th>Sale Volume</th>
                <th></th>
                <th>count</th>
                <th></th>
                <th></th>
            </tr>
        </table>
    </div>
</div>


</body>
</html>
