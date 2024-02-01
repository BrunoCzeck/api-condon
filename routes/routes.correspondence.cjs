const express = require("express")
const router = express.Router()
const correspondenceRouter = require("../controller/CorrespondenceController.cjs")

router.get("/:id", correspondenceRouter.getCorrespondence)
router.get("/user/:id", correspondenceRouter.getCorrespondenceId)
router.post("/", correspondenceRouter.postCorrespondence)

router.get("/types/:id", correspondenceRouter.getCorrespondenceIdType)
router.post("/types", correspondenceRouter.postCorrespondenceType)

module.exports = router