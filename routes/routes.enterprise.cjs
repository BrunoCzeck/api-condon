const express = require("express")
const router = express.Router()
const enterpriseController = require("../controller/EnterpriseController.cjs")

router.get("/", enterpriseController.getEnterprise)
router.get("/:id", enterpriseController.getEnterpriseId)
router.post("/", enterpriseController.postEnterprise)

module.exports = router