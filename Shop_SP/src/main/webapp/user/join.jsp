<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Shop</title>
   <jsp:include page="/layout/meta.jsp" /> <jsp:include page="/layout/link.jsp" />
</head>
<body>   
   
   <jsp:include page="/layout/header.jsp" />
   <div class="px-4 py-5 mt-5 text-center">
      <h1 class="display-5 fw-bold text-body-emphasis">회원 가입</h1>
   </div>
   
   
   <%
   String error = request.getParameter("error");
   
   %>
   
   <!-- 회원 가입 영역 -->
   <div class="container shop p-5 mb-5" >
      <form action="join_pro.jsp" name="joinForm" method="post" onsubmit="return joinChk();">
      
         <div class="input-group mb-3 row">
            <label class="input-group-text col-md-4" id="">아이디</label>
            <input type="text" class="form-control col-md-8" 
                  name="id" id="id placeholder="아이디" required>
         </div>
         
         <div class="input-group mb-3 row">
            <label class="input-group-text col-md-4" id="">비밀번호</label>
            <input type="password" class="form-control col-md-8" 
                  name="pw" id="pw" placeholder="비밀번호" required>
         </div>
         
         <div class="input-group mb-3 row">
            <label class="input-group-text col-md-4" id="">비밀번호 확인</label>
            <input type="password" class="form-control col-md-8" 
                  name="pw_confirm" id="pw_confirm" placeholder="비밀번호 확인" required>
         </div>
         
         <div class="input-group mb-3 row">
            <label class="input-group-text col-md-4" id="">이름</label>
            <input type="text" class="form-control col-md-8" 
                  name="name" id="name" placeholder="이름" required>
         </div>
         
         <div class="input-group mb-3 row">
            <div class="col-md-4 p-0">
               <label class="input-group-text" id="">성별</label>
            </div>
            <div class="col-md-8 d-flex align-items-center">
               <div class="radio-box d-flex">
                  <div class="radio-item mx-3">
                     <input type="radio" class="form-check-input" name="gender" value="여" id="gender-female"> 
                     <label for="gender-female">여자</label>
                  </div>
                  
                  <div class="radio-item mx-3">
                     <input type="radio" class="form-check-input " name="gender" value="남" id="gender-male"> 
                     <label for="gender-male">남자</label>
                  </div>
                  
               </div>
            </div>
         </div>
         
         
         <div class="input-group mb-3 row">
            <div class="col-md-4 p-0">
               <label class="input-group-text" id="">생일</label>
            </div>
            <div class="col-md-8 p-0">
               <div class="row d-flex justify-content-between w-100 m-0">
                  <div class="col-4 col-md-4 px-0">
                     <input type="text" class="form-control" name="year" placeholder="출생년도 " size="6" />
                  </div>
                  
                  <div class="col-4 col-md-4 pr-0">
                     <select name="month" class="h-100 form-select" >
                        <option value="01">1월</option>
                        <option value="02">2월</option>
                        <option value="03">3월</option>
                        <option value="04">4월</option>
                        <option value="05">5월</option>
                        <option value="06">6월</option>
                        <option value="07">7월</option>
                        <option value="08">8월</option>
                        <option value="09">9월</option>
                        <option value="10">10월</option>
                        <option value="11">11월</option>
                        <option value="12">12월</option>
                     </select>
                  </div>
                  
                  <div class="col-4 col-md-4 px-0">
                     <input type="text" class="form-control" name="day" placeholder="일자" size="4" />
                  </div>
               </div>
            </div>
         </div>
         
         <div class="input-group mb-3 row">
            <label class="input-group-text col-md-4" id="">이메일</label>
            
            <div class="row justify-content-between col-md-8 align-items-center p-0">
               <div class="col-sm-5 col-md-5 px-0">
                  <input type="text" class="form-control" 
                        name="email1" placeholder="이메일">
               </div>
               <div class="d-none d-sm-block col-sm-auto col-auto px-0 text-center">
                  @
               </div>
               <div class="col-sm-6 col-md-6 px-0">
                  <select name="email2" class="form-select">
                     <option value="naver.com">naver.com</option>
                     <option value="gmail.com">gmail.com</option>
                     <option value="kakao.com">kakao.com</option>
                  </select>
               </div>
            </div>
         </div>
         
         <div class="input-group mb-3 row">
            <label class="input-group-text col-md-4" id="">전화번호</label>
            <input type="text" class="form-control col-md-8" 
                  name="phone" id="phone" placeholder="전화번호">
         </div>
         
         <div class="input-group mb-3 row">
            <label class="input-group-text col-md-4" id="">주소</label>
            <input type="text" class="form-control col-md-8" 
                  name="address" placeholder="주소">
         </div>
         
         
         <div class="d-grid gap-2 mt-5 mb-5 d-md-flex justify-content-md-between">
            <a href="javascript: history.back()" class="btn btn-lg btn-secondary">취소</a>
            <input type="submit" class="btn btn-lg btn-primary" value="가입" />
         </div>   
      </form>
   </div>
   
   <script type="text/javascript">
   
   function joinChk() {
        // 아이디 유효성 검사
        const id = document.forms["joinForm"]["id"].value;
        if (!validateId(id)) {
          alert("아이디는 영문자 또는 한글로 시작해야 합니다.");
          return false;
        }

        // 비밀번호 유효성 검사
        const password = document.forms["joinForm"]["pw"].value;
        if (!validatePassword(password)) {
          alert("비밀번호는 영문자, 숫자, 특수문자를 포함하여 6자 이상이어야 합니다.");
          return false;
        }

        // 비밀번호 확인 유효성 검사
        const passwordConfirm = document.forms["joinForm"]["pw_confirm"].value;
        if (!validatePasswordConfirm(password, passwordConfirm)) {
          alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
          return false;
        }

        // 이름 유효성 검사
        const name = document.forms["joinForm"]["name"].value;
        if (!validateName(name)) {
          alert("이름은 한글로만 입력해야 합니다.");
          return false;
        }

        // 추가적인 필드에 대한 유효성 검사 (전화번호, 이메일, 주소 등)

        // 모든 유효성 검사 통과 시 true 반환
        return true;
      }
   
   

   // 아이디 유효성 검사 함수
   function validateId(id) {
     const idRegex = /^[a-zA-Z가-힣]/; // 영문자 또는 한글로 시작하는 정규표현식
     return idRegex.test(id);
   }
   
   // 비밀번호 유효성 검사 함수
   function validatePassword(password) {
     const passwordRegex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$/;
     return passwordRegex.test(password);
   }

   // 비밀번호 확인 유효성 검사 함수
   function validatePasswordConfirm(password, passwordConfirm) {
     return password === passwordConfirm;
   }

   // 이름 유효성 검사 함수
   function validateName(name) {
     const nameRegex = /^[가-힣]+$/;
     return nameRegex.test(name);
   }


   
   
   </script>
   
   
   
   
   <jsp:include page="/layout/footer.jsp" />
   <jsp:include page="/layout/script.jsp" />
</body>
</html>








