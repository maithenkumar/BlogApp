const userModel = require("../model/usermodel");
const bcryptjs = require("bcryptjs");
module.exports = async (req, res) => {
  const { email, password } = req.body;

  try {
    // const hashedPassword = await bcryptjs.hash(password, 8);
    const user = await userModel.findOne({ email });
    if (!user) {
      return res
        .status(400)
        .json({ msg: "User with this email does not exist!" });
    }
    const ispass = await bcryptjs.compare(password, user.password);
    // const isMatch = await bcryptjs.compare(password, user.password);
    if (!ispass) {
      return res.status(400).json({ msg: "Incorrect password." });
    }
    res.json({ message: "successfully login ", user });
  } catch (error) {
    res.json({ error: error });
    console.log(error);
  }
};
