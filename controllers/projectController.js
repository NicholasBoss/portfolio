

function buildProject(req, res){
    console.log("Project Controller")
    res.render("projects/project", {
        title: "Projects",
        link: "projects",
        section: "projects",
        errors: null,
    })
}

module.exports = {
    buildProject
}