
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="WEB-INF/views/includes/auctionheader.jsp" %>

<!-- Site wrapper -->
<div class="wrapper col-10" style="margin: auto; margin-top: 15px">

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" style="margin: auto">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>경매목록</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">입찰중</a></li>
                            <li class="breadcrumb-item active">경매</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="card card-solid">
                <div class="card-body pb-0">
                    <div class="row">
                        <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
                            <div class="card bg-light d-flex flex-fill">
                                <div class="card-header text-muted border-bottom-0">
                                    경매번호 : 12번
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>서울</b></h2>
                                            <p class="text-muted text-sm"><b>성북구: </b> 오후  / 10회권 </p>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>재활-허리</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>재활-목</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-상체</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-하체</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tags"></i></span>식단-체중감소, 혈당조절</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tags"></i></span>회당 30,000원</li>
                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="resources/images/illugym.png" alt="user-avatar" class="img-circle img-fluid ">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <a href="#" class="btn btn-sm bg-teal">
                                            <i class="fas fa-comments"></i> 현재 입찰자수 : 14
                                        </a>
                                        <a href="/trainerRead.jsp" class="btn btn-sm btn-primary tobidBtn">
                                            <i class="fas fa-user"></i> 입찰하기
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
                            <div class="card bg-light d-flex flex-fill">
                                <div class="card-header text-muted border-bottom-0">
                                    경매번호 : 11번
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>서울</b></h2>
                                            <p class="text-muted text-sm"><b>금천구: </b> 오전  / 15회권 </p>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>재활-허리</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>재활-목</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-상체</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-하체</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tags"></i></span>식단-체중감소, 혈당조절</li>
                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="resources/images/illugym.png" alt="user-avatar" class="img-circle img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <a href="#" class="btn btn-sm bg-teal">
                                            <i class="fas fa-comments"></i> 현재 입찰자수 : 27
                                        </a>
                                        <a href="/memberRead.jsp" class="btn btn-sm btn-primary">
                                            <i class="fas fa-user"></i> 입찰하기
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
                            <div class="card bg-light d-flex flex-fill">
                                <div class="card-header text-muted border-bottom-0">
                                    경매번호 : 10번
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>부산</b></h2>
                                            <p class="text-muted text-sm"><b>북구: </b> 오전  / 30회권 </p>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-3대500</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-커팅</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-상체</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-하체</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tags"></i></span>식단-근성장</li>
                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="resources/images/illugym.png" alt="user-avatar" class="img-circle img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <a href="#" class="btn btn-sm bg-teal">
                                            <i class="fas fa-comments"></i> 현재 입찰자수 : 14
                                        </a>
                                        <a href="#" class="btn btn-sm btn-primary">
                                            <i class="fas fa-user"></i> 입찰하기
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
                            <div class="card bg-light d-flex flex-fill">
                                <div class="card-header text-muted border-bottom-0">
                                    경매번호 : 9번
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>경기도 고양시</b></h2>
                                            <p class="text-muted text-sm"><b>덕양구: </b> 오전  / 30회권 </p>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>다이어트</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-온몸</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tags"></i></span>식단-체중감소</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tags"></i></span>회당 40,000원</li>

                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="resources/images/illugym.png" alt="user-avatar" class="img-circle img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <a href="#" class="btn btn-sm bg-teal">
                                            <i class="fas fa-comments"></i> 현재 입찰자수 : 9
                                        </a>
                                        <a href="#" class="btn btn-sm btn-primary">
                                            <i class="fas fa-user"></i> 입찰하기
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
                            <div class="card bg-light d-flex flex-fill">
                                <div class="card-header text-muted border-bottom-0">
                                    경매번호 : 8번
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>서울</b></h2>
                                            <p class="text-muted text-sm"><b>양천구: </b> 오전  / 25회권 </p>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-상체</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-하체</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tags"></i></span>바디프로필</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>회당 20,000원</li>
                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="resources/images/illugym.png" alt="user-avatar" class="img-circle img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <a href="#" class="btn btn-sm bg-teal">
                                            <i class="fas fa-comments"></i> 현재 입찰자수 : 5
                                        </a>
                                        <a href="#" class="btn btn-sm btn-primary">
                                            <i class="fas fa-user"></i> 입찰하기
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
                            <div class="card bg-light d-flex flex-fill">
                                <div class="card-header text-muted border-bottom-0">
                                    경매번호 : 7번
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>서울</b></h2>
                                            <p class="text-muted text-sm"><b>종로구: </b> 오전  / 10회권 </p>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>식단관리</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-상체</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-하체</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tags"></i></span>식단-체중감소, 혈당조절</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>회당 35,000원</li>
                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="resources/images/illugym.png" alt="user-avatar" class="img-circle img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <a href="#" class="btn btn-sm bg-teal">
                                            <i class="fas fa-comments"></i> 현재 입찰자수 : 17
                                        </a>
                                        <a href="#" class="btn btn-sm btn-primary">
                                            <i class="fas fa-user"></i> 입찰하기
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
                            <div class="card bg-light d-flex flex-fill">
                                <div class="card-header text-muted border-bottom-0">
                                    경매번호 : 6번
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>서울</b></h2>
                                            <p class="text-muted text-sm"><b>은평구: </b> 오후  / 30회권 </p>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>재활-허리</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>재활-목</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tags"></i></span>식단- 혈당조절</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tags"></i></span>회당 30,000원</li>
                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="resources/images/illugym.png" alt="user-avatar" class="img-circle img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <a href="#" class="btn btn-sm bg-teal">
                                            <i class="fas fa-comments"></i> 현재 입찰자수 : 24
                                        </a>
                                        <a href="#" class="btn btn-sm btn-primary">
                                            <i class="fas fa-user"></i> 입찰하기
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
                            <div class="card bg-light d-flex flex-fill">
                                <div class="card-header text-muted border-bottom-0">
                                    경매번호 : 5번
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>서울</b></h2>
                                            <p class="text-muted text-sm"><b>성북구: </b> 오후  / 10회권 </p>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>재활-허리</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>재활-목</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-상체</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tag"></i></span>PT-하체</li>
                                                <li class="small"><span class="fa-li"><i class="fas fa-mdb fa-tags"></i></span>식단-체중감소, 혈당조절</li>
                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="resources/images/illugym.png" alt="user-avatar" class="img-circle img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <a class="btn btn-sm bg-teal">
                                            <i class="fas fa-comments"></i> 현재 입찰자수 : 2
                                        </a>
                                        <a href="#" class="btn btn-sm btn-primary">
                                            <i class="fas fa-user"></i> 입찰하기
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 밑에 페이징 -->
                <div class="card-footer">
                    <nav aria-label="Contacts Page Navigation">
                        <ul class="pagination justify-content-center m-0">
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#">6</a></li>
                            <li class="page-item"><a class="page-link" href="#">7</a></li>
                            <li class="page-item"><a class="page-link" href="#">8</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- /.card-footer -->
            </div>
            <!-- /.card -->

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

</div>
<!-- ./wrapper -->

<%@include file="WEB-INF/views/includes/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

<script>

   // document.querySelector(".tobidBtn").addEventListener("click", function () {

   // })

</script>

</body>
</html>
