<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="css/sidebar.css">
    <style>
        body {
            background-color: lightgray;
        }
        body * {
            box-sizing: border-box;
        }
        #main {
            margin-left: 10%;
        }
        div.dd {
            border:2px groove darkslategray;
            width:  20%;
            height:  250px;
            margin: 5px;
            float: left;
            overflow: auto;
        }
        div#title {
            background-color: #111111;
            border-radius: 10px;
            margin: 1%;
            height: 70px;
            font-style: revert;
            font-size: large;
            color: white;
            text-align: center;
            padding-top: 1.7%;
        }
        .title {
            border-radius: 10px;
            padding: 10px;
            margin: 5px;
            cursor: pointer;
        }
        h4 {
            border:  1px solid gray;
            margin: 10px;
            background-color: dimgray;
        }
        h4:hover {
            background-color: skyblue;
        }

        ul {
            display: none;
        }
        button {

            .title a {
                text-decoration: none black solid;
            }

        }
    </style>
    <script>
        window.onload = function() {
            var h4Elements = document.getElementsByTagName('h4');
            for (var i = 0; i < h4Elements.length; i++) {
                h4Elements[i].addEventListener('click', function() {
                    var display = this.nextElementSibling.style.display;
                    this.nextElementSibling.style.display = display === 'block' ? 'none' : 'block';
                });
            }
        };
        function openNav() {
            document.getElementById("mySidebar").style.width = "15%";
            document.getElementById("main").style.marginLeft = "15%";
        }

        function closeNav() {
            document.getElementById("mySidebar").style.width = "0";
            document.getElementById("main").style.marginLeft= "0";
        }
    </script>
</head>
<body>
<div id="title">박성민
    <button id="menuBtn" class="openbtn" onclick="openNav()">리스트</button>
</div>
<div id="mySidebar" class="sidebar">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">X</a>
    <a href="http://192.168.142.3/jqpro/index.html" target="_self" style="color: #ffffff">배미숙</a>
    <a href="http://192.168.142.19/jqpro/index.html" target="_self" style="color: #ffffff">박건태</a>
    <a href="http://192.168.142.15/jqpro/index.html" target="_self" style="color: #ffffff">황지훈</a>
    <a href="http://192.168.142.20/jqpro/index.html" target="_self" style="color: #ffffff">박소영</a>
    <a href="http://192.168.142.26/jqpro/index.html" target="_self" style="color: #ffffff">홍수지</a>
    <a href="http://192.168.142.18/jqpro/index.html" target="_self" style="color: #ffffff">유하늘</a>
    <a href="http://192.168.142.4/jqpro/index.html" target="_self" style="color: #ffffff">박승준</a>
    <a href="http://192.168.142.37/jqpro/index.html" target="_self" style="color: #ffffff">정성윤</a>
    <a href="http://192.168.142.17/jqpro/index.html" target="_self" style="color: #ffffff">한요한</a>
    <a href="http://192.168.142.38/jqpro/index.html" target="_self" style="color: #ffffff">이성경</a>
    <a href="http://192.168.142.32/jqpro/index.html" target="_self" style="color: #ffffff">장민우</a>
    <a href="http://192.168.142.33/jqpro/index.html" target="_self" style="color: #ffffff">나성진</a>
    <a href="http://192.168.142.16" target="_self" style="color: #ffffff">박성민</a>
    <a href="http://192.168.142.5/jqpro/index.html" target="_self" style="color: #ffffff">조성훈</a>
    <a href="http://192.168.142.22/jqpro/index.html" target="_self" style="color: #ffffff">신의정</a>
    <a href="http://192.168.142.6/jqpro/index.html" target="_self" style="color: #ffffff">김병수</a>
    <a href="http://192.168.142.21/jqpro/index.html" target="_self" style="color: #ffffff">이기현</a>
