<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/galleryheader.jsp" %>
<div class="card col-10" style="margin: auto;">


    <div class="card-body"   >
        <div class="row" style="justify-content: space-between " >
        <c:forEach items="${dtoList}" var="dto">
            <div id="image" class="filtr-item col-sm-2 " data-category="1" data-sort="white sample" style="margin: 5px">
                <a href="javascript:moveRead(${dto.gno})">
                <img  src="https://via.placeholder.com/300/FFFFFF?text=1" class="img-fluid mb-2"
                     alt="white sample"/>${gallery}
                </a>
                <div align="left" style="font-weight: bold"><c:out value="${dto.title}"></c:out></div>
                <div align="left"><c:out value="${dto.writer}"></c:out></div>
                <span><c:out value="${dto.regDate}"></c:out></span>
                <div>조회수: ${galleryDTO.viewCount + 1}</div>
            </div>
        </c:forEach>
        </div>
    </div>

        <div class="card-footer clearfix">
            <form action="/gallery/list" method="get" style="margin-top: 15px">
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
            <div class="pagination pagination-sm m-0 float-right ">

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



</div>




<div class="modal fade" id="modal-read">
    <div class="modal-dialog modal-read" style="width:auto;display:table">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">디테일</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="card">
                <div class="card-body row">
                    <div class="col-5 text-center d-flex align-items-center justify-content-center">
                        <div class="">
                            <img src="https://via.placeholder.com/300/FFFFFF?text=1" class="img-fluid mb-2"
                                 alt="white sample"/>
                        </div>
                    </div>
                    <div class="col-7">
                        <div class="form-group">
                            <label for="galleryTitle">title</label>
                            <input type="hidden" name="galleryTitle" class="form-control" placeholder="제목을 입력하세요..."
                                   value="<c:out value="${galleryDTO.title}"/> " id="galleryTitle" readonly/>
                        </div>
                        <div class="form-group">
                            <label for="galleryWriter">writer</label>
                            <input type="hidden" name="writer" class="form-control"
                                   value="<c:out value="${galleryDTO.writer}"/> " id="galleryWriter" readonly/>
                        </div>

                        <div class="form-group">
                            <label for="galleryContent">Message</label>
                            <textarea id="galleryContent" class="form-control" rows="4"
                                      placeholder="내용을 입력하세요..." readonly><c:out
                                    value="${galleryDTO.content}"/></textarea>
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-primary" value="Send message">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<form id="actionForm" action="/gallery/list" method="get">
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

    const readModal = $("#modal-read")

    const actionForm = document.querySelector("#actionForm")

    const result = '${result}';
    //
    // $(function (){
    //     $("#image").click(function (){
    //         readModal.modal();
    //     })
    // })


    const galleryWriter = document.querySelector("input[name='galleryWriter']")
    const galleryContent = document.querySelector("input[name='galleryContent']")
    const galleryTitle = document.querySelector("input[name='galleryTitle']")
    const galleryGno = document.querySelector("input[name='gno']")

    document.querySelector("#image").addEventListener("click", (e) => {

        const target = e.target;
        const gno = '${galleryDTO.gno}'
        if (target.matches("#image")) {

            const title = target.getAttribute(${galleryDTO.title})
            const writer = target.getAttribute(${galleryDTO.writer})
            const content = target.getAttribute(${galleryDTO.content})
            const read = target.innerHTML

            console.info(read)

            console.log(title, writer, content, gno)
            galleryTitle.value = title
            galleryWriter.value = writer
            galleryContent.value = content

            modModal.modal('show')



            modModal.modal('show')
        }


    }, false)

    function movePage(pageNum) {
        // event.preventDefault()
        // event.stopPropagation()

        actionForm.querySelector("input[name='page']").setAttribute("value",pageNum)

        actionForm.submit();
    }

    function moveRead(gno) {

        actionForm.setAttribute("action","/gallery/read")
        actionForm.innerHTML += `<input type='hidden' name='gno' value='\${gno}'>`
        actionForm.submit();


    }

    document.querySelector(".toRegisterBtn").addEventListener("click", (e) => {
        e.stopPropagation()
        e.preventDefault()

        actionForm.setAttribute("action", "/gallery/register")
        actionForm.submit();

    })

</script>

</body>
</html>
