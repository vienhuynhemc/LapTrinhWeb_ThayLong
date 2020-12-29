<%@ page import="model.language.IndexMailNoticeLanguageModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.setCharacterEncoding("utf-8");%>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thành công</title>
    <link rel="stylesheet" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <style>

        html {
            font-size: 10px;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        }

        *:before, *:after {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 14px;
            line-height: 1.42857143;
            color: #333;
            background-color: #fff;
        }

        body {
            font-family: "Oswald", sans-serif !important;
        }

        p {
            display: block;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
        }

        p {
            margin: 0 0 10px;
        }

        .changepassword1 {
            width: 100vw;
            height: 100vh;
            position: fixed;
            z-index: 1000;
            top: 0px;
            left: 0px;
            transition: all 0.3s ease-in-out;
            transform: scaleY(1);
        }

        .hiddenchangepassword1 {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0px;
            background-color: black;
            opacity: 0.5;
            z-index: 99;
        }

        .mainchangepassword {
            width: 600px;
            height: 500px;
            top: 50%;
            left: 50%;
            margin-left: -300px;
            margin-top: -250px;
            z-index: 100;
            background-color: white;
            position: absolute;
            box-shadow: 0 0 20px 0px #191818;
        }

        .changepasswordtitle {
            text-align: center;
            font-family: sans-serif;
            color: #ff7315;
            font-weight: bold;
            font-size: 22px;
            margin-top: 50px;
        }

        .changepasswordtitle i {
            margin-right: 5px;
            font-size: 25px;
        }

        .changepasswordsuccess {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 90px;
        }

        .changepasswordsuccess p:nth-child(1) {
            color: #36363f;
            font-weight: bold;
            font-size: 18px;
        }

        .changepasswordsuccess p:nth-child(2) {
            color: #5e6477;
            font-size: 14px;
            text-align: center;
            width: 350px;
            margin-top: 10px;
        }

        .changepasswordsuccess p:nth-child(2) img {
            width: 20px;
            transform: translateY(-3px);
        }

        .changepasswordsuccess button {
            color: white;
            background-color: #ff7315;
            border: none;
            border-radius: 3px;
            width: 350px;
            height: 40px;
            margin-top: 30px;
            font-size: 14px;
        }
    </style>

</head>

<body>

<div class="changepassword1" id="changepassword1">
    <div class="hiddenchangepassword1" onclick="gobackpassword()"></div>
    <div class="mainchangepassword">
        <p class="changepasswordtitle"><i class="fa fa-cogs"></i>TVT Shop</p>
        <div class="changepasswordsuccess" id="changepasswordsuccess">
            <p> ${param.title} </p>
            <p> ${param.content}</p>
            <button onclick="gobackpassword()">Trở về
            </button>
        </div>
    </div>
</div>

<script>
    function gobackpassword() {
        document.getElementById('changepassword1').style.transform = 'scaleY(0)';
    }
</script>

</body>

</html>