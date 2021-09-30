<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="WEB-INF/views/includes/auctionheader.jsp" %>
<!-- Content Wrapper. Contains page content -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper col-10" style="margin: auto; margin-top: 15px">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-9">
                    <h1>역경매 입찰</h1>
                    <div style="font-size: 11pt"><b>~~~의 역경매</b> <span style="font-size: 8pt">글작성시간 : ~~~</span></div>
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
                    <div class="col-12 col-sm-6">
                        <!-- About Me Box -->
                        <div class="card card-info">
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

                                <strong><i class="far fa-file-alt mr-1"></i> Notes</strong>

                                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
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
                                <small>회원 제시 금액(1회 기준) :</small>
                            </h6>
                            <h6 class="mb-0">
                                <i class="fas fa-won-sign fa-lg mr-2"></i><span style="font-size: 22pt">20000</span> 원
                            </h6>
                        </div>

                        <div class="mt-4">
                            <div class="btn btn-primary btn-lg btn-flat">
                                <i class="fas fa-file-alt fa-lg mr-2"></i>
                                목록으로
                            </div>

                            <div class="btn btn-default btn-lg btn-flat">
                                <i class="fas fa-check fa-lg mr-2"></i>
                                입찰하기
                            </div>
                        </div>


                    </div>
                </div>
                <!---------------------------------------------------------------------------------->


                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.content -->
    </section>
    <!-- /.content-wrapper -->
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
