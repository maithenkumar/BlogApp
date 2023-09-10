const express = require("express");
const authRoute = express.Router();
const userModel = require("../model/usermodel");
const bcryptjs=require('bcryptjs');
const signup=require('../controler/signup')
const signin=require('../controler/signin')


authRoute.post("/signup",signup);
authRoute.post("/signin",signin);

module.exports = authRoute;
