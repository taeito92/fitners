<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="WEB-INF/views/includes/auctionheader.jsp" %>
<!-- ======================================================== -->


<!-- Content Wrapper. Contains page content -->
<section class="content">
    <div class="content-wrapper col-10" style="margin: auto; margin-top: 15px; min-height: unset">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-9">
                        <h1>역경매 입찰</h1>
                        <div style="font-size: 11pt"><b>~~~의 역경매</b> <span style="font-size: 8pt">글작성시간 : ~~~</span>
                        </div>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="card card-solid">
                <div class="card-body">
                    <div class="row">
                        <div class="col-11 col-sm-6">
                            <!-- About Me Box -->
                            <div class="card card-gray">
                                <div class="card-header">
                                    <h3 class="card-title">Information</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <strong><i class="fas fa-user mr-1"></i> 성별(나이)</strong>

                                    <p class="text-muted">
                                        남자(26세)
                                    </p>

                                    <hr>

                                    <strong><i class="fas fa-map-marker-alt mr-1"></i> 위치</strong>

                                    <p class="text-muted">서울시 종로구 관철동</p>

                                    <hr>

                                    <strong><i class="fas fa-pencil-alt mr-1"></i>키/몸무게/질병</strong>

                                    <p class="text-muted">
                                        <span class="tag tag-danger">172cm</span>
                                        <span class="tag tag-success">70kg</span>
                                        <span class="tag tag-info"></span>
                                    </p>

                                    <hr>

                                    <strong><i class="far fa-file-alt mr-1"></i> 희망 횟수</strong>

                                    <p class="text-muted">총 20회</p>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <div class="col-12 col-sm-6">
                            <h4 class="my-3 text-center"><b>운동초보자 PT 선생님 모집</b></h4>
                            <hr>
                            <!-- Table row -->
                            <table class="table-striped col-8 text-center" style="margin: auto; flex: auto">
                                <thead>
                                <tr>
                                    <th>Module</th>
                                    <th>Detail</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>식단관리</td>
                                    <td>탄단지 완벽식단</td>
                                </tr>
                                <tr>
                                    <td>운동 종목</td>
                                    <td>상체조지기</td>
                                </tr>
                                <tr>
                                    <td>재활 종목</td>
                                    <td>족저근막염</td>
                                </tr>
                                </tbody>
                            </table>
                            <hr>

                            <div class="bg-gray py-2 px-3 mt-4">
                                <h6 class="mt-0">
                                    <small>회원 희망 금액(1회 기준) :</small>
                                </h6>
                                <h6 class="mb-0">
                                    <i class="fas fa-won-sign fa-lg mr-2"></i><span style="font-size: 22pt">20000</span>
                                    원
                                </h6>
                            </div>

                            <div class="mt-4">
                                <div class="btn btn-primary btn-lg btn-flat toListBtn">
                                    <i class="fas fa-file-alt fa-lg mr-2"></i>
                                    목록으로
                                </div>

                                <div class="btn btn-default btn-lg btn-flat toModalBtn">
                                    <i class="fas fa-check fa-lg mr-2"></i>
                                    입찰하기
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->

        </section>
        <!-- /.content -->
    </div>
</section>


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
                        <p class="text-muted text-center">#재활-허리 #재활-목 #PT-상체 #PT-하체 #식단-체중감소 #혈당조절 #서울시 성북구 돈암동 #10회
                            #여자트레이너</p>

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


<!-- ======================================================== -->
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
