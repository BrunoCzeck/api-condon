const express = require("express")
const router = express.Router()
const userController = require("../controller/UsersController.cjs")
const cors = require("cors")


const app = express();
const allowedOrigins = ['http://localhost:3000', 'https://api-condon-production.up.railway.app'];

app.use(cors({
    origin: allowedOrigins,
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE', // Adicione os métodos HTTP que deseja permitir
    preflightContinue: false,
    optionsSuccessStatus: 204,
    allowedHeaders: 'Content-Type,Authorization', // 
  }));


router.get("/", userController.getUsers)
router.get("/:id", userController.getUserId)
router.post("/", userController.postUser)
router.put("/:id", userController.updateUser)
router.delete("/:id", userController.deleteUserId)

module.exports = router