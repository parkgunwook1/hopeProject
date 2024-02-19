<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/style/css/yunbi.css/yProgramDonate.css">
<link rel="stylesheet" href="../resources/style/css/common.css">
<script src="../resources/js/yunbi.js/yProgramDonate.js"></script>
<script src="../resources/js/common/header.js"></script>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
    <section>
        <article class="h_boardTitle">
            <h1>자원봉사</h1>
            <p>자원봉사 함께 나아가는 더 나은 세상.</p>
        </article>
    </section>
<section>
                <div class="y_program_list_filter">
                    <form class="y_program_list_area">
                        <p>활동 유형</p>
                        <div class="y_program_filter">
                            <input type="radio" name="active_type" id="r" value="정기" class="y_checkbox"></input>
                            <label for="r" class="y_checkbox1">정기활동</label>
                            <input type="radio" name="active_type" id="t" value="일시" class="y_checkbox"></input>
                            <label for="t" class="y_checkbox1">일시활동</label>
                        </div>

                        <p>활동 지역</p>
                        <div class="y_program_filter">
                            <input type="checkbox" name="active_location" id="s" value="서울&경기"  class="y_checkbox"></input>
                            <label for="s" class="y_checkbox1">서울&경기</label>
                            <input type="checkbox" name="active_location" id="g" value="강원"  class="y_checkbox"></input>
                            <label for="g" class="y_checkbox1">강원</label>
                            <input type="checkbox" name="active_location" id="c" value="충청"  class="y_checkbox"></input>
                            <label for="c" class="y_checkbox1">충청</label>
                            <input type="checkbox" name="active_location" id="j" value="전라"  class="y_checkbox"></input>
                            <label for="j" class="y_checkbox1">전라</label>
                            <input type="checkbox"  name="active_location" id="k" value="경상"  class="y_checkbox"></input>
                            <label for="k" class="y_checkbox1">경상</label>
                        </div>

                        <p>활동 시간대</p>
                        <div class="y_program_filter">
                            <input type="checkbox" name="active_time" id="a" value="오전" class="y_checkbox" ></input>
                            <label for="a" class="y_checkbox1">오전</label>
                            <input type="checkbox" name="active_time" id="p" value="오후" class="y_checkbox" ></input>
                            <label for="p" class="y_checkbox1">오후</label>
                        </div>

                        <p>활동 요일</p>
                        <div class="y_program_filter">
                            <input type="checkbox" name="active_days" id="w1" value="평일"  class="y_checkbox" ></input>
                            <label for="w1" class="y_checkbox1">평일</label>
                            <input type="checkbox" name="active_days" id="w2" value="주말" class="y_checkbox" ></input>
                            <label for="w2" class="y_checkbox1">주말</label>
                        </div>

                        <input type="text" class="y_program_list_search" placeholder="키워드 검색"></input>
                        <button class="y_program_list_btn" onclick="filter()">조회</button>
			            <button class="y_program_list_btn"><a href="${contextPath }/program/insert">글쓰기</a></button>
                        </form>

                        </div>

                        <h1 class="y_h1">봉사하기</h1>
                        <div class="y_activeOnly_area">
                            <p>진행중인 활동만</p>
                            <img src="../../resources/style/img/yunbi/check-circle.svg"  onclick="toggleIng();" class="y_image_activityOnly no"/>
                        </div>
                        <table class="y_list_table">
                            <thead>
                                <tr>
                                    <td>제목</td>
                                    <td>활동유형</td>
                                    <td>활동기간</td>
                                    <td>활동요일</td>
                                    <td>활동시간대</td>
                                    <td>활동지역</td>
                                    <td>진행여부</td>
                                </tr>
                            </thead>
                            <tbody>
               
                            <c:forEach var="p" items="${list}" >
                                <tr onclick="move(${p.programNo})">
                                    <td>${p.programNo} </td>
                                    <td>${p.programName } </td>
                                    <td>${p.programActivityStartDate } ~ ${p.programActivityEndDate }</td>
                                    <td>매주 ${p.activityDays}</td>
                                    <td>${p.activityTime } </td>
                                    <td>${p.activityLocation }</td>
                                    <td>활동중</td>
                                </tr>
                             </c:forEach>
                            </tbody>
                        </table>
				<script>
					function move(programNo){
						location.href="${contextPath}/program/detail/"+programNo
					}
				</script>
            </section>
     <jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>