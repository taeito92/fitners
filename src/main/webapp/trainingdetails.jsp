<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/includes/selfmanagementheader.jsp" %>

<!-- Table row -->
<div class="row" style="margin-top: 20px">
    <div class="col-10 table-responsive" style="margin: auto">
        <label for="trainermanagement">Trainer Managemnet(날짜를 기준으로 최근에 진행된 10개만 출력)</label>
        <table class="table table-striped" id="trainermanagement">
            <thead>
            <tr>
                <th>회차</th>
                <th>트레이너 이름(아이디)</th>
                <th>선택 관리유형</th>
                <th>관리유형 내용</th>
                <th>날짜</th>
            </tr>
            </thead>
            <tbody>
            <tr id="tr1">
                <td>3</td>
                <td>곽용태</td>
                <td>근성장</td>
                <td>하체</td>
                <td>2021/01/09</td>
            </tr>
            <tr>
                <td>2</td>
                <td>곽용태</td>
                <td>근성장</td>
                <td>상체</td>
                <td>2021/01/02</td>
            </tr>
            <tr>
                <td>1</td>
                <td>곽용태</td>
                <td>근성장</td>
                <td>등</td>
                <td>2020/12/29</td>
            </tr>

            </tbody>
        </table>

    </div>
    <!-- /.col -->
</div>
<!-- /.row -->

<hr>

<!-- large modal -->
<div class="modal fade" id="modal-lg">
    <div class="modal-dialog modal-lg" style="width:auto;display:table">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">디테일</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <table class="table table-striped" id="traindetail">
                <thead>
                <tr>
                    <th>관리유형</th>
                    <th>오늘한 운동</th>
                    <th>평가</th>
                    <th>이번 회차</th>
                    <th>이전 회차</th>

                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>등</td>
                    <td>턱걸이</td>
                    <td>향상중</td>
                    <td>100개</td>
                    <td>20개</td>

                </tr>

                </tbody>
            </table>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->








<%@include file="/WEB-INF/views/includes/footer.jsp"%>

</body>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

<script>
    const detailmodal = $("#modal-lg")

    document.querySelector("#tr1").addEventListener("click", (e) => {



            detailmodal.modal('show')



            detailmodal.modal('show')

    },false)

    function moveRead(bno) {

        actionForm.setAttribute("action","/trainingRead.jsp")
        actionForm.innerHTML += `<input type='hidden' name='bno' value='\${bno}'>`
        actionForm.submit();
    }



</script>
</html>
