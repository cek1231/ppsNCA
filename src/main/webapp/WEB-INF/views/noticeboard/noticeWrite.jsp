<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">

<style>

*{
    padding : 0px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    
}

.transportContent{
	position : relative;
	left:150px;
}

.menu{
	padding-left: 20px;
	padding-top: 10px;
}
.menu span{
	font-size:24px;
	font-weight:bold;
	color:navy;
}
.hide{
		display: none;
	}
 .hide div{
 	font-size:20px;
 	padding: 0 0 10px 5px;
 }
nav{

    border-bottom: 1px solid #ddd;

}


.member{
    display : inline-flex;
    position : relative;
    left : 1000px;
    top : -15px;
}

.main button{
    font-size : 15px;
    font-weight: bolder;
}

.logo{
    display : inline;
    padding-left : 20px; 
    color : navy;
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

.container td{
    height : 30px;
    width : 100px;
}

.btn_search{
    background-color: white;
    border : none;
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
    color : navy;
    text-decoration : none;
    letter-spacing : 3px;
    font-weight: bold;
    font-size : 25px;
}

.nav-links a:hover{
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
    background-color : navy;
    margin : 5px;
    transition : all 0.3s ease;
}

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
    color : black;
}

#pageBar {
   text-align: center;
   margin-top: 30px;
}





.dept01 {
    
    font-size: 25px; 
    color: navy;

}

.dept02 {
    
    font-size: 25px; 
    color: navy;

}

.dept03 {
    
    font-size: 25px; 
    color: navy;

}

.dept04 {
    
    font-size: 25px; 
    color: navy;

}

.dept05 {
    
    font-size: 25px; 
    color: navy;

}

.topMenu3, .topMenu1, .topMenu2, .topMenu4, .topMenu5 {
			width: 150px;
			margin-top: 10px;
			
			margin-bottom: 20px;
		
} 
 

.divEnroll{
   width: 1100px;
   justify-content: center;
   align-items: center;
   height: 100vh;
   margin: auto;
   padding-top: 30px;
}

section {
   line-height: 1.5em;
   margin: 0;
   font-weight: 300;
   display: flex;
   color: #34486b;
   position: relative;
}

a {
   text-decoration: none;
   color: #222;
}

.title {
   width: 800px;
   padding: 25px;
   padding-right :100px; 
   box-sizing: border-box;
}

.title span {
   font-weight: bold;
   display: block;
   margin-top: 20px;
}

.title .req, .title .reqDisRate{
   border: 1px solid #ddd;
   width: 100%;
   padding: 15px;
   box-sizing: border-box;
   border-radius: 5px;
   padding-left: 40px;
   margin-top: 20px;
   margin-bottom: 20px;
}

.title .req:hover, .title .reqDisRate:hover {
   border: 1px solid dodgerblue;
   box-shadow: 0 0 5px #34486b;
}

.title .req::placeholder, .title .reqDisRate::placeholder {
   opacity: 1;
   transition: 0.3s;
}

.title .req:focus::placeholder, .title .reqDisRate:focus::placeholder
{
   opacity: 0;
   visibility: hidden;
}

.title p {
   overflow: hidden;
}

.title p label {
   float: left;
   cursor: pointer;
}

.title p a {
   float: right;
}

.title p a:hover {
   text-decoration: underline;
}

.title input[type=button], input[type=submit] {
   background-color: #34486b;
   color: #fff;
   width: 200px;
   padding: 10px;
   border-radius: 5px;
   border: none;
   cursor: pointer;
   font-size: 24px;
   transition: 0.3s;
   margin: 10px;
}
#hbLocationButton{
   width: 100px;
   font-size: 14px;
}
#postcode{
   width: 200px;
}


#disStat{
   cursor: pointer;
   padding: 15px;
   margin-top: 20px;
   margin-bottom: 20px;
}

.btn {
   text-align: center;
   margin-top: 30px;
}

.title input[type=button]:hover, .title input[type=submit]:hover {
   background-color: #111934;
}

.warn {
   height:100%;
   width:570px;
   padding-left : 50px;
   margin:auto;
   margin-left : 10px;
   color: #242f83;
   box-sizing: border-box;
}

.gnb {
   list-style: none;
   /* position: absolute; */
   /* padding: 50px 30px; */
   display: flex;
   width: 100%;
}

.gnb li {
   flex: 1;
   width: 200px;
   height: 50px;
   text-align: center;
}

.gnb li span {
   font-size: 14px;
   position: relative;
}

.gnb>li.active {
   border-bottom: solid 3px;
   border-bottom-color: #34486b;
}
.gnb>li.active>span {
   padding: 20px 0;
   font-size: 20px;
   font-weight : bold;
   color: #34486b;
}

