
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>upload</title>
</head>
<body>

<div>
    <input type="file" name="uploadFiles" multiple>
    <button id="uploadBtn">upload</button>

    <div class="uploadResult"></div>
</div>

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
                    str += `<div data-uuid='\${uuid}'><img src='/viewFile?file=\${thumbnail}'/><span>\${fileName}</span>
                            <button onclick="javascirpt:removeFile('\${fileLink}',this)">x</button></div>`
                } else {
                    str += `<div data-uuid='\${uuid}'><a href="/downFile?file=\${fileLink}">\${fileName}</a></div>`
                }
            } //end for

            uploadResultDiv.innerHTML += str;

        })

    },false)

    function removeFile(fileLink, element) {
        console.log(fileLink)
        axios.post("/removeFile", {fileName: fileLink}).then(response => {
            const targetDiv = element.parentElement
            targetDiv.remove()
        })
    }
</script>

</body>
</html>
