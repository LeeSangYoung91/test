<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- CSS -->
<style>
label {
	margin-top: 20px;
}

p {
	margin-top: 20px;
}

.box {
    width: 200px;
    height: 200px;
    border-radius: 70%;
    overflow: hidden;
}
.profile {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
</style>

<!-- JSP -->
<form id="detailForm" name="detailForm" method="post">
		<!-- hidden -->
		<input type="hidden" name="empId" value="${result.empId}" />

		<!-- body -->
		<div class="container">

			<!-- title -->
			<h2 style="text-align:center;"><b><span style="color:#000080">'<c:out value="${result.empNm}" />'</span>직원 상세화면</b></h2>

			<!-- contents -->
			<div style="width: 100%; display: inline-flex; padding-bottom: 2px">

				<!-- img (40%) -->
				<div style="width: 40%; display: grid; justify-content:right;">
					<div class="box" style="background: #BDBDBD;"><img class="profile" src=<c:url value="/jfile/preview.do?fileId=${result.fileId}"/>></div>
				</div>

				<!-- label (10%) -->
				<div style="width: 10%; text-align: center; display: grid">
					<label class="control-label">아이디:</label>
					<label class="control-label">이름:</label>
					<label class="control-label">전화번호:</label>
					<label class="control-label">성별:</label>
					<label class="control-label">직책:</label>
					<label class="control-label">급여(원):</label>
					<label class="control-label">경력(년):</label>
					<label class="control-label">등록자:</label>
					<label class="control-label">등록일:</label>
				</div>

				<!-- input (50%) -->
				<div style="width: 50%; text-align: left; display: grid">
					<!-- 아이디 -->
					<div style="display: inline-flex;"><p class="control-label"><c:out value="${result.empId}" /></p></div>

					<!-- 이름 -->
					<div style="display: inline-flex;"><p class="control-label"><c:out value="${result.empNm}" /></p></div>

					<!-- 전화번호 -->
					<div style="display: inline-flex;"><p class="control-label"><c:out value="${result.telno}" /></p></div>

					<!-- 성별 -->
					<div style="display: inline-flex;">
						<c:if test="${result.sexdstn eq 'Male'}"><p class="control-label">남성</p></c:if>
						<c:if test="${result.sexdstn eq 'Female'}"><p class="control-label">여성</p></c:if>
					</div>

					<!-- 직책 -->
					<div style="display: inline-flex;">
						<c:if test="${result.pspofc eq 'Admin'}"><p class="control-label">관리자</p></c:if>
						<c:if test="${result.pspofc eq 'Designer'}"><p class="control-label">디자이너</p></c:if>
					</div>

					<!-- 급여 -->
					<div style="display: inline-flex;"><p class="control-label"><c:out value="${result.salary}" />원</p></div>

					<!-- 경력 -->
					<div style="display: inline-flex;"><p class="control-label"><c:out value="${result.career}" />년</p></div>

					<!-- 등록자 -->
					<div style="display: inline-flex;"><p class="control-label"><c:out value="${result.registId}" /></p></div>

					<!-- 등록일 -->
					<div style="display: inline-flex;"><p class="control-label"><c:out value="${result.registDt}" /></p></div>

				</div>
			</div>

		</div>

		<!-- button -->
		<div class="container" style="text-align: center; margin-top: 30px;">
			<button type="button" class="btn btn-primary" onclick="editEmp()">수정</button>
			<button type="button" class="btn btn-danger" onclick="deleteEmp()">삭제</button>
			<button type="button" class=" btn btn-info" onclick="home()">이전</button>
		</div>
</form>

<!-- JS -->
<script type="text/javaScript" defer="defer">
	function home() {
		document.detailForm.action = "<c:url value='/empList.do'/>";
		document.detailForm.submit();
	}
	function deleteEmp() {
		var check;
		check = confirm("정말로 해당 직원을 삭제하시겠습니까?");

		if (check) {
			document.detailForm.action = "<c:url value='/deleteEmp.do'/>";
			document.detailForm.submit();
		}
	}

	function editEmp() {
		document.detailForm.action = "<c:url value='/empEdit.do'/>";
		document.detailForm.submit();
	}
</script>