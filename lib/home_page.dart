import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:SafeArea(
        child: Column(
          children: [
              const  Row(
                      children: [
                        Text("We are preparing something great for you!")
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 50,
                      width: 320,
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              onPressed: () {}, 
                              child:Text('Continue with Google'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                 )
                                )
                              ),
                          ),
                        ],
                      ),
                    ),
                   Row(
                      children: [
                       const Text("Already have account ?"),
                        TextButton(onPressed: () {}, child:const Text("Log In"))  
                    ],)
        ],),
      )
    );
  }
}