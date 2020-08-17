<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>C4U 너만의 기사</title>
    <link rel="stylesheet" href="../resources/css/semi_mypage.css">
    <link rel="stylesheet" href="../resources/css/semi_Login.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script>
        $('.message a').click(function(){
      $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
        });
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
<!--  gd-->

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
    <h3 style="font-size: 30px; margin: 30px 20px 0 0; z-index: 3;">로그인</h3>
    <div class="login-page">
        <div class="form">
          <form class="login-form">
            <input type="text" placeholder="username"/>
            <input type="password" placeholder="password"/>
            <button type="button">login</button>
            <p class="message">Not registered? <a href="#">Create an account</a></p>
            <p class="message">Are you Forget? <a href="#">Find ID/PWD</a></p>
          </form>
        </div>
      </div>
<div id="main-footer">
    <div class="main-footer-wrap">
        <div><img src="../resources/images/semiLogosize.png"/></div>
        <div>
            <ul>
                <li>고객센터 1544 – 1004 (평일 9:00 ~ 12:30, 13:30 ~ 18:00)  help@c4you.com</li>
                <li><span>㈜합격하조</span>   <span>대표이사 유승제</span>   <span>사업자 등록번호 1004-1004</span> </li>
                <li>서울시 강남구 역삼대로</li>
            </ul>
        </div>
    </div>
</div>

       
</body>
</html>