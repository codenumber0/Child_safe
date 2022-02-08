<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>ChildSafe</title>

<script src="https://kit.fontawesome.com/a81368914c.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 취소
		$("#cancel").on("click", function() {
			location.href = "${cpath}/main.do";
		})

		$("#submit").on("click", function() {
			if ($("#mem_id").val() == "") {
				alert("아이디를 입력해주세요.");
				$("#mem_id").focus();
				return false;
			}
			if ($("#mem_pw").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#mem_pw").focus();
				return false;
			}
			if ($("#mem_name").val() == "") {
				alert("성명을 입력해주세요.");
				$("#mem_name").focus();
				return false;
			}
			if ($("#mem_birthdate").val() == "") {
				alert("생일을 입력해주세요.");
				$("#mem_birthdate").focus();
				return false;
			}
			if ($("#mem_phone").val() == "") {
				alert("핸드폰 번호를 입력해주세요.");
				$("#mem_phone").focus();
				return false;
			}
			if ($("#mem_email").val() == "") {
				alert("이메일을 입력해주세요.");
				$("#mem_email").focus();
				return false;
			}
			if ($("#mem_addr").val() == "") {
				alert("주소를 입력해주세요.");
				$("#mem_addr").focus();
				return false;
			}
		});

	})
</script>
<script>
    $().ready(function () {
    $("#submit").click(function () {
        Swal.fire({
            icon: 'success',
            confirmButtonColor: '#fdd31d',
            title: '회원가입이 완료되었습니다!',
            text: 'OK 버튼을 누르시면 메인으로 이동합니다.',
            closeOnClickOutside : false
        }).then(function(){
            location.href="Zindex.do"
            
        });
        });
});
   </script>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	font-family: 'NanumSquareRound';
	overflow: hidden;
}

.wave {
	position: fixed;
	bottom: 0;
	left: 0;
	height: 100%;
	z-index: -1;
}

.container {
	width: 100vw;
	height: 100vh;
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	grid-gap: 7rem;
	padding: 0 2rem;
}

