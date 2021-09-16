<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">

<style>
*{
	padding : 0px;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}
body{
    font-family: Helvetica;
    -webkit-font-smoothing: antialiased;
}
h2{
    text-align: center;
    font-size: 18px;
    text-transform: uppercase;
    letter-spacing: 1px;
    color: white;
    padding: 30px 0;
}

.mainChart1{
	display:inline;
	width:400px;
}
.mainChart2{
	display:inline;
	width:400px;
}
.mainpageContentchart{
   overflow: hidden;
   margin-left: 265px;
   margin-top: 15px;
   background : white;
   box-shadow: 0 0 5px rgba(0,0,0,.25);
   padding-bottom: 30px;
   padding-top: 30px;
   width:28%;
   height:400px;
	
}

.mainpageContentchart2{
   overflow: hidden;
   margin-left: 265px;
   margin-top: 15px;
   background : white;
   box-shadow: 0 0 5px rgba(0,0,0,.25);
   padding-bottom: 30px;
   padding-top: 30px;
   width:28%;
	height:400px;
	position:relative;
	left:540px;
	bottom:415px;
}

.mainpageContentchart3{
   overflow: hidden;
   margin-left: 265px;
   margin-top: 15px;
   background : white;
   box-shadow: 0 0 5px rgba(0,0,0,.25);
   padding-bottom: 30px;
   padding-top: 30px;
   width:28%;
	height:400px;
	position:relative;
	left:1080px;
	bottom:830px;
}
.mainpageContent{
	overflow: hidden;
	margin-left: 265px;
 	margin-top: 15px;
 	background : white;
   box-shadow: 0 0 5px rgba(0,0,0,.25);
   padding-left: 40px;
   padding-bottom: 50px;
   padding-top: 30px;
   padding-right:50px;
   	position:relative;
   bottom:825px;
	
}


.title{
	
}

.mainpageContent5{
	overflow: hidden;
	margin-left: 10px;
 	margin-top: 15px;
 	background : white;
   box-shadow: 0 0 5px rgba(0,0,0,.25);
   padding-left: 40px;
   padding-bottom: 50px;
   padding-top: 30px;
   padding-right:50px;
   	position:relative;
   bottom:825px;
}


.wonImg{
	width:40px;
	height:50px;
}
/* Table Styles */

.table-wrapper{

    margin: 10px 10px 70px;
    box-shadow: 1px 1px 3px rgba(0,0,0,.14);
    position:relative;
    top:100px;
    
}

.fl-table {
    border-radius: 5px;
    font-size: 12px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 12px;
}

.fl-table thead th {
    color: #ffffff;
    background: #324960;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #324960;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}

/* Responsive */

@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 11px;
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
        font-size: 13px;
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
}
.ck-editor__editable {
  min-height: 550px;
  width: 1200px;
}


.pageBar{
	display:inline;
	position:relative;
	left:270px;
}

<!-- -->
.ripple {
  position:relative;
  left:1200px;
  transition: background 0.8s;
}


/* Button style */
button {
  border: none;
  border-radius: 2px;
  padding: 12px 18px;
  font-size: 12px;
  text-transform: uppercase;
  cursor: pointer;
  color: white;
  background-color: #324960;
  box-shadow: 0 0 4px #999;
  outline: none;
}

.btnReportList{
  position:relative;
  right:50px;	
}

.btnDelete2{
  border: none;
  border-radius: 2px;
  padding: 12px 18px;
  font-size: 12px;
  text-transform: uppercase;
  cursor: pointer;
  color: white;
  background-color: #324960;
  box-shadow: 0 0 4px #999;
  outline: none;
  position:relative;
  top:40px;
}


.btnDelete{
  border: none;
  border-radius: 2px;
  padding: 12px 18px;
  font-size: 12px;
  text-transform: uppercase;
  cursor: pointer;
  color: white;
  background-color: #324960;
  box-shadow: 0 0 4px #999;
  outline: none;
  position:relative;
  left:80px;
  top:40px;
}
.writeButton{
  border: none;
  border-radius: 2px;
  padding: 12px 18px;
  font-size: 12px;
  text-transform: uppercase;
  cursor: pointer;
  color: white;
  background-color: #324960;
  box-shadow: 0 0 4px #999;
  outline: none;
  position:relative;
  left:1138px;
}
.gnb {
   list-style: none;
   /* position: absolute; */
   /* padding: 50px 30px; */
   display: flex;
   width: 100%;
}

.btnList{
	position:relative;
	left:990px;	
	top:50px;
}
.btnUpdate{

}
.right{
	position:relative;
	left:1130px;
}

