const express = require("express")
const router = express.Router()

const routerController = require("../controller/UsersController.cjs")

router.get("/", routerController.getUsers)
router.get("/:id", routerController.getUserId)
router.post("/", routerController.postUser)
router.put("/:id", routerController.updateUser)
router.delete("/:id", routerController.deleteUserId)
/* -------------------------------------------------- */
module.exports = router