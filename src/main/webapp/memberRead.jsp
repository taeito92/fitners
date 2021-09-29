<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="WEB-INF/views/includes/auctionheader.jsp" %>
<body>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="/resources/plugins/fontawesome-free/css/all.min.css">
<!-- icheck bootstrap -->
<link rel="stylesheet" href="/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper col-10" style="margin: auto; margin-top: 15px; min-height: auto">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>낙찰하기</h1>
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
                        <img src="/resources/images/sample.jpg"
                             style="display: block; margin: 0 auto; width:100%; height:100%;">
                    </div>
                </div>
                <div class="col-7">
                    <div class="form-group">
                        <label for="inputTitle">제목</label>
                        <input type="text" id="inputTitle" class="form-control" value="PT 초보 입니다." readonly/>
                    </div>
                    <div class="form-group">
                        <label for="inputId">회원 아이디</label>
                        <input type="email" id="inputId" class="form-control" value="yong025" readonly/>
                    </div>
                    <div class="form-group">
                        <label for="inputMoney">금액</label>
                        <input type="text" id="inputMoney" class="form-control" value="총: 20회 / 회당: 3만원" readonly/>
                    </div>
                    <div class="form-group">
                        <label for="inputMessage">조건</label>
                        <input type="text" id="inputMessage" class="form-control" value="#서울 #관철동 #20회 #남자트레이너"/>
                    </div>
                    <div>
                        <button type="button" class="btn btn-primary toListBtn" style="float:right;">목록으로</button>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!---------------------------------------------------------------------------------->


<div class="col-10" style="margin: auto; margin-top: 30px;">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">입찰 목록</h3>

            <div class="card-tools">
                <div class="input-group input-group-sm">
                    <input type="text" class="form-control" placeholder="Search">
                    <div class="input-group-append">
                        <div class="btn btn-primary">
                            <i class="fas fa-search"></i>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.card-tools -->
        </div>
        <!-- /.card-header -->
        <div class="card-body p-0">
            <div class="mailbox-controls">
                <div class="float-right">
                    1-10/100
                    <div class="btn-group">
                        <button type="button" class="btn btn-default btn-sm">
                            <i class="fas fa-chevron-left"></i>
                        </button>
                        <button type="button" class="btn btn-default btn-sm">
                            <i class="fas fa-chevron-right"></i>
                        </button>
                    </div>
                    <!-- /.btn-group -->
                </div>
                <!-- /.float-right -->
            </div>
            <div class="table-responsive mailbox-messages">
                <table class="table table-hover table-striped">
                    <tbody class="addAuctionBtn">
                    <tr>
                        <td class="mailbox-name">Trainer1</td>
                        <td class="mailbox-subject"><b>#서울#정릉#상체#하체</b> - 최고의 서비스와 자극을 드립니다.
                        </td>
                        <td class="mailbox-attachment"><i class="fas fa-paperclip"></i></td>
                        <td class="mailbox-date">28 mins ago</td>
                        <td>
                            <button type="button" class="btn btn-primary operBtn" style="float: right">낙찰</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="mailbox-name">Trainer2</td>
                        <td class="mailbox-subject"><b>#서울#정릉#상체#하체</b> - 최고의 서비스와 자극을 드립니다.
                        </td>
                        <td class="mailbox-attachment"><i class="fas fa-paperclip"></i></td>
                        <td class="mailbox-date">11 hours ago</td>
                        <td>
                            <button type="button" class="btn btn-primary operBtn" style="float: right">낙찰</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="mailbox-name">Trainer3</td>
                        <td class="mailbox-subject"><b>#서울#정릉#상체#하체</b> - 최고의 서비스와 자극을 드립니다.
                        </td>
                        <td class="mailbox-attachment"></td>
                        <td class="mailbox-date">15 hours ago</td>
                        <td>
                            <button type="button" class="btn btn-primary operBtn" style="float: right">낙찰</button>
                        </td>
                    </tr>
                    <tr>

                        <td class="mailbox-name">Trainer4</td>
                        <td class="mailbox-subject"><b>#서울#정릉#상체#하체</b>- 최고의 서비스와 자극을 드립니다.
                        </td>
                        <td class="mailbox-attachment"><i class="fas fa-paperclip"></i></td>
                        <td class="mailbox-date">Yesterday</td>
                        <td>
                            <button type="button" class="btn btn-primary operBtn" style="float: right">낙찰</button>
                        </td>
                    </tr>
                    <tr>

                        <td class="mailbox-name">Trainer1</td>
                        <td class="mailbox-subject"><b>#서울#정릉#상체#하체</b> - 최고의 서비스와 자극을 드립니다.
                        </td>
                        <td class="mailbox-attachment"><i class="fas fa-paperclip"></i></td>
                        <td class="mailbox-date">2 days ago</td>
                        <td>
                            <button type="button" class="btn btn-primary operBtn" style="float: right">낙찰</button>
                        </td>
                    </tr>
                    <tr>

                        <td class="mailbox-name">Trainer5</td>
                        <td class="mailbox-subject"><b>#서울#정릉#상체#하체</b> - 최고의 서비스와 자극을 드립니다.
                        </td>
                        <td class="mailbox-attachment"><i class="fas fa-paperclip"></i></td>
                        <td class="mailbox-date">2 days ago</td>
                        <td>
                            <button type="button" class="btn btn-primary operBtn" style="float: right">낙찰</button>
                        </td>
                    </tr>
                    <tr>

                        <td class="mailbox-name">Trainer6</td>
                        <td class="mailbox-subject"><b>#식습관 관리 # 재활전문</b>- 최고의 서비스와 자극을 드립니다.
                        </td>
                        <td class="mailbox-attachment"></td>
                        <td class="mailbox-date">2 days ago</td>
                        <td>
                            <button type="button" class="btn btn-primary operBtn" style="float: right">낙찰</button>
                        </td>
                    </tr>
                    <tr>

                        <td class="mailbox-name">Trainer7</td>
                        <td class="mailbox-subject"><b>#경기인천 #수도권 #가슴 전문 #하체</b> - 최고의 자극을 드립니다.
                        </td>
                        <td class="mailbox-attachment"></td>
                        <td class="mailbox-date">2 days ago</td>
                        <td>
                            <button type="button" class="btn btn-primary operBtn" style="float: right">낙찰</button>
                        </td>
                    </tr>
                    <tr>

                        <td class="mailbox-name">Trainer8</td>
                        <td class="mailbox-subject"><b>#서울 #종로 관철동 #상체 #하체</b> - 최고의 서비스
                        </td>
                        <td class="mailbox-attachment"></td>
                        <td class="mailbox-date">2 days ago</td>
                        <td>
                            <button type="button" class="btn btn-primary operBtn" style="float: right">낙찰</button>
                        </td>
                    </tr>
                    <tr>

                        <td class="mailbox-name">Trainer9</td>
                        <td class="mailbox-subject"><b>#서울 #정릉 #상체 #하체</b> - 경력 多
                        </td>
                        <td class="mailbox-attachment"><i class="fas fa-paperclip"></i></td>
                        <td class="mailbox-date">4 days ago</td>
                        <td>
                            <button type="button" class="btn btn-primary operBtn" style="float: right">낙찰</button>
                        </td>
                    </tr>

                    </tbody>
                </table>
                <!-- /.table -->
            </div>
            <!-- /.mail-box-messages -->
        </div>
        <!-- /.card-body -->
        <div class="card-footer p-0">
            <div class="mailbox-controls">
                <!-- Check all button -->
                <div class="float-right">
                    1-10/200
                    <div class="btn-group">
                        <button type="button" class="btn btn-default btn-sm">
                            <i class="fas fa-chevron-left"></i>
                        </button>
                        <button type="button" class="btn btn-default btn-sm">
                            <i class="fas fa-chevron-right"></i>
                        </button>
                    </div>
                    <!-- /.btn-group -->
                </div>
                <!-- /.float-right -->
            </div>
        </div>
    </div>
    <!-- /.card -->
