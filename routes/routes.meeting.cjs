const express = require("express")
const router = express.Router()
const meetingControllerRouter = require("../controller/MeetingController.cjs")

router.get("/", meetingControllerRouter.getMeeting)
router.get("/:id", meetingControllerRouter.getMeetingsId)
router.post("/", meetingControllerRouter.postMeeting)

module.exports = router