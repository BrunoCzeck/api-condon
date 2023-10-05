const express = require("express")
const router = express.Router()
const schedulerController = require("../controller/SchedulerController.cjs")

router.get("/", schedulerController.getScheduler)
router.get("/:id", schedulerController.getSchedulerId)
router.post("/", schedulerController.postScheduler)
router.put("/:id", schedulerController.updateScheduler)
router.delete("/:id", schedulerController.deleteSchedulerId)

module.exports = router