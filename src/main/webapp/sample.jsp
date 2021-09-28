<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- jsp에 jstl 연결하기 위해서 추가 -->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | Contacts</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../resources/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../resources/dist/css/adminlte.min.css">
</head>
<body>

<!-- matching box -->
<div class="card card-solid">
    <div class="card-body pb-0">
        <div class="row">
            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
                <div class="card bg-light d-flex flex-fill">
                    <div class="card-header text-muted border-bottom-0">
                        역경매 정보 디테일
                    </div>
                    <div class="card-body pt-0">
                        <div class="row">
                            <div class="col-7">
                                <h2 class="lead"><b>곽철용</b></h2>
                                <p class="text-muted text-sm"><b>내가 원하는 것 </b> 요고 조고 지거 </p>
                                <ul class="ml-4 mb-0 fa-ul text-muted">
                                    <li class="small"><span class="fa-li"><i class="fas fa-lg fa-building"></i></span>
                                        장소 : 서울 종로구 관철동
                                    </li>
                                    <li class="small"><span class="fa-li"></span>
                                        <button class="btn btn-sm btn-default">diet</button>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-5 text-center">
                                <img src="/resources/img/kuki.jpg" alt="user-avatar" class="img-circle img-fluid">
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="text-right">
                            <a href="#" class="btn btn-sm bg-teal">
                                <i class="fas fa-comments"></i>
                            </a>
                            <a href="#" class="btn btn-sm btn-primary bidding">
                                <i class="fas fa-user"></i> 입찰 참여
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- /.matchingbox -->


<!-- large modal -->
<div class="modal fade" id="modal-large">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-body">
                <img id="targetImage">
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.large modal -->

<!-- footer -->

<!-- jQuery -->
<script src="../resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../resources/dist/js/adminlte.min.js"></script>
<script src="../resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script> <!-- axios를 사용하기 위해서 추가 -->

<script>

    const modalDetail = $("#modal-large")

    document.querySelector('.bidding').addEventListener("click", (e) => {
        console.log("success")
        console.log(modalDetail)
        modalDetail.modal('show')
    }, false)

</script>


</body>
</html>
