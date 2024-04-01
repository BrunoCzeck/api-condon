const express = require("express")
const router = express.Router()
const votingController = require("../controller/VotingController.cjs")

router.get("/:id_voting", votingController.getVotingUsersEnterpriseId)
router.get("/enterprise/:id_enterprise", votingController.getVotingEnterprise)
router.get("/pool/:id_voting", votingController.getVotingIdVoting)

router.post("/user", votingController.getVotingUser)
router.post("/", votingController.postVoting)
router.post("/users", votingController.postVotingUsers)
router.delete("/:id_voting", votingController.deletVoting)

router.put("/:id_voting", votingController.updateVoting)
router.put("/users/:id_voting/:user_id", votingController.updateVotingUsers)


module.exports = router