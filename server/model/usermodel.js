const mongoose=require('mongoose')
const model=mongoose.Schema({
    username:{
        require:true,
        type:String

    },
    email: {
        required: true,
        type: String,
        trim: true,
        validate: {
          validator: (value) => {
            const re =
              /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
            return value.match(re);
          },
          message: "Please enter a valid email address",
        },
      },
      password: {
        required: true,
        type: String,
      },
    
})
const userModel=mongoose.model('user',model)
module.exports=userModel;