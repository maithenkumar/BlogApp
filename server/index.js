const express = require("express");
const app = express();
const db = require("./db/db");
const routs = require("./routs/authRoute");
const bodyParser = require("body-parser");

db();
app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(routs);
app.use("/", (req, res) => {
  res.json({ message: "maitheen is a goodboy " });
});
var port = 3000;
app.listen(port, () => {
  console.log(`server statrted at ${port}`);
});
