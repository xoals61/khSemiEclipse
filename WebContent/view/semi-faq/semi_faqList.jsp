<%@page import="com.kh.semi.faq.model.vo.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
	
<% 
	ArrayList<Faq> list = (ArrayList<Faq>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>C4U 너만의 기사 FAQ</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/c9096b9061.js" crossorigin="anonymous"></script>
<script src="resources/js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="resources/css/semi_FAQ.css" />
<link rel="stylesheet" href="resources/css/semi_menu_frame.css">

</head>
<body>
<%@ include file="mypage/header.jsp"%>
 
    <div id="main-box1"></div>

    <div class="section">
        <h2 id="section-title">자주 묻는 질문</h2>
        <div id="btn-panel">
            <p class="allon">
                <a class="btn-panel-a" href="#">전체</a>
            </p>
            <p class="allon">
                <button type="button" onclick="회원정보">회원정보</button>
            </p>
            <p class="allon">
                <a class="btn-panel-a" href="#">자료 이용</a>
            </p>
            <p class="allon">
                <a class="btn-panel-a" href="#">결제</a>
            </p>
            <p class="allon">
                <a class="btn-panel-a" href="#">사이트 이용</a>
            </p>
            <p class="allon">
                <a class="btn-panel-a" href="#">장애관련</a>
            </p>
            <p class="allon">
                <a class="btn-panel-a" href="#">기타</a>
            </p>
        </div>
     
			
			 
			
        <section>
            <table class="tb0">
                <th class="th1 Nanum1">번호</th>
                <th class="th1 Nanum1">분류</th>
                <th class="th2 Nanum1">제목</th>
            </table>
            <div class="panel-question active">
            <% for(Faq f : list){ %>
                <div class="panel-heading">
                    <table class="tb1">    
                        <td class="th3 num Nanum1"><%= f.getFno() %></td>
                        <td class="th3 tag Nanum1"><%= f.getFcategory() %></td>
                        <td class="th4"><%= f.getFtitle() %></td>
                        <td class="tagtda fas fa-angle-double-down"></td>
               
                <div class="panel-body" id="thisone">
                    <p><%= f.getFcontents() %></p>
   <script>
        $(function(){
            $('.panel-body').slideUp();
		
            $('.panel-heading').click(function(){
               // $(this).next('p').slideDown();
				
                $(this).next('p').slideToggle(1000,function(){
                    //alert('슬라이드 토글 확인');
                  
                });
            });
        });
    </script>
                    </table>
                </div>
            <% } %>
           
            </div>
	     </section>
    
         <a href="./semi_menu_qna.html" class="page-guide2 white">1:1 문의</a>
         <a href=<%= request.getContextPath() %>./semi_faqInsertForm.jsp id= "admin-write" class="page-guide2 white right">글쓰기</a>
       
        	<div class="pagingArea" align="center">
			<button onclick="location.href='<%= request.getContextPath() %>/fList.fa?currentPage=1'"><<</button>
			<%  if(currentPage <= 1){  %>
			<button disabled><</button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/fList.fa?currentPage=<%=currentPage - 1 %>'"><</button>
			<%  } %>
			
			<% for(int p = startPage; p <= endPage; p++){
					if(p == currentPage){	
			%>
				<button disabled><%= p %></button>
			<%      }else{ %>
				<button onclick="location.href='<%= request.getContextPath() %>/fList.fa?currentPage=<%= p %>'"><%= p %></button>
			<%      } %>
			<% } %>
				
			<%  if(currentPage >= maxPage){  %>
			<button disabled>></button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/fList.fa?currentPage=<%=currentPage + 1 %>'">></button>
			<%  } %>
			<button onclick="location.href='<%= request.getContextPath() %>/fList.fa?currentPage=<%= maxPage %>'">>></button>
			
        
	</div>
     <script>
                 function hiddenatag() {
                if(getElementById() == "admin"){
                    $("#admin-write").show();
                }else{
                    $("#admin-write").hide();
                }
            }
   			</script>
              
           
    
    

   </div>
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

   <%@ include file="mypage/footer.jsp"%>


</body>

</html>








 