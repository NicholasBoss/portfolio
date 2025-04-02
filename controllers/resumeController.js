

function buildResume(req, res){
    console.log("Resume Controller")
    res.render("resume/resume", {
        title: "Resume",
        link: "resume",
        section: "resume",
        errors: null,
    })
}

module.exports = {
    buildResume
}