
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/fboardheader.jsp"%>

<section class="content" style="margin-top: 10px">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10" style="margin: auto">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">${boardDTO.bno}번 게시글 수정</h3>
                    </div>

                    <!-- form start -->
                    <form id="fboardModify">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="fboardTitle">제목</label>
                                <input type="hidden" name="bno" value="<c:out value="${boardDTO.bno}"/>" id="fboardBno" >
                                <input type="text" name="title" class="form-control col-5" placeholder="제목을 입력하세요..."
                                       value="<c:out value="${boardDTO.title}"/> " id="fboardTitle">
                            </div>
                            <div>
                                <label for="fboardWriter">작성자</label>
                                <input type="text" name="writer" class="form-control col-5" placeholder="작성자를 입력하세요..."
                                       value="<c:out value="${boardDTO.writer}"/>" id="fboardWriter" readonly >
                            </div>
                            <div>
                                <label for="fboardContent"></label>
                                <textarea rows="6" name="content" class="form-control" id="fboardContent"
                                          placeholder="내용을 입력하세요..."><c:out
                                        value="${boardDTO.content}"/></textarea>
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
                    <hr>

                    <div style="margin-left: 15px">
                        <label for="fboardAttach">파일 첨부</label>
                        <span class="input-group" id="fboardAttach">
                            <input type="file" name="uploadFiles" id="fileInputLabel" multiple>
                            <label for="fileInputLabel"></label>

                            <button type="button" class="btn btn-info" id="uploadBtn" style="alignment: right">upload</button>
                        </span>

                        <!-- 원래 attach 물고있는 code -->
                        <div class="uploadResult">
                            <c:forEach items="${boardDTO.files}" var="attach">
                                <c:if test="${attach.image}">
                                    <div data-uuid="${attach.uuid}" data-fileName="${attach.fileName}" data-uploadpath="${attach.uploadPath}" data-image="${attach.image}">
                                        <img src="/viewFile?file=${attach.getThumbnail()}">
                                        <span>${attach.fileName}</span>
                                        <button onclick="javascript:removeDiv(this)">X</button>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>

                    </div>

                    <hr>

                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>
</section>


<form id="actionForm" action="/fboard/list" method="get">
    <input type="hidden" name="page" value="${pageRequestDTO.page}">
    <input type="hidden" name="size" value="${pageRequestDTO.size}">
</form>

<%@include file="../includes/footer.jsp"%>

</body>

<script>
    const fboardModify = document.querySelector("#fboardModify");
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

        const fileDivArr = uploadResultDiv.querySelectorAll("div")

        if (fileDivArr && fileDivArr.length > 0) {
            let str = "";
            for (let i = 0; i < fileDivArr.length; i++) {
                const target = fileDivArr[i]
                const uuid = target.getAttribute("data-uuid")
                const fileName = target.getAttribute("data-fileName")
                const uploadPath = target.getAttribute("data-uploadpath")
                const image = target.getAttribute("data-image")

                str += `<input type='hidden' name='files[\${i}].uuid' value='\${uuid}'>`
                str += `<input type='hidden' name='files[\${i}].fileName' value='\${fileName}'>`
                str += `<input type='hidden' name='files[\${i}].uploadPath' value='\${uploadPath}'>`
                str += `<input type='hidden' name='files[\${i}].image' value='\${image}'>`
            }

            document.querySelector(".temp").innerHTML = str
        }//end if

        fboardModify.setAttribute("action", "/fboard/modify")
        fboardModify.setAttribute("method", "post")
        fboardModify.submit();
    })

    //내용삭제
    document.querySelector("#removeBtn").addEventListener("click", (e) => {
        e.preventDefault()
        e.stopPropagation()

        fboardModify.setAttribute("action", "/fboard/remove")
        fboardModify.setAttribute("method", "post")
        fboardModify.submit();
    })

</script>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
    const uploadResultDiv = document.querySelector(".uploadResult")

    document.querySelector("#uploadBtn").addEventListener("click", (e) => {

        const formData = new FormData()
        const fileInput = document.querySelector("input[name='uploadFiles']")

        for (let i = 0; i < fileInput.files.length; i++) {
            formData.append("uploadFiles", fileInput.files[i])
        }

        console.log(formData)

        const headerObj = {headers: {'Content-Type': 'multipart/form-data'}}

        axios.post("/upload", formData, headerObj).then((response) => {
            const arr = response.data
            console.log(arr)
            let str = ""
            for (let i = 0; i < arr.length; i++) {
                const {uuid, fileName, uploadPath, image, thumbnail, fileLink} = {...arr[i]}

                if (image) {
                    str += `<div data-uuid='\${uuid}' data-filename='\${fileName}' data-uploadpath ='\${uploadPath}' data-image = '\${image}'><img src='/viewFile?file=\${thumbnail}'/><span>\${fileName}</span>
                            <button onclick="javascript:removeDiv(this)">X</button></div>`
                } else {
                    str += `<div data-uuid='\${uuid}' data-filename='\${fileName}' data-uploadpath ='\${uploadPath}' data-image = '\${image}'><a href='/downFile?file=\${fileLink}'>\${fileName}</a></div>`
                }

            }//end for
            uploadResultDiv.innerHTML += str

        })


    }, false)

    function removeDiv(element) {
        element.parentElement.remove()
    }


</script>

</html>
