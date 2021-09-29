
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/includes/selfmanagementheader.jsp" %>

<!-- Table row -->
<div class="row" style="margin-top: 20px">
    <div class="col-10 table-responsive" style="margin: auto">
        <label for="trainermanagement">입찰 목록</label>
        <table class="table table-striped" id="trainermanagement">
            <thead>
            <tr>
                <th>경매번호</th>
                <th>경매 제목</th>
                <th>회원 이름(아이디)</th>
                <th>모듈</th>
                <th>본인이 제시한 금액</th>
                <th>남은 경매 시간</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>4</td>
                <td>제목</td>
                <td>taeito</td>
                <td>식단</td>
                <td>5000</td>
                <td>15분 남음</td>
            </tr>
            <tr>
                <td>3</td>
                <td>바디프로틸 사진찍고 싶어요</td>
                <td>pig356</td>
                <td>근력운동</td>
                <td>6000</td>
                <td>20분 남음</td>
            </tr>
            <tr>
                <td>2</td>
                <td>날씬해지고 싶어요</td>
                <td>pig444</td>
                <td>식단</td>
                <td>2000</td>
                <td>1시간 50분 남음</td>
            </tr>
            <tr>
                <td>1</td>
                <td>근육을 키우고 싶어요</td>
                <td>weight130</td>
                <td>근력운동</td>
                <td>2000</td>
                <td>15시간 남음</td>
            </tr>
            </tbody>
        </table>

    </div>
    <!-- /.col -->
</div>
<!-- /.row -->

<hr>








<%@include file="/WEB-INF/views/includes/footer.jsp"%>

</body>
</html>
