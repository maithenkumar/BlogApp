const mongoose = require("mongoose");
const db=()=>{
    try {
    
        mongoose
      .connect("mongodb://127.0.0.1:27017")
      .then(() => {
        console.log("db  conntected");
      })
      .catch(() => {
        console.log("bd not connected ");
      });
    } catch (e) {
       console.log(e); 
    }
}

module.exports=db;