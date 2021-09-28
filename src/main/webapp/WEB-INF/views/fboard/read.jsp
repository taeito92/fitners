<%--
  Created by IntelliJ IDEA.
  User: ljw81
  Date: 2021-09-27
  Time: 오후 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Read</title>
</head>
<body>


<form id="fboardRead">
    <div>
        <div>
            <label for="fboardBno">BNO</label>
            <input type="text" name="bno" value="<c:out value="${boardDTO.bno}"/>" id="fboardBno" readonly>
        </div>
        <div>
            <label for="fboardTitle">Title</label>
            <input type="text" name="title" placeholder="enter title" value="<c:out value="${boardDTO.title}"/>"
                   id="fboardTitle" readonly>
        </div>
        <div>
            <label for="fboardWriter">Writer</label>
            <input type="text" name="writer" placeholder="enter writer" value="<c:out value="${boardDTO.writer}"/>"
                   id="fboardWriter" readonly>
        </div>
        <div>
            <label for="fboardContent">Content</label>
            <textarea rows="3" name="content"
                      id="fboardContent" readonly><c:out value="${boardDTO.content}"></c:out></textarea>
        </div>

        <button type="button" class="toListBtn">목록</button>
        <button type="button" class="toModifyBtn">수정/삭제</button>
    </div>

    <div>
        <c:forEach items="${boardDTO.files}" var="attach">
            <div>
                <c:if test="${attach.image}">
                    <img src="/viewFile?file=${attach.getThumbnail()}" onclick="javacript:showOrigin('${attach.getFileLink()}')">
                </c:if>
                    ${attach.fileName}
            </div>
        </c:forEach>
    </div>

    <hr>
    <h3>replies</h3>
    <div>
        <button type="button" class="addReplyBtn">Add reply</button>
        <div class="repliesList">

        </div>
    </div>

    <hr>
    <%-- modal start --%>
    <div class="modal fade" id="modal-sm">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Reply</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="text" name="replyer">
                    <input type="text" name="reply">

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
                    <h4 class="modal-title">Modify/Remove</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="rno">
                    <input type="text" name="replyerMod">
                    <input type="text" name="replyMod">
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-info btnModReply">Modify</button>
                    <button type="button" class="btn btn-danger btnRem">Remove</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

</form>

<form id="actionForm" action="/fboard/list" method="get">
    <input type="hidden" name="page" value="${pageRequestDTO.page}">
    <input type="hidden" name="size" value="${pageRequestDTO.size}">
</form>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script> <!-- axios를 사용하기 위해서 추가 -->
<script src="/resources/js/reply.js"> //js 로딩 </script>

<!-- 댓글목록 -->
<script>
    function getRepliesList() {
        const target = document.querySelector(".repliesList")
        const bno = '${boardDTO.bno}'
        console.log(bno)

        function convertReplyList(replyObj) {
            console.log(replyObj)

            const {rno, bno, reply, replyer, regDate, modDate} = {...replyObj}

            const replyList = `<div class="fboard-reply">
               <div>
                  <span>\${rno} -- \${replyer}</span>
                  <span>\${regDate}</span>
               </div>
               <div data-rno='\${rno}' data-replyer='\${replyer}'>
                  \${reply}
               </div>
            </div>`
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
    const modalDiv = $('#modal-sm')

    let oper = null

    document.querySelector('.addReplyBtn').addEventListener("click", function () {

        oper = 'add' //댓글을 추가할꺼니까 oper를 add로 설정
        modalDiv.modal('show')

    },false)

    //버튼 누른 경우
    document.querySelector(".operBtn").addEventListener("click", function () {

        const bno = '${boardDTO.bno}'
        const replyer = document.querySelector("input[name='replyer']").value //jQuery
        const reply = document.querySelector("input[name='reply']").value

        if(oper === 'add') {
            const replyObj = {bno:bno, replyer:replyer, reply:reply} //키값 할당
            console.log(replyObj)

            addReply(replyObj).then(result => {
                getList() //갱신목적 함수
                modalDiv.modal('hide')
                document.querySelector("input[name='replyer']").value = ""
                document.querySelector("input[name='reply']").value = ""
            })
        }

    },false)
    //수정,삭제 DOM
    const modModal = $("#modal-lg")
    const modReplyer = document.querySelector("input[name='replyerMod']")
    const modReply = document.querySelector("input[name='replyMod']")
    const modRno = document.querySelector("input[name='rno']")

    document.querySelector(".direct-chat-messages").addEventListener("click", (e) => {

        const target = e.target
        const bno = '${boardDTO.bno}'
        if (target.matches(".direct-chat-text")) {
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
            getList()

            modModal.modal('hide');
        })
    },false)

    document.querySelector(".btnModReply").addEventListener("click" , (e) => {
        const replyObj = {rno:modRno.value, reply:modReply.value}

        modifyReply(replyObj).then(result => {
            getList()

            modModal.modal("hide")
        })

    },false)


</script>




<!-- 원본파일보기 -->
<%--<script>
    //모달 필요
    const modalImage = new bootstrap.Modal(document.querySelector('#modal-image'))

    function showOrigin(fileLink){

        document.querySelector("#targetImage").src = `/viewFile?file=\${fileLink}`
        modalImage.show()

    }
</script>--%>

</html>
