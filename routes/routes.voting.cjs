const express = require("express")
const router = express.Router()
const votingController = require("../controller/VotingController.cjs")

router.get("/:id_voting", votingController.getVotingUsersEnterpriseId)
router.get("/enterprise/:id_enterprise", votingController.getVotingEnterprise)
router.post("/", votingController.postVoting)
router.post("/users", votingController.postVotingUsers)


module.exports = router