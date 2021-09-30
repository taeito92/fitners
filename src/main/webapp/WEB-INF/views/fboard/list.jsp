
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/fboardheader.jsp" %>
<style>
    a:link {
        color: black;
    }


</style>
<section class="listSection">
    <!-- /.row -->
    <div class="row" style="margin-top: 15px">
        <div class="col-10" style="margin: auto">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title text-center">자유게시판</h3>



                    <%--<div class="card-tools float-right">
                        <div class="input-group input-group-sm" style="width: 500px;">
                            <input type="text" name="table_search" class="form-control" placeholder="Search">

                            <div class="input-group-append float-right">
                                <button type="submit" class="btn btn-info">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </div>--%>

                </div>
                <!-- /.card-header -->
                <div class="card-body">

                    <!-- Table row -->
                    <div class="row">
                        <div class="col-12 table-responsive">
                            <table class="table table">
                                <thead>
                                <tr>
                                    <th class="bnoTh">번호</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${dtoList}" var="dto">
                                    <tr>
                                        <td class="bnoTh"><c:out value="${dto.bno}"></c:out></td>
                                        <td><a href="javascript:moveRead(${dto.bno})"><c:out value="${dto.title}"></c:out></a></td>
                                        <td><c:out value="${dto.writer}"></c:out></td>
                                        <td><c:out value="${dto.regDate}"></c:out></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
    </div>
    <!-- /.row -->

</div>

    <form action="/fboard/list" method="get" style="margin-top: 15px">
        <input type="hidden" name="page" value="1">
        <input type="hidden" name="size" value="${pageMaker.size}">
        <div class="col-sm-3">
            <!-- select -->
            <div class="form-group float-left" style="margin-top: 15px">
                <label>Search</label>
                <select name="type" class="custom-select" style="width: auto">
                    <option value="">---</option>
                    <option value="TCW" ${pageRequestDTO.type == "TCW" ? 'selected' : ''}>전체</option>
                    <option value="T" ${pageRequestDTO.type == "T" ? 'selected' : ''}>제목</option>
                    <option value="TC" ${pageRequestDTO.type == "TC" ? 'selected' : ''}>제목/내용</option>
                    <option value="W" ${pageRequestDTO.type == "W" ? 'selected' : ''}>작성자</option>
                </select>
            </div>
        </div>
        <div class="col-6 float-left" style="margin-top: 15px">
            <div class="input-group input-group-sm">
                <input type="text" class="form-control" name="keyword" value="${pageRequestDTO.keyword}" >
                <span class="input-group-append">
                    <button type="submit" class="btn btn-info btn-flat" >검색</button>
                </span>
            </div>
        </div>
    </form>

<div class="card-footer clearfix">

    <!-- pagination -->
    <div class="pagination pagination-sm m-0 float-right">

        <c:if test="${pageMaker.prev}">
            <li class="page-item"><a class="page-link" href="javascript:movePage(${pageMaker.start - 1})"> << </a></li>
        </c:if>

        <c:forEach begin="${pageMaker.start}" end="${pageMaker.end}" var="num">
            <li class="page-item ${pageMaker.page == num?'active':''}">
                <a class="page-link" href="javascript:movePage(${num})">${num}</a></li>
        </c:forEach>

        <c:if test="${pageMaker.next}">
            <li class="page-item"><a class="page-link" href="javascript:movePage(${pageMaker.end + 1})"> >> </a></li>
        </c:if>

        <button type="button" class="btn btn-block btn-outline-primary toRegisterBtn">글쓰기</button>

    </div>
</div>
</section>

<form id="actionForm" action="/fboard/list" method="get">
    <input type="hidden" name="page" value="${pageMaker.page}">
    <input type="hidden" name="size" value="${pageMaker.size}">

    <c:if test="${pageRequestDTO.type != null}">
        <input type="hidden" name="type" value="${pageRequestDTO.type}">
        <input type="hidden" name="keyword" value="${pageRequestDTO.keyword}">
    </c:if>
</form>


<%@include file="../includes/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

<script>

    const actionForm = document.querySelector("#actionForm")

    const result = '${result}';

    function movePage(pageNum) {
        // event.preventDefault()
        // event.stopPropagation()

        actionForm.querySelector("input[name='page']").setAttribute("value",pageNum)

        actionForm.submit();
    }

    function moveRead(bno) {

        actionForm.setAttribute("action","/fboard/read")
        actionForm.innerHTML += `<input type='hidden' name='bno' value='\${bno}'>`
        actionForm.submit();
    }

    document.querySelector(".toRegisterBtn").addEventListener("click", (e) => {
        e.stopPropagation()
        e.preventDefault()

        actionForm.setAttribute("action", "/fboard/register")
        actionForm.submit();

    })


</script>
</body>
</html>