.statusY{
  border: none;
  border-radius: 2px;
  padding: 6px 18px;
  font-size: 8px;
  text-transform: uppercase;
  cursor: pointer;
  color: white;
  background-color: #01DF3A;
  box-shadow: 0 0 4px #999;
  outline: none;
}

.statusN{
  border: none;
  border-radius: 2px;
  padding: 6px 18px;
  font-size: 8px;
  text-transform: uppercase;
  cursor: pointer;
  color: white;
  background-color: #FF4000;
  box-shadow: 0 0 4px #999;
  outline: none;
}

.memStatus{
  border: none;
  border-radius: 2px;
  padding: 6px 18px;
  font-size: 8px;
  text-transform: uppercase;
  cursor: pointer;
  color: white;
  background-color: #324960;
  box-shadow: 0 0 4px #999;
  outline: none;
}
.merStatusB{
 border: none;
  border-radius: 2px;
  padding: 6px 18px;
  font-size: 8px;
  text-transform: uppercase;
  cursor: pointer;
  color: white;
  background-color: #324960;
  box-shadow: 0 0 4px #999;
  outline: none;
	
}
.merStatus{
	display:inline;
}

@bg-blue: #337ab7;
@bg-hoki: #67809F;
@bg-red: #e7505a;
@bg-purple: #8E44AD;
body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
}
.divEnroll{
   width: 1100px;
   justify-content: center;
   align-items: center;
   height: 100vh;
   margin: auto;
   padding-top: 30px;
}
.nav-active{
    transform : translateX(0%);
}
.gnb li {
   flex: 1;
   width: 40px;
   height: 50px;
   text-align: center;
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
.enroll.active {
   display: block;
}
.wrapper {
  position: relative;  
}

.heading{
    margin: 25px 0;
    font-size: 24px;  
}
.dashboard-stat {
  position: relative;
  display: block;
  margin: 0 0 25px;
  overflow: hidden;
  border-radius: 4px;
  .visual {
    width: 80px;
    height: 80px;
    display: block;
    float: left;
    padding-top: 10px;
    padding-left: 15px;
    margin-bottom: 15px;
    font-size: 35px;
    line-height: 35px;
    > i {
      margin-left: -15px;
      font-size: 110px;
      line-height: 110px;
      color: #fff;
      opacity: .1;
    }
  }
  
  .details {
    position: absolute;
    right: 15px;
    padding-right: 15px;
    color: #fff;
    .number {
      padding-top: 25px;
      text-align: right;
      font-size: 34px;
      line-height: 36px;
      letter-spacing: -1px;
      margin-bottom: 0;
      font-weight: 300;
      .desc {
        text-transform: capitalize;
        text-align: right;
        font-size: 16px;
        letter-spacing: 0;
        font-weight: 300;
      }
    }
  }
  &.blue {
    background-color: @bg-blue;
  }
  &.red {
    background-color: @bg-red;
  }
  &.purple {
    background-color: @bg-purple;
  }
  &.hoki {
    background-color: @bg-hoki;
  }
}
</style>
<meta charset="UTF-8">
<title>NCA</title>
</head>
<body>

<div class="divEnroll">
   <div class="ul">
      <ul class="gnb">
         <li class="step step-1 active"><span>NCA 테스트 페이지</span></li>
      </ul>
   </div>
<div>

<div class="mainContent">
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
		<tr>
			<th style = "width : 150px">전송 번호</th>
			<th style = "width : 700px">타이틀</th>
			<th style = "width : 150px">수신처</th>
			<th style = "width : 300px">전송시간</th>
		</tr>
        </thead>
        <tbody>
		<c:if test="${ boardlist==null }">
			<tr>
				<td colspan="4">
						조회된 게시글이 없습니다.
				</td>
			</tr>	
		</c:if>
		
		<c:if test="${ boardlist != null }">
			<c:forEach var="notice" items="${ boardlist }">
				<tr>
					<td align="center"><c:out value="${ notice.boardNo }"/></td>
					<td>
						<a href="${pageContext.request.contextPath}/NoticeBoardView?no=${notice.boardNo}">							
							<c:out value="${ notice.boardTitle }"/>
						</a>
					</td>
					<td align="center"><c:out value="${ notice.boardDestination }"/></td>
					<td align="center"><c:out value="${ notice.boardEnrollTime }"/></td>
				</tr>				
			</c:forEach>
		</c:if>
        <tbody>
     </table>
</div>
</div>
	<button type="button" class="btnList" onclick="location.href='${pageContext.request.contextPath}/NoticeBoardWrite'">데이터 전송</button>
</div>
</div>
</body>

</body>
</html>