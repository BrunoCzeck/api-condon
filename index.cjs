const express = require('express')
const app = express()
require('dotenv').config() /* Config o env */
const cors = require('cors'); // Importe o pacote CORS
const bodyParser = require('body-parser');


const usersRouter = require('./routes/routes.condon.cjs')           /* Chama a rota usuário */
const muralRouter = require('./routes/routes.mural.cjs')           /* Chama a rota mural */
const schedulerRouter = require('./routes/routes.scheduler.cjs') /* Chama a rota scheduler */
const enterpriseController = require('./routes/routes.enterprise.cjs') /* Chama a rota scheduler */
const correspondenceRouter = require('./routes/routes.correspondence.cjs') /* Chama a rota scheduler */
const meetingControllerRouter = require('./routes/routes.meeting.cjs') /* Chama a rota scheduler */
const chatRouter = require('./routes/routes.chat.cjs')            /* Chama a rota chat */
const votingRouter = require('./routes/routes.voting.cjs')            /* Chama a rota chat */

/* app.use(express.urlencoded({extended: false}))
app.use(express.json()) */
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors({
  origin: '*', // Coloque a origem do seu aplicativo React
  optionsSuccessStatus: 200, // Algumas versões do IE não retornam o status corretamente, por isso, definimos explicitamente o status de sucesso
})
);

app.use("/api/v1/users", usersRouter)
app.use("/api/v1/mural", muralRouter)
app.use("/api/v1/scheduler", schedulerRouter)
app.use("/api/v1/enterprise", enterpriseController)
app.use("/api/v1/correspondence", correspondenceRouter)
app.use("/api/v1/meeting", meetingControllerRouter)
app.use("/api/v1/chat", chatRouter)
app.use("/api/v1/voting", votingRouter)

const PORT = process.env.PORT || 3333

app.listen(PORT, () => {
    console.log("Server RUN")
})