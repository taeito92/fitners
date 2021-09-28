<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/fboardheader.jsp" %>

<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10" style="margin: auto">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Board Register</h3>
                    </div>

                    <!-- form start -->
                    <form id="fboardRegsiter" action="/fboard/register" method="post">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="fboardTitle">Title</label>
                                <input type="text" name="title" class="form-control" placeholder="enter title" id="fboardTitle">
                            </div>
                            <div>
                                <label for="fboardWriter">Writer</label>
                                <input type="text" name="writer" class="form-control" placeholder="enter writer" id="fboardWriter">
                            </div>
                            <div>
                                <label for="fboardContent">Content</label>
                                <textarea rows="3" name="content" class="form-control" id="fboardContent"
                                          placeholder="enter content"></textarea>
                            </div>
                            <div class="temp">
                                <!-- 실제 attach div 자리 -->
                            </div>
                            <div class="card-footer">
                                <button type="submit" id="submitBtn" class="btn btn-info float-right">SUBMIT</button>
                            </div>
                        </div>
                    </form>
                    <hr>
                    <div>
                        <label for="fboardAttach">파일 첨부</label>
                        <span class="input-group" id="fboardAttach">
                            <input type="file" name="uploadFiles" id="fileInputLabel" multiple>
                            <label for="fileInputLabel"></label>

                            <button type="button" class="btn btn-info" id="uploadBtn" style="alignment: right">upload</button>
                        </span>

                        <div class="uploadResult">

                        </div>
                    </div>
                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>
</section>

<hr>

<form id="actionForm" action="/fboard/list" method="get">
    <input type="hidden" name="page" value="${pageRequestDTO.page}">
    <input type="hidden" name="size" value="${pageRequestDTO.size}">
</form>


<%@include file="../includes/footer.jsp" %>

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

        const headerObj = {
            headers: {
                'Content-Type': 'multipart/form-data'
            }
        }

        axios.post("/upload", formData, headerObj).then((response) => {
            const arr = response.data
            console.log(arr)
            let str = ""
            for (let i = 0; i < arr.length; i++) {
                const {uuid, fileName, uploadPath, image, thumbnail, fileLink} = {...arr[i]}

                if (image) {
                    str += `<div data-uuid='\${uuid}' data-fileName='\${fileName}' data-uploadpath ='\${uploadPath}' data-image = '\${image}'><img src='/viewFile?file=\${thumbnail}'/><span>\${fileName}</span>
                            <button onclick="javascript:removeFile('\${fileLink}',this)" >x</button></div>`
                } else {
                    str += `<div data-uuid='\${uuid}' data-fileName='\${fileName}' data-uploadpath ='\${uploadPath}' data-image = '\${image}'><a href='/downFile?file=\${fileLink}'>\${fileName}</a></div>`
                }
            } //end for

            uploadResultDiv.innerHTML += str;

        })

    }, false)

    function removeFile(fileLink, element) {
        console.log(fileLink)
        axios.post("/removeFile", {fileName: fileLink}).then(response => {
            const targetDiv = element.parentElement
            targetDiv.remove()
        })
    }

    document.querySelector("#submitBtn").addEventListener("click", (e) => {
        e.stopPropagation()
        e.preventDefault()

        const fileDivArr = uploadResultDiv.querySelectorAll("div")
        const fboardRegsiter = document.querySelector("#fboardRegsiter")

        //첨부파일 없는 경우
        if (!fileDivArr) {
            fboardRegsiter.submit()
            return
        }

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

        fboardRegsiter.submit();


    }, false)
</script>

</body>
</html>
