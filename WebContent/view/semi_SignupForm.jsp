<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>C4U 너만의 기사</title>
    <link rel="stylesheet" href="../resources/css/semi_menu_frame.css">
    <link rel="stylesheet" href="../resources/css/semi_Signup.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
        function validate(){
            var id = document.getElementById('id');
            var pass = document.getElementById('password');
            var pass1 = document.getElementById('password2');
            var name = document.getElementById('name');
            var email = document.getElementById('email');

            // 이메일 검사
            // 4글자 이상이 나오고
            // @가 나오고 1글자 이상 주소 . 글자1~3
            if(!chk(/^[\w]{4,}@[\w]+(\.[\w]+){1,3}$/,email,"이메일 형식에 어긋납니다.")){
                return false;
            }

            // 아이디 검사
            // 첫글자는 반드시 영문 소문자, 총 4~12자로 이루어지고
            // 숫자가 반드시 하나 이상 포함되어야 한다.
            // 영문 소문자와 숫자로 이루어져야 한다.
            if(!chk(/^[a-z][a-z\d]{4,11}$/,id,"아이디의 첫글자는 영문 소문자, 4~12자 입력할 것!")){
                return false;
            }
            if(!chk(/[0-9]/,id,"아이디에 숫자 하나 이상 포함!")){
                return false;
            }

            // 비밀번호 확인 검사
            // 비밀번호와 비밀번호 확인 값이 일치
            if(pass.value != pass1.value){
                alert('비밀번호 확인!');
                return false;
            }

            // 이름 검사
            // 2글자 이상, 한글만
            if(!chk(/^[가-힣]{2,}$/,name,"이름은 한글로 2글자 이상을 넣으세요!")){
                return false;
            }

            return true;
        }
        function chk(re, ele, msg){
            if(re.test(ele.value)) {
           return true;
       }else{
       alert(msg);
       
      // return false;
       }
        }




    </script>




</head>

<body>
    <div id="main-header">
        <div class="main-header-logo"><a href="#"><img src="../resources/images/semiLogosize.png" /></a></div>
        <ul id='BeforeLogin' class="main-header-login">
            <li><a href="#">로그인</a></li>
            <li><span>|</span><a href="/#">회원가입</a></li>
            <li><span>|</span><a href="/#">고객센터</a></li>
        </ul>

        <ul class="main-header-navi">
            <li><a href="#">기사</a></li>
            <li><a href="#">산업기사</a></li>
            <li><a href="#">기능사</a></li>
        </ul>

    </div>

    <div id="main-box1"></div>


    <div class="left-menu">
        <ul id="left-menu-share" class="left-menu1">

            <li>
                <dl>
                    <dt>
                        <div class="left-menu-name">게시판</div>
                    </dt>
                </dl>
            </li>
            <div class="menu-line"></div>
            <li>
                <dl>
                    <dt>
                        <div>커뮤니티</div>
                    </dt>
                    <dd><a href="#">- 기사</a></dd>
                    <dd><a href="#">- 산업기사</a></dd>
                    <dd><a href="#">- 기능사</a></dd>
                </dl>
            </li>
            <div class="menu-line"></div>
            <li>
                <dl>
                    <dt>
                        <div>장터</div>
                    </dt>
                    <dd><a href="#">- 삽니다</a></dd>
                    <dd><a href="#">- 팝니다</a></dd>
                </dl>
            </li>
            <div class="menu-line"></div>
            <li>
                <dl>
                    <dt>
                        <div>고객센터</div>
                    </dt>
                    <dd><a href="#">- 자주 묻는 질문</a></dd>
                    <dd><a href="#">- 1:1문의</a></dd>
                    <dd><a href="#">- 신고</a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div id="signupbanner">
        <table>
            <tr>
                <td>1. 회원 약관</td>
                <td style="background: rgba(12, 93, 199, 0.603);
                color: rgb(0, 0, 0);">2. 회원 가입</td>
                <td>3. 회원 가입 결과</td>
            </tr>
        </table>



    </div>

    <div id="signup">
        <form id="signupform" method="POST" onsubmit="return validate()" action="${pageContext.request.contextPath}/signup.do">
            <h1>회원가입</h1><br>
            <ul>
                <li><label>아이디 : </label><input type="text" name="id" maxlength="20" id="id" required>&nbsp;<button
                        type="button">중복확인</button></li>
                <li><label>비밀번호 : </label><input type="password" name="password" maxlength="20" id="password" required></li>
                <li><label>비밀번호 확인 : </label><input type="password" id="password2" name="password2" placeholder="비밀번호를 다시 입력해주세요."
                        maxlength="20"></li>
                <li><label>이름 : </label><input id="name" type="text" name="name" maxlength="4" required></li>
                <li><label>e-mail : </label><input id="email" type="email" name="email" maxlength="30" required></li>
                <li><label>주소 : </label><input id="address" type="text" name="address" maxlength="100" required></li>
            </ul>
            <br>
            <div id="btn">
            <input type="submit" value="완료">&nbsp;&nbsp;<input type="reset" value="취소">
            </div>
        </form>


    </div>














    <div id="main-footer">
        <div class="main-footer-wrap">
            <div><img src="../resources/images/semiLogosize.png" /></div>
            <div>
                <ul>
                    <li>고객센터 1544 – 1004 (평일 9:00 ~ 12:30, 13:30 ~ 18:00) help@c4you.com</li>
                    <li><span>㈜합격하조</span> <span>대표이사 유승제</span> <span>사업자 등록번호 1004-1004</span> </li>
                    <li>서울시 강남구 역삼대로</li>
                </ul>
            </div>
        </div>
    </div>






</body>

</html>