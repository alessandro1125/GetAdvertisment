<%@ page import="java.util.GregorianCalendar" %><%--
  Created by IntelliJ IDEA.
  User: aless
  Date: 28/02/2018
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <%
            String time = GregorianCalendar.getInstance().getTime().toString();
        %>
        <title>UID dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3mobile.css">
        <link rel="stylesheet" href="stile-1.css?<%= time %>" type="text/css">

        <style type="text/css">


            .form-style-8{
                font-family: 'Open Sans Condensed', sans-serif;
                max-width:500px;
                width: 95%;
                padding: 30px;
                background: #FFFFFF;
                margin: 50px auto;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.22);
                -moz-box-shadow: 0 0 15px rgba(0, 0, 0, 0.22);
                -webkit-box-shadow:  0 0 15px rgba(0, 0, 0, 0.22);
            }

            .form-style-8-nomaxwidth{
                font-family: 'Open Sans Condensed', sans-serif;
                width: 95%;
                padding: 30px;
                background: #FFFFFF;
                margin: 50px auto;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.22);
                -moz-box-shadow: 0 0 15px rgba(0, 0, 0, 0.22);
                -webkit-box-shadow:  0 0 15px rgba(0, 0, 0, 0.22);
            }

            .form-style-8-toolbar{
                font-family: 'Open Sans Condensed', sans-serif;
                min-width: 1000px;
                max-width: 100%;
                width: 100%;
                margin-top: 0;
                height: 70px;
                padding: 10px;
                background: #ff4d4d;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.22);
                -moz-box-shadow: 0 0 15px rgba(0, 0, 0, 0.22);
                -webkit-box-shadow:  0 0 15px rgba(0, 0, 0, 0.22);
            }

            .form-style-1{
                font-family: 'Open Sans Condensed', sans-serif;
                width: 150px;
                background: #FFFFFF;
                box-shadow: 0 0 15px rgba(0, 0, 0, 0.22);
                -moz-box-shadow: 0 0 15px rgba(0, 0, 0, 0.22);
                -webkit-box-shadow:  0 0 15px rgba(0, 0, 0, 0.22);
                max-width:500px;
            }

            .form-style-1 input[type="button"],
            .form-style-1 input[type="submit"]{
                background: #ff4d4d;
                border: 0 solid #ff4d4d;
                border-radius: 2px;
                display: inline-block;
                cursor: pointer;
                color: #e6e6e6;
                font-family: 'Open Sans Condensed', sans-serif;
                font-size: 14px;
                padding: 8px 18px;
                text-decoration: none;
                text-transform: uppercase;
                width: 100%;
            }

            .form-style-1 input[type="button"]:hover,
            .form-style-1 input[type="submit"]:hover {
                background:linear-gradient(to bottom, #ffb3b3 5%, #ffb3b3 100%);
                background-color:#ffb3b3;
            }

            .form-style-8 h1{
                display: inline;
                border-radius: 2px;
                margin: auto;
                font-size: 26px;
                margin-left: 20px;
                margin-top: 20px;
                color: #e6e6e6;
            }


            .form-style-8 h2,
            .form-style-8 h3{
                background: #e6e6e6;
                text-transform: uppercase;
                font-family: 'Open Sans Condensed', sans-serif;
                color: #797979;
                font-size: 18px;
                font-weight: 100;
                padding: 20px;
                margin: -30px -30px 30px -30px;
            }

            .form-style-8 input[type="text"],
            .form-style-8 input[type="date"],
            .form-style-8 input[type="datetime"],
            .form-style-8 input[type="email"],
            .form-style-8 input[type="number"],
            .form-style-8 input[type="search"],
            .form-style-8 input[type="time"],
            .form-style-8 input[type="url"],
            .form-style-8 input[type="password"],
            .form-style-8 textarea,
            .form-style-8 select,
            .form-style-8 p {
                box-sizing: border-box;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                outline: none;
                display: block;
                width: 100%;
                padding: 7px;
                border: none;
                border-bottom: 1px solid #ddd;
                background: transparent;
                margin-bottom: 10px;
                font: 16px Arial, Helvetica, sans-serif;
                height: 45px;
                color : #696969;
                border-radius: 2px;
            }

            .form-style-8 textarea{
                resize:none;
                overflow: hidden;
            }

            .form-style-8 input[type="button"],
            .form-style-8 input[type="submit"]{
                /*-moz-box-shadow: inset 0px 1px 0px 0px #45D6D6;
                -webkit-box-shadow: inset 0px 1px 0px 0px #45D6D6;
                box-shadow: inset 0px 1px 0px 0px #45D6D6;*/
                background-color: #ff4d4d/*#2CBBBB*/;
                border: 0 solid #ff4d4d;
                border-radius: 0;
                display: inline-block;
                cursor: pointer;
                color: #e6e6e6;
                font-family: 'Open Sans Condensed', sans-serif;
                font-size: 14px;
                padding: 8px 18px;
                text-decoration: none;
                text-transform: uppercase;
                margin-top: 5px;
                width: 100%;
            }

            .form-style-8 input[type="button"]:hover,
            .form-style-8 input[type="submit"]:hover {
                background:linear-gradient(to bottom, #ffb3b3 5%, #ffb3b3 100%);
                background-color:#ffb3b3;
            }

            table.steelBlueCols {
                border: 4px solid #FFFFFF;
                background-color: #717171;
                width: 400px;
                text-align: center;
                border-collapse: collapse;
            }

            table.steelBlueCols td, table.steelBlueCols th {
                border: 2px solid #FFFFFF;
                padding: 5px 10px;
            }

            table.steelBlueCols tbody td {
                font-size: 12px;
                font-weight: bold;
                color: #FFFFFF;
            }

            table.steelBlueCols tr:nth-child(even) {
                background-color:#A9A9A9;
            }

            table.steelBlueCols thead {
                background: #009AB6;
                border-bottom: 0 solid #BEBEBE;
            }

            table.steelBlueCols thead th,td {
                font-size: 13px;
                font-weight: normal;
                color: #FFFFFF;
                text-align: left;
                border-left: 0 solid #2CBBBB;
            }

            table.steelBlueCols thead th:first-child {
                border-left: none;
            }

            table.steelBlueCols tfoot td {
                font-size: 13px;
            }

            table.steelBlueCols tfoot .links {
                text-align: right;
            }

            table.steelBlueCols tfoot .links a {
                display: inline-block;
                background: #FFFFFF;
                color: #398AA4;
                padding: 2px 8px;
                border-radius: 5px;
            }


        </style>
    </head>
    <body style="position: absolute; min-width: 1000px; width: 100%">
        <div id="toolbar" class="form-style-8" style="font-family: 'Open Sans Condensed', sans-serif;
        min-width: 1000px;
        max-width: 100%;
        width: 100%;
        margin-top: 0;
        height: 70px;
        padding: 10px;
        background: #ff4d4d;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.22);
        -moz-box-shadow: 0 0 15px rgba(0, 0, 0, 0.22);
        -webkit-box-shadow:  0 0 15px rgba(0, 0, 0, 0.22);">

            <h1>Get Advertisment Devices Dashboard</h1>
            <input type="button" value="Log Out" class="form-style-1" onclick="logOut()" style=
                "border-radius: 2px; width: 100px; position: absolute;
                 right: 20px; color: #e6e6e6; display: inline;">

            <script type="application/javascript">
                function logOut() {
                    //Cancello i cookie
                    document.cookie = "email"+'=; Max-Age=-99999999;';
                    document.cookie = "password"+'=; Max-Age=-99999999;';
                    //Log Out
                    window.location.replace("login.jsp?action=0");
                }
            </script>
        </div>
    </body>
</html>
