import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/text_form.dart';

import '../widgets/button.dart';

class FormPage extends StatelessWidget {
  const FormPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Form(
            child: Column(
              children: [
                const Text("Welcome to Blogy ",
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,),
                ),
                const SizedBox(height: 10,),
               const TextForm(
                  hnttxt: ' Email ID',
                  lbltext: 'Enter Your Email ID',
                  icon:Icon(Icons.account_circle_outlined),
                  torf: false,
                ),
               const SizedBox(height: 10,),
               const TextForm(
                  hnttxt: 'Password',
                  lbltext: 'Enter Your Password',
                  icon: Icon(Icons.lock_outlined),
                  torf: true,
                  
                ),
                const SizedBox(height: 10,),       
                Button(
                  btnhgt: 50,
                  btnwdt: double.infinity,
                    onTab:() {},
                    btnColor: Colors.black,
                    btnText: "Log in",
                    textColor: Colors.white,),
              ],
            ),
           )
          ],
        ),
      ),
    );
  }
}