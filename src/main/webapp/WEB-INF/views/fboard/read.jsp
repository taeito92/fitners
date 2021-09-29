<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/fboardheader.jsp" %>


<section class="content" style="margin-top: 10px">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10" style="margin: auto">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title text-center">자유게시판</h3>
                    </div>

                    <!-- form start -->
                    <form id="fboardRead">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="fboardTitle">제목</label>
                                <input type="text" name="title" class="form-control col-5" placeholder="제목을 입력하세요..."
                                       value="<c:out value="${boardDTO.title}"/> " id="fboardTitle" readonly>
                            </div>
                            <div>
                                <label for="fboardWriter">작성자</label>
                                <input type="text" name="writer" class="form-control col-5" placeholder="작성자를 입력하세요..."
                                       value="<c:out value="${boardDTO.writer}"/>" id="fboardWriter" readonly>
                            </div>
                            <div>
                                <label for="fboardContent"></label>
                                <textarea rows="6" name="content" class="form-control" id="fboardContent"
                                          placeholder="내용을 입력하세요..." readonly><c:out
                                        value="${boardDTO.content}"/></textarea>
                            </div>
                            <div class="temp">
                                <!-- 실제 attach div 자리 -->
                            </div>
                            <div class="card-footer">
                                <button type="button" class="btn btn-info float-left toListBtn">목록</button>
                                <button type="button" class="btn btn-warning float-right toModifyBtn">수정/삭제</button>
                            </div>
                        </div>
                    </form>
                    <hr>

                    <div style="margin-left: 15px">
                        <c:forEach items="${boardDTO.files}" var="attach">
                            <div>
                                <c:if test="${attach.image}">
                                    <img src="/viewFile?file=${attach.getThumbnail()}"
                                         onclick="javacript:showOrigin('${attach.getFileLink()}')">
                                </c:if>
                                    ${attach.fileName}
                            </div>
                        </c:forEach>
                    </div>

                    <hr>
                    <div class="card direct-chat direct-chat-primary">
                        <div class="card-header">
                            <h3 class="card-title">댓글</h3>
                            <span title="3 New Messages" class="badge badge-primary" id="addReplyBtn">+</span>

                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="direct-chat-messages" id="repliesList">
                                <!-- /.replies -->
                            </div>
                            <!--/.replies -->
                        </div>
                    </div>
                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>
</section>

<%-- modal start --%>
<div class="modal fade" id="modal-sm">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">댓글작성</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                작성자 : <input type="text" name="replyer" value="ID를 입력하세요"><br>
                내용 : <input type="text" name="reply" value="내용을 입력하세요">

            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">close</button>
                <button type="button" class="btn btn-primary operBtn">save change</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal exd-->

<!-- large modal -->
<div class="modal fade" id="modal-lg">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">댓글수정</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                작성자 : <input type="text" name="replyerMod">
                내용 : <input type="text" name="replyMod">
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-info btnModReply">수정</button>
                <button type="button" class="btn btn-danger btnRem">삭제</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<hr>

<form id="actionForm" action="/fboard/list" method="get">
    <input type="hidden" name="page" value="${pageRequestDTO.page}">
    <input type="hidden" name="size" value="${pageRequestDTO.size}">
</form>

</body>

<%@include file="../includes/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="/resources/dist/js/reply.js"></script>

<!-- 목록/수정/삭제 이동 -->
<script>

    const HiddenForm = document.querySelector("#actionForm");

    document.querySelector(".toListBtn").addEventListener("click", () => {
        HiddenForm.submit()
    }, false)

    document.querySelector(".toModifyBtn").addEventListener("click", () => {

        const bno = '${boardDTO.bno}';

        HiddenForm.setAttribute("action", "/fboard/modify")
        HiddenForm.innerHTML += `<input type='hidden' name='bno' value='\${bno}'>`
        HiddenForm.submit()
    })

</script>

<script>
    function getRepliesList() {
        const target = document.querySelector("#repliesList")
        const bno = '${boardDTO.bno}'
        console.log(bno)

        function convertReplyList(replyObj) {
            console.log(replyObj)

            const {rno, bno, reply, replyer, regDate, modDate} = {...replyObj}

            const replyList = `<div class="fboard-reply">
                <div style="margin-left: 15px">
                    <div><strong>\${replyer}</strong></div>
                    <div data-rno='\${rno}' data-replyer='\${replyer}'>
                       \${reply}
                    </div>
                    <div style="font-size: 4pt">\${regDate}</div>
                </div>
                <hr>`
            return replyList
        }

        getReplyList(bno).then(data => {
            console.log(data)
            let str = "";
            data.forEach(reply => {
                str += convertReplyList(reply)
            })
            target.innerHTML = str;
        })
    }

    (function () {
        getRepliesList()
    })()

    //댓글추가
    const smModalDiv = $('#modal-sm')

    let oper = null

    document.querySelector("#addReplyBtn").addEventListener("click", function () {

        oper = 'add'
        smModalDiv.modal('show')

    }, false)

    document.querySelector(".operBtn").addEventListener("click", function () {

        const bno = '${boardDTO.bno}'
        const replyer = document.querySelector("input[name='replyer']").value //jQuery
        const reply = document.querySelector("input[name='reply']").value

        if (oper === 'add') {
            const replyObj = {bno: bno, replyer: replyer, reply: reply} //키값 할당
            console.log(replyObj)

            addReply(replyObj).then(result => {
                getRepliesList() //갱신목적 함수
                smModalDiv.modal('hide')
                document.querySelector("input[name='replyer']").value = ""
                document.querySelector("input[name='reply']").value = ""
            })
        }

    }, false)

    //수정,삭제 DOM
    const modModal = $("#modal-lg")
    const modReplyer = document.querySelector("input[name='replyerMod']")
    const modReply = document.querySelector("input[name='replyMod']")
    const modRno = document.querySelector("input[name='rno']")

    document.querySelector("#repliesList").addEventListener("click", (e) => {

        const target = e.target
        const bno = '${boardDTO.bno}'
        if (target.matches("#repliesList")) {
            const rno = target.getAttribute("data-rno")
            const replyer = target.getAttribute("data-replyer")
            const reply = target.innerHTML

            console.info(reply)

            console.log(rno, replyer, reply, bno)
            modRno.value = rno
            modReplyer.value = replyer
            modReply.value = reply

            modModal.modal('show')

            document.querySelector(".btnRem").setAttribute("data-rno", rno)

            modModal.modal('show')
        }
    },false)

    document.querySelector(".btnRem").addEventListener("click" ,(e) => {
        const rno = e.target.getAttribute("data-rno")

        removeReply(rno).then(result => {
            getRepliesList()

            modModal.modal('hide');
        })
    },false)

    document.querySelector(".btnModReply").addEventListener("click" , (e) => {
        const replyObj = {rno:modRno.value, reply:modReply.value}

        modifyReply(replyObj).then(result => {
            getRepliesList()

            modModal.modal("hide")
        })

    },false)

</script>
<!-- 댓글목록 -->

</html>