.enroll {
   padding: 15px;
   display: none;
}

.enroll.active {
   display: block;
}

/* 할인여부 허용하면 할인률 입력칸 띄우기 */
#disRate{
   display: none;
}
input[type=checkbox]:checked ~ #disRate{
   display: block;
}


/* image */
.file-upload label, .file-upload-detail label {
    display: inline-block;
    padding: .5em .75em;
    color: #999;
    font-size: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #fdfdfd;
    cursor: pointer;
    border: 1px solid #ebebeb;
    border-bottom-color: #e2e2e2;
    border-radius: .25em;
}
/* 파일 필드 숨기기 */
.file-upload input[type="file"],.file-upload-detail input[type="file"] {  
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip:rect(0,0,0,0);
    border: 0;
}


/* named upload */
.file-upload .upload-name,.file-upload-detail .upload-name-detail  {
    display: inline-block;
    padding: .5em .75em;  /* label의 패딩값과 일치 */
    font-size: inherit;
    font-family: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #f5f5f5;
    border: 1px solid #ebebeb;
    border-bottom-color: #e2e2e2;
    border-radius: .25em;
    -webkit-appearance: none; /* 네이티브 외형 감추기 */
    -moz-appearance: none;
    appearance: none;
    margin-top:20px; 
    margin-bottom: 20px;
}
/* imaged preview */
.file-upload .upload-display, .file-upload-detail .upload-display-detail {  /* 이미지가 표시될 지역 */
    margin-bottom: 5px;
}

@media(min-width: 768px) { 
    .file-upload .upload-display, .file-upload-detail .upload-display-detail {
        display: inline-block;
        margin-right: 5px;
        margin-bottom: 0;
    }
}

.file-upload .upload-thumb-wrap, .file-upload-detail .upload-thumb-wrap-detail {  /* 추가될 이미지를 감싸는 요소 */
    display: inline-block;
    width: 200px;
    padding: 2px;
    margin-top:15px;
    vertical-align: middle;
    border: 1px solid #ddd;
    border-radius: 5px;
    background-color: #fff;
    
}

.file-upload .upload-display img, .file-upload-detail .upload-display-detail img {  /* 추가될 이미지 */
    display: block;
    max-width: 100%;
    width: 100% \9;
    height: auto;
}

#btnAtt{
   margin-top:15px;
   margin-bottom:15px;
}


#att_zone{
   margin-top:10px;
   width: 100%;
   min-height:150px;
   padding:10px;
   border-radius:5px;
   border:1px dotted #ddd;
}
#att_zone:empty:before{
   content : attr(data-placeholder);
   color : #999;
   font-size:.9em;
}

#detail{
	border-color: #777777;
	font-size: 14px;
	line-height: 1.2em;
	padding: 10px;
}
</style>

<script
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<div class="divEnroll">
	<div class="ul">
      <ul class="gnb">
         <li class="step step-1 active"><span>NCA 테스트 페이지</span></li>
      </ul>
	</div>


<form method="POST" action="${pageContext.request.contextPath}/NoticeBoardUpdate">
      <div class="enroll enroll-1 active">
         <section class="transportContent" id = "transportContent">
            <div class="title">
               <span>타이틀</span> 
               <input type="text" id="noticeTitle" name="noticeTitle" class="req" placeholder="제목을 간략하게 적어주세요." required>
               <span>전송 내용</span>
               <input type="text" name="noticeContent" style="height:250px" class="req" placeholder="내용을 간략하게 적어주세요." required>
               <span>수신처</span>
               <select id="noticeDestination" name="noticeDestination" class="req">
                         <option value="" selected> 수신처 선택</option>  
                         <option value="pps.All" > 전체 송신 </option>
                         <option value="pps.MQ1">&nbsp;&nbsp;· MQ1 송신 </option>
                         <option value="pps.MQ1.SY">&nbsp;&nbsp;&nbsp;&nbsp;- SY 송신 </option>
                         <option value="pps.MQ1.EK">&nbsp;&nbsp;&nbsp;&nbsp;- EK 송신 </option>
                         <option value="pps.MQ2">&nbsp;&nbsp;· MQ2 송신 </option>
                         <option value="pps.MQ2.SH">&nbsp;&nbsp;&nbsp;&nbsp;- SH 송신 </option>        
               </select>
                <script>
                   $(document).ready(function(){
                  $("#noticeDestination").change(function(){
                     var a = $(this).val();
                  });     
                    });
                </script>

               <div class="btn">

                  <!-- <button>이전으로</button> -->
                  <input type="submit" class="next" value="데이터 전송" />
                  
               </div>
            </div>

         </section>
      </div>

</form>

</div>
</body>
</html>