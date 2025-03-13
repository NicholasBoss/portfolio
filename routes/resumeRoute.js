// Needed Resources 
const express = require("express")
const router = new express.Router() 
const resumeController = require("../controllers/resumeController")
const util = require("../utilities")

// Routes

// Default Home Route

router.get("/",  util.handleErrors(resumeController.buildResume))

// Export
module.exports = router