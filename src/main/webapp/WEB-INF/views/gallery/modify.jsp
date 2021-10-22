<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/fboardheader.jsp"%>

<section class="content" style="margin-top: 10px">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10" style="margin: auto">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">${galleryDTO.gno}번 게시글 수정</h3>
                    </div>

                    <!-- form start -->
                    <form id="galleryModify">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="galleryTitle">제목</label>
                                <input type="hidden" name="bno" value="<c:out value="${galleryDTO.gno}"/>" id="galleryGno" >
                                <input type="text" name="title" class="form-control col-5" placeholder="제목을 입력하세요..."
                                       value="<c:out value="${galleryDTO.title}"/> " id="galleryTitle">
                            </div>
                            <div>
                                <label for="galleryWriter">작성자</label>
                                <input type="text" name="writer" class="form-control col-5" placeholder="작성자를 입력하세요..."
                                       value="<c:out value="${galleryDTO.writer}"/>" id="galleryWriter" readonly >
                            </div>
                            <div>
                                <label for="galleryContent"></label>
                                <textarea rows="6" name="content" class="form-control" id="galleryContent"
                                          placeholder="내용을 입력하세요..."><c:out
                                        value="${galleryDTO.content}"/></textarea>
                            </div>
                            <div class="temp">
                                <!-- 실제 attach div 자리 -->
                            </div>
                            <div class="card-footer">
                                <button type="button" class="btn btn-info float-left" id="toListBtn">목록</button>
                                <button type="button" class="btn btn-warning float-right" id="modifyBtn">수정</button>
                                <button type="button" class="btn btn-danger float-right" id="removeBtn">삭제</button>
                            </div>
                        </div>
                    </form>

                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>
</section>


<form id="actionForm" action="/gallery/list" method="get">
    <input type="hidden" name="page" value="${pageRequestDTO.page}">
    <input type="hidden" name="size" value="${pageRequestDTO.size}">
</form>

<%@include file="../includes/footer.jsp"%>

</body>

<script>
    const galleryModify = document.querySelector("#galleryModify");
    const actionForm = document.querySelector("#actionForm")

    document.querySelector('#toListBtn').addEventListener("click", (e) => {
        e.preventDefault()
        e.stopPropagation()

        actionForm.submit();
    })

    //내용수정
    document.querySelector("#modifyBtn").addEventListener("click", (e) => {
        e.preventDefault()
        e.stopPropagation()



        galleryModify.setAttribute("action", "/gallery/modify")
        galleryModify.setAttribute("method", "post")
        galleryModify.submit();
    })

    //내용삭제
    document.querySelector("#removeBtn").addEventListener("click", (e) => {
        e.preventDefault()
        e.stopPropagation()

        galleryModify.setAttribute("action", "/gallery/remove")
        galleryModify.setAttribute("method", "post")
        galleryModify.submit();
    })

</script>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>


</html>