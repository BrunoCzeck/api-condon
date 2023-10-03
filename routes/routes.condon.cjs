const express = require("express")
const router = express.Router()
const userController = require("../controller/UsersController.cjs")

router.get("/", userController.getUsers)
router.get("/:id", userController.getUserId)
router.post("/", userController.postUser)
router.put("/:id", userController.updateUser)
router.delete("/:id", userController.deleteUserId)

module.exports = router