const express = require('express')

const mongoose = require('mongoose')

const dotenv = require('dotenv').config()

const cors = require('cors')

const cookieParser = require('cookie-parser')


const app = express()



const PORT = process.env.PORT || 5000

app.set('trust proxy', 1)

app.listen(PORT)


//MIDDLEWARE
app.use(express.json())
app.use(
  cors({
    origin: ['http://localhost:3000'],
    credentials: true,
    optionsSuccessStatus: 200,
  })
)
app.use(cookieParser())