</div>
<div id="main">

    <div class="dd">
        <h4 class="title">0110</h4>
        <ul>
            <li><a href="./0110/clickhide.html">clickhide.html </a> </li>
            <li><a href="./0110/jqtest1.html">jqtest1.html </a> </li>
            <li><a href="./0110/공용cdn사용.html">공용cdn사용.html </a> </li>
            <li><a href="./0110/새로운요소.html">새로운요소.html </a> </li>
            <li><a href="./0110/선택자연습.html">선택자연습.html </a> </li>
            <li><a href="./0110/요소list.html">요소list.html </a> </li>
            <li><a href="./0110/컨텍스트.html">컨텍스트.html </a> </li>
        </ul>
    </div>
    <div class="dd">
        <h4 class="title">0111</h4>
        <ul>
            <li><a href="./0111/html_text메소드.html">html_text메소드.html </a> </li>
            <li><a href="./0111/동적이미지생성.html">동적이미지생성.html </a> </li>
            <li><a href="./0111/속성선택자.html">속성선택자.html </a> </li>
            <li><a href="./0111/형제선택자.html">형제선택자.html </a> </li>
        </ul>
    </div>
    <div class="dd">
        <h4 class="title">0112</h4>
        <ul>
            <li><a href="./0112/기본필터.html">기본필터.html </a> </li>
            <li><a href="./0112/내용필터.html">내용필터.html </a> </li>
            <li><a href="./0112/기타필터.html">기타필터.html </a> </li>
            <li><a href="./0112/상태필터.html">상태필터.html </a> </li>
            <li><a href="./0112/폼check상태필터.html">폼check상태필터.html </a> </li>
            <li><a href="./0112/폼selected필터.html">폼selected필터.html </a> </li>
        </ul>
    </div>
    <div class="dd">
        <h4 class="title">0115</h4>
        <ul>
            <li><a href="./0115/css메소드.html">css메소드.html </a> </li>
            <li><a href="./0115/info_val.html">info_val.html </a> </li>
            <li><a href="./0115/is찾기메소드.html">is찾기메소드.html </a> </li>
            <li><a href="./0115/복사메소드.html">복사메소드.html </a> </li>
            <li><a href="./0115/속성메소드.html">속성메소드.html </a> </li>
            <li><a href="./0115/이미지내부추가.html">이미지내부추가.html </a> </li>
            <li><a href="./0115/지우기.html">지우기.html </a> </li>
            <li><a href="./0115/찾기메소드.html">찾기메소드.html </a> </li>
            <li><a href="./0115/필터메소드.html">필터메소드.html </a> </li>
        </ul>
    </div>
    <div class="dd">
        <h4 class="title">0116</h4>
        <ul>
            <li><a href="./0116/attr속성메소드.html">attr속성메소드.html </a> </li>
            <li><a href="./0116/bind버튼.html">bind버튼.html </a> </li>
            <li><a href="./0116/delegate버튼.html">delegate버튼.html </a> </li>
            <li><a href="./0116/prop속성상태메서드.html">prop속성상태메서드.html </a> </li>
        </ul>
    </div>
    <div class="dd">
        <h4 class="title">0117</h4>
        <ul>
            <li><a href="./0117/promise실행.html">promise실행.html </a> </li>
            <li><a href="./0117/데이터타입별수행.html">데이터타입별수행.html </a> </li>
            <li><a href="./0117/비동기실행1.html">비동기실행1.html </a> </li>
        </ul>
    </div>
    <div class="dd">
        <h4 class="title">0118</h4>
        <ul>
            <li><a href="./0118/ajax_datatype.html">ajax_datatype.html </a> </li>
            <li><a href="./0118/datatype_fetch.html">datatype_fetch.html </a> </li>
        </ul>
    </div>
    <div class="dd">
        <h4 class="title">0119</h4>
        <ul>
            <li><a href="./0119/lprod.html">lprod.html </a> </li>
            <li><a href="./0119/member.html">member.html </a> </li>
        </ul>
    </div>
    <div class="dd">
        <h4 class="title">0122</h4>
        <ul>
            <li><a href="./0122/lprod_prod.html">lprod_prod.html </a> </li>
        </ul>
    </div>
</div>
</body>
</html>