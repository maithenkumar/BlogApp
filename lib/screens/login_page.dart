import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';

class Google extends StatelessWidget {
  const Google({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 233, 227),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 15)),
               Text('We are Prearing \n Something Great \n For You!',
               style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
               ),
               )
            ]
          ),
          const SizedBox(height: 25,),
          Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
             // const GglImg(imgUrl: "https://banner2.cleanpng.com/20180423/gkw/kisspng-google-logo-logo-logo-5ade7dc753b015.9317679115245306313428.jpg"),
              Button(
                btnwdt: double.infinity,
                btnhgt: 50,
                  onTab:() {},
                  btnColor: Colors.black,
                  btnText: "Continue with Google",
                  textColor: Colors.white,
                  ),
            ],
          ), 

          const SizedBox(height: 25,),

         Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const  Padding(padding: EdgeInsets.only(left: 10)),
              const Text("Already have account?",
               style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
               ),
              ),
              TextButton(onPressed: () {}, child:const Text("Log in",
               style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
               ),
              ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
