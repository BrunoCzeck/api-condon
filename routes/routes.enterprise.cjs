const express = require("express")
const router = express.Router()
const enterpriseController = require("../controller/EnterpriseController.cjs")

router.get("/", enterpriseController.getEnterprise)

module.exports = router