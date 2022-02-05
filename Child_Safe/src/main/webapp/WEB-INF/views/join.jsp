<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		// 취소
		$("#cancel").on("click", function() {
			location.href = "${cpath}/main.do";
		})

		$("#submit").on("click", function() {
			if ($("#memId").val() == "") {
				alert("아이디를 입력해주세요.");
				$("#memId").focus();
				return false;
			}
			if ($("#memPw").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#memPw").focus();
				return false;
			}
			if ($("#memName").val() == "") {
				alert("성명을 입력해주세요.");
				$("#memName").focus();
				return false;
			}
			if ($("#memBirthdate").val() == "") {
				alert("생일을 입력해주세요.");
				$("#memBirthdate").focus();
				return false;
			}
			if ($("#memPhone").val() == "") {
				alert("핸드폰 번호를 입력해주세요.");
				$("#memPhone").focus();
				return false;
			}
			if ($("#memEmail").val() == "") {
				alert("이메일을 입력해주세요.");
				$("#memEmail").focus();
				return false;
			}
			if ($("#memAddr").val() == "") {
				alert("주소를 입력해주세요.");
				$("#memAddr").focus();
				return false;
			}
		});

	})
</script>
<body>
	<form action="${cpath}/join.do" method="post">
		<div>
			<label>아이디</label> 
			<input type="text" id="memId" name="memId" />
		</div>
		<div>
			<label>패스워드</label> 
			<input type="password" id="memPw" name="memPw" />
		</div>
		<div>
			<label>이름</label> 
			<input type="text" id="memName" name="memName" />
		</div>
		<div>
			<label>생년월일</label> 
			<input type="text" id="memBirthdate" name="memBirthdate" />
		</div>
		<div>
			<label>핸드폰</label> 
			<input type="text" id="memPhone" name="memPhone" />
		</div>
		<div>
			<label>이메일</label> 
			<input type="text" id="memEmail" name="memEmail" />
		</div>
		<div>
			<label>주소</label> 
			<input type="text" id="memAddr" name="memAddr" />
		</div>
		<div>
			<button type="submit" id="submit">회원가입</button>
			<button type="button" id="cancel">취소</button>
		</div>
	</form>
</body>
</html>