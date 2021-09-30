



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/includes/selfmanagementheader.jsp" %>


<!-- Main content -->
<section class="content" >
    <div class="row" >
        <div >
            <div class="card" style="width: 200px; height: auto; top: 20px" >
                <div class="card-header">
                    <h3 class="card-title">Folders</h3>


                </div>
                <div class="card-body p-0" style="width: 200px; height: auto;  ">
                    <ul class="nav  flex-column" style="width: 200px; height: auto;" >
                        <li class="nav-item active" id="biddinglist" onclick="test2()" >
                            <a href="#trainermanagement"  class="nav-link">
                                <i class="fas fa-biding"></i> 입찰목록
                            </a>
                        </li>
                        <li class="nav-item" id="biddinglist2" onclick="test()">
                            <a href="#asdasd"  class="nav-link">
                                <i class="far fa-envelope"></i> 회원관리
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="far fa-file-alt"></i> Drafts
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="fas fa-filter"></i> Junk
                                <span class="badge bg-warning float-right">65</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="far fa-trash-alt"></i> Trash
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.card-body -->
            </div>

        </div>
        <!-- /.col -->
        <div class="col-md-9" style="top: 20px" >
            <div class="card card-primary card-outline">
                <div class="card-header">
                    <h3 class="card-title">입찰목록</h3>

                    <div class="card-tools">
                        <div class="input-group input-group-sm">
                            <input type="text" class="form-control" placeholder="검색">
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








                    <!-- /.card -->



                    <div class="row " style="margin-top: auto; display: none" id="table1">
                        <div class="col-11 table-responsive" style="margin: auto; ">
                            <label for="trainermanagement">테이블1</label>
                            <table class="table table-striped" id="asdasd">
                                <thead>
                                <tr>
                                    <th>회원 이름(아이디)</th>
                                    <th>선택 관리유형</th>
                                    <th>관리유형 내용</th>
                                    <th>회차</th>
                                    <th>날짜</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr style="cursor: pointer" onclick="location.href='trainingdetails.jsp'">
                                    <td >강경원</td>
                                    <td>PT</td>
                                    <td>바디프로필목적</td>
                                    <td>3/10</td>
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




                        <!-- Table row -->
                        <div class="row" style="margin-top: auto; display: none" id="table2" >
                            <div class="col-11 table-responsive" style="margin: auto; ">
                                <label for="trainermanagement">테이블2</label>
                                <table class="table table-striped " id="trainermanagement" >
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
                                    <tr style="cursor: pointer" onclick="location.href='trainerRead.jsp'">
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

                    <!-- /.mail-box-messages -->
                </div>
                <!-- /.card-body -->

            </div>
            <!-- /.card -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<!-- /.content -->







<%@include file="/WEB-INF/views/includes/footer.jsp"%>


<script>
    function test() {
        if (($('#table1').css('display') == 'none') && ($('#table2').css('display') == 'block')) {
            $('#table1').css('display', 'block');
            $('#table2').css('display', 'none');

        } else if (($('#table1').css('display') == 'none') && ($('#table2').css('display') == 'none')){
            $('#table1').css('display', 'block');
            $('#table2').css('display', 'none');
        }
    }

    function test2() {
        if (($('#table2').css('display') == 'none') && ($('#table1').css('display') == 'block')) {
            $('#table2').css('display', 'block');
            $('#table1').css('display', 'none');

        } else if (($('#table2').css('display') == 'none') && ($('#table1').css('display') == 'none')){
            $('#table2').css('display', 'block');
            $('#table1').css('display', 'none');
        }
    }
</script>
</body>
</html>
