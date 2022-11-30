<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- body -->
<header class="page-header">
	<!-- contents -->
	<div class="container">
		<!-- top -->
		<div style="text-align: center;" alt="spare 로고">
			<img src="<c:url value='images/logo.jpg' />">
		</div>

		<!-- bottom -->
		<div style="width: 100%; display: inline-flex; padding-top: 32px;">
			<div style="text-align: left; width: 50%">
				<a href="javascript:mberList()"><b>고객관리 </b></a><span class="text-gray">|</span>
				<a href="javascript:empList()"><b>직원관리 </b></a><span class="text-gray">|</span>
				<a href="javascript:resveView()"><b>예약관리 </b></a><span class="text-gray">|</span>
				<a href="javascript:resveChart()"><b>예약통계 </b></a><span class="text-gray">|</span>
				<a href="javascript:logout()" onclick=""><b>로그아웃 </b></a>
			</div>

			<%  String str = (String) session.getAttribute("empId"); %>
			<div style="text-align:right; width: 50%;"><b> <span style="color:#000080"><%=str%>님 </span> spare 방문을 환영합니다!</b></div>
		</div>
	</div>
</header>

<!-- JS -->
<script type="text/javascript">
	function mberList() {
		location.href = "<c:url value='/mberList.do'/>";
	}
	function empList() {
		location.href = "<c:url value='/empList.do'/>";
	}
	function resveView() {
		location.href = "<c:url value='/resveView.do'/>";
	}
	function resveChart() {
		location.href = "<c:url value='/resveChart.do'/>";
	}
	function logout() {
		location.href = "<c:url value='/logout.do'/>";
	}
</script>