</div>
<!-- /.col -->
</div>
<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!----------------------------------------------------------------------------------------------------------------->
<%-- modal start --%>
<div class="modal fade" id="modal-sm">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">

            <div class="modal-body justify-content-between">

                <div class="card">
                    <div class="card-body box-profile">
                        <div class="text-center">
                            <img class="profile-user-img img-fluid img-circle"
                                 src="/resources/images/hcs.jfif"
                                 alt="User profile picture">
                        </div>

                        <h3 class="profile-username text-center">황철순</h3>
                        <p class="text-muted text-center">전문 로이더 및 댄스강연</p>

                        <ul class="list-group list-group-unbordered mb-3">
                            <li class="list-group-item">
                                <b>제시 금액</b> <a class="float-right">24,000원</a>
                            </li>
                            <li class="list-group-item">
                                <b>매칭 횟수</b> <a class="float-right">34회</a>
                            </li>
                            <li class="list-group-item">
                                <b>좋아요</b> <a class="float-right">13,287</a>
                            </li>
                        </ul>

                        <h3 class="text-center">약력</h3>
                        <p class="text-center">2018 서울 로이더대회 우승</p>
                        <p class="text-center">2019 서울 로이더대회 준우승</p>
                        <p class="text-center">2021 서울 로이더대회 3등</p>

                    </div>
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal" style="align-items: center">종료
                </button>
                <%--                <button type="button" class="btn btn-primary operBtn" style="float: right">낙찰</button>--%>

            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal exd-->

<%-- modal start --%>
<div class="modal fade" id="modal-oper">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title">낙찰하시겠습니까?</h4>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-primary">낙찰</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal exd-->


<%@include file="WEB-INF/views/includes/footer.jsp" %>

<!-- jQuery -->
<script src="/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js"></script>
<!-- Page specific script -->

<script>
    const modalDiv = $('#modal-sm')
    document.querySelector('.addAuctionBtn').addEventListener("click", function () {

        modalDiv.modal('show')

    }, false)

    const operModal = $('#modal-oper')

    document.querySelector('.operBtn').addEventListener("click", (e) => {
        e.stopPropagation()
        e.preventDefault()

        operModal.modal('show')
    })



</script>

</body>
</html>
