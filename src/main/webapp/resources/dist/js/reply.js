
const getReplyList = async (bno) => {

    const response = await axios.get(`/replies/list/${bno}`)
    return response.data
}

async function addReply(obj) {

    const response = await axios.post("/replies", obj)
    return response.data
}

const removeReply = async (rno) => {
    const response = await axios.delete(`/replies/${rno}`)
    return response.data
}

const modifyReply = async (reply) => {
    const response = await axios.put(`/replies/${reply.rno}`, reply)
    return response.data
}


const galleryGetReplyList = async (rno) => {

    const response = await axios.get(`/greplies/list/${rno}`)
    return response.data
}

async function galleryAddReply(obj) {

    const response = await axios.post("/greplies", obj)
    return response.data
}

const galleryRemoveReply = async (rno) => {
    const response = await axios.delete(`/greplies/${rno}`)
    return response.data
}

const galleryModifyReply = async (reply) => {
    const response = await axios.put(`/greplies/${reply.rno}`, reply)
    return response.data
}