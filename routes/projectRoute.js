// Needed Resources 
const express = require("express")
const router = new express.Router() 
const projectController = require("../controllers/projectController")
const util = require("../utilities")

// Routes

// Default Home Route
// console.log("Project Route")

router.get("/",  util.handleErrors(projectController.buildProject))

// Export
module.exports = router