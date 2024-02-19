const express = require("express")
const router = express.Router()
const votingController = require("../controller/VotingController.cjs")

router.get("/:id_enterprise", votingController.getVotingUsersEnterpriseId)
router.post("/", votingController.postVoting)
router.post("/users", votingController.postVotingUsers)


module.exports = router