const express = require("express")
const router = express.Router()
const chatController = require("../controller/ChatController.cjs")

router.get("/:user_id", chatController.getChatId)
router.get("/enterprise/:id_enterprise", chatController.getChatEnterpriseId)
router.post("/", chatController.postChat)
router.put("/:user_id", chatController.putChat)


module.exports = router