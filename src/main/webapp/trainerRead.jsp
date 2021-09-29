<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="WEB-INF/views/includes/auctionheader.jsp" %>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper col-10" style="margin: auto; margin-top: 15px">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>입찰하기</h1>
                </div>
            </div>
        </div><!-- /.container-fluid -->
        <hr>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="card col-10" style="margin: auto">
            <div class="card-body row">
                <div class="col-5 text-center d-flex align-items-center justify-content-center">
                    <div class="readimg">
                        <img src="/resources/images/avengers.jpg"
                             style="display: block; margin: 0 auto; width:100%; height:100%;">
                    </div>
                </div>
                <div class="col-7">
                    <div class="form-group">
                        <label for="inputTitle">제목</label>
                        <input type="text" id="inputTitle" class="form-control"
                               value="돈암동 PT쌤 찾습니다!" readonly/>
                    </div>
                    <div class="form-group">
                        <label for="inputId">회원 아이디</label>
                        <input type="text" id="inputId" class="form-control"
                               value="gpfckd8894" readonly/>
                    </div>
                    <div class="form-group">
                        <label for="inputMoney">금액</label>
                        <input type="text" id="inputMoney" class="form-control"
                               value="총 10회/ 회당 :30.000원" readonly/>
                    </div>
                    <div class="form-group">
                        <label for="inputMessage">조건</label>
                        <input type="text" id="inputMessage" class="form-control"
                               value="#재활-허리 #재활-목 #PT-상체 #PT-하체 #식단-체중감소 #혈당조절 #서울시 성북구 돈암동 #10회 #여자트레이너" readonly/>
                    </div>
                    <div>
                        <button type="button" class="btn btn-primary toListBtn">목록</button>
                        <button type="button" class="btn btn-info float-right toModalBtn">입찰</button>
                    </div>
                </div>


            </div>
        </div>

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<div class="modal fade" id="modal-sm">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">

            <div class="modal-body justify-content-between">

                <div class="card">
                    <div class="card-body box-profile">
                        <div class="text-center">
                            <img class="profile-user-img img-fluid img-circle"
                                 src="/resources/images/sample.jpg"
                                 alt="User profile picture">
                        </div>

                        <h3 class="profile-username text-center">gpfckd8944</h3>
                        <p class="text-muted text-center">#재활-허리 #재활-목 #PT-상체 #PT-하체 #식단-체중감소 #혈당조절 #서울시 성북구 돈암동 #10회 #여자트레이너</p>

                        <ul class="list-group list-group-unbordered mb-3">
                            <li class="list-group-item">
                                <b>회원 제시금액</b> <a class="float-right">30,000원</a>
                            </li>

                        </ul>
                        <p><b>제안금액</b> : <input type="text" class="trainerBiddingMoney"></p>
                    </div>
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">종료</button>
                <button type="button" class="btn btn-primary operBtn" style="float: right">입찰</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>


<%@include file="WEB-INF/views/includes/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>


<script>

    const trainerModal = $("#modal-sm")

    document.querySelector(".toModalBtn").addEventListener("click", function () {

        trainerModal.modal('show')
    }, false)

</script>


</body>
</html>
