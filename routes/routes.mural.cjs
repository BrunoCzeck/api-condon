const express = require("express")
const router = express.Router()
const muralController = require("../controller/MuralController.cjs")

router.get("/", muralController.getPosts)
router.get("/:id", muralController.getPostsId)
router.post("/", muralController.postMural)

module.exports = router