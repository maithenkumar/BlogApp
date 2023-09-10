const userModel = require("../model/usermodel");
const bcryptjs=require('bcryptjs');
 module.exports=async( req,res )=>{
    const { username, email, password } = req.body;

    try {
  
      const existingUser = await userModel.findOne({ email });
      if (existingUser) {
        return res
          .status(400)
          .json({ msg: "User with same email already exists!" });
      }
  
      const hashedPassword = await bcryptjs.hash(password, 8);
      const user = userModel({
        username,
        email,
        password:hashedPassword,
      });
      const data = await user.save();
      res.json(data);
    } catch (error) {
      res.json({ "error": error });
    }
}