.img {
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

.login-content {
	display: flex;
	justify-content: flex-start;
	align-items: center;
	text-align: center;
}

.img img {
	width: 500px;
}

form {
	width: 360px;
}

.login-content img {
	height: 100px;
}

.title {
	margin: 15px 0;
	color: #333;
	text-transform: uppercase;
	font-size: 2.0rem;
}

.login-content .input-div {
	position: relative;
	display: grid;
	grid-template-columns: 7% 93%;
	margin: 25px 0;
	padding: 5px 0;
	border-bottom: 2px solid #d9d9d9;
}

.login-content .input-div.one {
	margin-top: 0;
}

.i {
	color: #d9d9d9;
	display: flex;
	justify-content: center;
	align-items: center;
}

.i i {
	transition: 0.3s;
}

.input-div>div {
	position: relative;
	height: 45px;
}

.input-div>div>h5 {
	position: absolute;
	left: 10px;
	top: 50%;
	transform: translateY(-50%);
	color: #999;
	font-size: 18px;
	transition: 0.3s;
}

.input-div:before, .input-div:after {
	content: "";
	position: absolute;
	bottom: -2px;
	width: 0%;
	height: 2px;
	background-color: #fdd31d;;
	transition: 0.4s;
}

.input-div:before {
	right: 50%;
}

.input-div:after {
	left: 50%;
}

.input-div.focus:before, .input-div.focus:after {
	width: 50%;
}

.input-div.focus>div>h5 {
	top: -5px;
	font-size: 15px;
}

.input-div.focus>.i>i {
	color: #fdd31d;;
}

.input-div>div>input {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	border: none;
	outline: none;
	background: none;
	padding: 0.5rem 0.7rem;
	font-size: 1.2rem;
	color: #555;
	font-family: 'NanumSquareRound';
}

.input-div.pass {
	margin-bottom: 4px;
}

a {
	display: block;
	text-decoration: none;
	color: #999;
	font-size: 1.0rem;
	transition: 0.3s;
}

a:hover {
	color: #fdd31d;;
}

.btn {
	display: block;
	width: 100%;
	height: 50px;
	border-radius: 25px;
	outline: none;
	border: none;
	background-image: linear-gradient(to right, #ffde4b, #fdd31d, #f1c80f);
	background-size: 200%;
	font-size: 1.2rem;
	color: #555;
	font-family: 'NanumSquareRound';
	font-weight: bold;
	text-transform: uppercase;
	margin: 1rem 0;
	cursor: pointer;
	transition: 0.5s;
}

.btn:hover {
	background-position: right;
}

@media screen and (max-width: 1050px) {
	.container {
		grid-gap: 5rem;
	}
}

@media screen and (max-width: 1000px) {
	form {
		width: 290px;
	}
	.title {
		text-align: center;
		font-size: 2.0rem;
		margin: 8px 0;
	}
	.img img {
		width: 400px;
	}
}

@media screen and (max-width: 900px) {
	.container {
		grid-template-columns: 1fr;
	}
	.img {
		display: none;
	}
	.wave {
		display: none;
	}
	.login-content {
		justify-content: center;
	}
}
</style>
<body>
	<img class="wave"
		src="${pageContext.request.contextPath}/resources/skydash/images/wave.png" />
	<div class="container">
		<div class="img"></div>
		<div class="login-content">
			<form action="${cpath}/Zjoin.do" method="post">
				<img
					src="${pageContext.request.contextPath}/resources/skydash/images/avatar.png" />
				<a href="#" class="title">ChildSafe</a>
				<div class="input-div one">
					<div class="i">
						<i class="fas fa-user"></i>
					</div>
					<div class="div">
						<h5>아이디</h5>
						<input type="text" id="mem_id" name="mem_id" class="input"/>
					</div>
				</div>
				<div class="input-div pass">
					<div class="i">
						<i class="fas fa-lock"></i>
					</div>
					<div class="div">
						<h5>비밀번호</h5>
						<input type="password" id="mem_pw" name="mem_pw" class="input"/>
					</div>
				</div>

				<div class="input-div pass">
					<div class="i">
						<i class="fas fa-signature"></i>
					</div>
					<div class="div">
						<h5>이름</h5>
						<input type="text" id="mem_name" name="mem_name" class="input"/>
					</div>
				</div>

				<div class="input-div pass">
					<div class="i">
						<i class="fas fa-birthday-cake"></i>
					</div>
					<div class="div">
						<h5>생년월일</h5>
						<input type="text" id="mem_birthdate" name="mem_birthdate" class="input"/>
					</div>
				</div>


				<div class="input-div pass">
					<div class="i">
						<i class="fas fa-phone-volume"></i>
					</div>
					<div class="div">
						<h5>전화번호</h5>
						<input type="text" id="mem_phone" name="mem_phone" class="input"/>
					</div>
				</div>

				<div class="input-div pass">
					<div class="i">
						<i class="fas fa-envelope"></i>
					</div>
					<div class="div">
						<h5>이메일</h5>
						<input type="text" id="mem_email" name="mem_email" class="input"/>
					</div>
				</div>

				<div class="input-div pass">
					<div class="i">
						<i class="fas fa-address-card"></i>
					</div>
					<div class="div">
						<h5>주소</h5>
						<input type="text" id="mem_addr" name="mem_addr" class="input"/>
					</div>
				</div>
				<input id="submit" type="button" class="btn" value="회원가입">
			</form>
		</div>
	</div>
	<script>
      const inputs = document.querySelectorAll(".input");
  
        function addClass() {
          let parent = this.parentNode.parentNode;
          parent.classList.add("focus");
        }
        
        function removeClass() {
          let parent = this.parentNode.parentNode;
          if (this.value == "") {
            parent.classList.remove("focus");
          }
        }
        
        inputs.forEach((input) => {
          input.addEventListener("focus", addClass);
          input.addEventListener("blur", removeClass);
        });
        </script>



</body>
</html>