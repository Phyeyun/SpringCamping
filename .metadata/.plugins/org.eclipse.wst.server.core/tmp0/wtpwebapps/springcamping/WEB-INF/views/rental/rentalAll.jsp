<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <%@ include file ="../include/head.jsp" %> 
</head>

<body>
    <!-- header-start -->
    <header>
       <%@ include file ="../include/nav.jsp" %>
    </header>
    <!-- header-end -->

    <!-- bradcam_area_start -->
    <div class="bradcam_area breadcam_bg_1">
		<h3> 렌탈정보 전체목록 </h3>
    </div>
    <!-- bradcam_area_end -->

    <!-- Main content -->
    
    <div class = "본문">
	  <table class="table" border="1">
		  <tr>
		  	<td>렌탈번호</td>
		  	<td>렌탈물품명</td>
		  	<td>설명</td>
		  	<td>비고</td>
		  	<td>렌탈물품가격</td>
		  	<!-- <td>이미지</td> -->
		  </tr>
	  	<!-- list 갯수 -->
	  <c:forEach var="rentalInfo" items="${rentalAll }">
	 	  <tr>
		 	<td><strong><a href="rentalDetail?rental_no=${rentalInfo.rental_no}">${rentalInfo.rental_no}</a></strong></td>
		 	<td>${rentalInfo.rental_name}</td>
		 	<td>${rentalInfo.rental_content}</td>
		 	<td>${rentalInfo.rental_etc}</td>
		 	<td>${rentalInfo.rental_price}</td>
	 	  </tr>
	  </c:forEach>
	  </table>
	  <div class="button-group-area" style="float: right;">
	  <c:if test="${user.user_admin==true }">
		<a href="rentalInsert" class="genric-btn primary">렌탈정보 추가</a>
	  </c:if>
	  </div>
    </div>
			
    <!-- Main content End -->
    
    <!-- footer -->
    <%@ include file ="../include/footer.jsp" %>
    
    <!-- form itself end-->
    
    <!-- 에약이랑 로그인 버튼인데..... 그건 구현 후 붙일거임! 여기 건들 ㄴㄴ -->
    
	<!-- form itself end -->

</body>

</html>