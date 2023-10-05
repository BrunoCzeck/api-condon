const express = require("express")
const router = express.Router()
const chatController = require("../controller/ChatController.cjs")

router.get("/", chatController.getChat)
router.get("/:user_id", chatController.getChatId)
router.post("/", chatController.postChat)

module.exports = router