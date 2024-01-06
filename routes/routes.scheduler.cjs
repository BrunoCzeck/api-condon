const express = require("express")
const router = express.Router()
const schedulerController = require("../controller/SchedulerController.cjs")

router.get("/:id", schedulerController.getSchedulerId)
router.get("/enterprise/:id", schedulerController.getSchedulerEntepriseId)
router.get("/reserve/:id", schedulerController.getSchedulerReserve)
router.post("/", schedulerController.postScheduler)
router.put("/:id", schedulerController.updateScheduler)
router.delete("/:id", schedulerController.deleteSchedulerId)

/* Get Scheduler Type */
router.get("/types/:id", schedulerController.getSchedulerTypeId)
router.get("/types/enterprise/:id", schedulerController.getSchedulerIdEnterprise)
router.post("/types", schedulerController.postSchedulerType)
router.put("/types/:id", schedulerController.updateSchedulerType)
router.delete("/types/:id", schedulerController.deleteSchedulerTypeId)

module.exports = router