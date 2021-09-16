<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<html>
    <head>
    <style>
    *{
    margin : 0px;
    padding : 0px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
}

#memberContainer{
    display : flex;
    position : relative;
    width : 500px;
    margin : 1px;
    left : 1450px;
    top : -15px;
}

nav{
    margin : 0px 20px;
    padding : 0px 20px; 
    display : flex;
    justify-content : flex-start;
    align-items : center;
    min-height : 8vh;
    font-family : 'Noto Sans KR', sans-serif;
}

/* .member{
    display : flex;
    position : relative;

} */

.main button{
    font-size : 15px;
    font-weight: bolder;
}

.logo{
    display : inline;
    padding-left : 20px; 
    color :  #34486b;
    text-transform: uppercase;
    letter-spacing: 5px;
    font-size: 35px;
    font-family : 'Noto Sans KR', sans-serif;
}

.logoImg{
   position : relative;
   top : 25px;
   left : 20px; 
}

.logo h4{
    display : inline-block;
}

.logo search{
    position : relative;
    width : 100px;
}

.member *{
    text-align : center;
    font-weight: bold;
}

.tbl td{
    height : 30px;
    width : 150px;
}

.btn_search{
    background-color: white;
    border : none;
}

.butn{
    width : 100px;
}
button{
    background-color: white;
    border : none;
}


.search input{
    display: inline-block;
    height : 30px;
    width : 250px;
    background-color: #fff;
    box-sizing : border-box;
    border-color : lightgray;
    border-radius: 20px;
}

.search input:focus{
    outline : none;
}

.search img{
    position : relative;
    top : 6px;
    left : -5px;
    height : 20px;
    width: 20px;
}

.nav-links{
    display : flex;
    justify-content: space-around;
    width: 50%; /* nav 硫붾돱 湲��옄媛꾧꺽(flexible)*/
}
.nav-links li{
    list-style: none;
}

.nav-links a{
    color :  #34486b;
    text-decoration : none;
    letter-spacing : 3px;
    font-weight: bold;
    font-size : 25px;
}

.nav-links a:hover{
    /* 諛묒쨪 �뜲肄� �꼫臾� 援щ┛ �벏.. => 異뷀썑 蹂�寃� 
    text-decoration : underline; */
}

/* 카테고리 */
.category{
    margin-left : 20px;
    padding-left : 22px; 
    display : none;
    position : relative;
    left : 50px;
    top : -10px;
}

.category li{
    list-style: none;
    display : block;
    float : left;
    padding : 12px;
    font-size : 18px;
    font-weight : bold;
}

.category li a {
    text-decoration : none;
    color :  #34486b;
}

.category li a:hover{
    color: #eacc16;
}

/* 踰꾧굅 �쁺�뿭 : 硫붾돱 紐⑥뼇 */
.burger{
    display : none;
    margin : 10px;
    cursor: pointer;
}

.burger div{
    width : 25px;
    height : 4px;
    background-color :  #34486b;
    margin : 5px;
    transition : all 0.3s ease;
}

/* relation with mobile ... maybe?? */
@media screen and (max-width:1024px){
    .nav-links{
       width : 60%;
    }
}


@media screen and (max-width:768px){
    body{
        overflow-x : hidden;
    }
    .nav-links{
        position : absolute;
        right : 0px;
        height : 92vh; 
        top : 20vh; 
        background: lightslategray;
        display : flex;
        flex-direction : column;
        align-items : center;
        width : 50%;
        transform : translateX(100%);
        transition : transform 0.5s ease-in;
    }
    .nav-links li{
        opacity : 0;
    }
    .burger{
        display : block;
    }
}

.nav-active{
    transform : translateX(0%);
}

@keyframes navLinkFade{
    from{
        opacity : 0;
        transform : translateX(50px);
    }
    to{
        opacity : 1;
        transform : translateX(0px);
    }
}

.toggle .line1{
    transform : rotate(-45deg) translate(-5px, 6px);
}
.toggle .line2{
    opacity : 0;
}
.toggle .line3{
    transform : rotate(45deg) translate(-5px, -6px);
}

section{
    margin : 20px;
    padding : 20px; 
    display : flex;
    justify-content : flex-start;
    align-items : center;
    min-height : 60vh;
}

footer{
    margin : 20px;
    padding : 20px; 
    min-height : 7vh;
    width : 100%
    display : flex;
    justify-content : flex-start;
    align-items : center;
    font-family : 'Noto Sans KR', sans-serif;
}

.leftFooter{
    width : 60%;
    float : left;    
}

.leftFooter img{
    max-height: 40px;
    position : relative;
    top : 3px;
}

.leftFooter h4{
    display : inline;
    position : relative;
    top : -10px;
    left : -4px;
}

.rightFooter{
    width : 20%;
    float : right;
    position : relative;
    top : 5px;
}

.rightFooter img{
    max-height: 35px;
    position : relative;
    left : 10px;
}

.rightFooter a{
    text-decoration: none;
    color : #34486b;
}

/* �럹�씠吏�諛� */
#pageBar {
   text-align: center;
   margin-top: 30px;
}
    
    </style>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${path}/css/style.css">
        <link rel="shortcut icon" type="imae/x-icon" href="${path}/images/PPS.png"/>

        <script src="${ path }/js/jquery-3.6.0.min.js"></script>

        <title> PPS  </title>
    </head>

    <body>
        <header>
            <div class="logo" onclick="location.href='${path}'">
                <img class="logoImg" src="C:\Users\pps\Documents\workspace-sts-3.9.17.RELEASE\Board\src\main\webapp\WEB-INF\resources\images\PPS.png"> <h4> PPS</h4>
            </div>
        </header>
        
   <script type="text/javascript" src="${ path }/js/header.js"></script>