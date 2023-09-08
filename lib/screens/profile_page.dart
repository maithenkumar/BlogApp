import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/lsttle.dart';
//import 'package:flutter_application_1/widgets/txt_prf.dart';

import '../widgets/button.dart';
import '../widgets/image.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _PrfilePageState();
}

class _PrfilePageState extends State<ProfilePage> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
        child: Column(
          children: [
           Padding(
              padding:const  EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IcnBtn(icnBtn: const Icon(Icons.arrow_back_ios),icnOntab:() {}),
                    ],
                  ),
                  const SizedBox(width: 40,),
                  const Text("@mrblack",
                  style: TextStyle(
                    fontWeight:FontWeight.bold,
                  ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                 child: const prfImg(prfimg:"https://t4.ftcdn.net/jpg/02/24/86/95/360_F_224869519_aRaeLneqALfPNBzg0xxMZXghtvBXkfIA.jpg"),
              
                ),
                const Column(
                  children:[
                   Text("23K",
                   style: TextStyle(
                    fontWeight:FontWeight.bold,
                  ),
                   ),
                   Text("Followers "),
                ]
              ),
              const Column(
                  children:[
                   Text("288 ",
                   style: TextStyle(
                    fontWeight:FontWeight.bold,
                  ),
                   ),
                   Text("Following "),
                ]
              ),
              const Column(
                  children:[
                   Text("23 ",
                   style: TextStyle(
                    fontWeight:FontWeight.bold,
                  ),
                   ),
                   Text("Post "),
                ]
              ),
            ]
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const  Column(
                  children:[
                   Text(" Satheesh s ",
                   style: TextStyle(
                    fontWeight:FontWeight.bold,
                  ),
                   ),            
                   Column(
                     children: [
                       Text(" App Deveveloper "),
                     ],
                   ),
                ]
              ),
                
              Column(
                children: [
                  Button(
                    btnhgt: 35,
                    btnwdt: 80,
                   onTab: () {},
                   btnColor:Color.fromARGB(255, 51, 50, 50),
                   btnText: ("Edit"),
                   textColor: Colors.white
                    )
                ],
              )
             ],
            ),
            const SizedBox(height: 10,), 
            const Row(
             children: [
              Text("POST FROM BLACK",
              style: TextStyle(
                    fontWeight:FontWeight.bold,
                  ),
              )
             ],
            ),
            const SizedBox(height: 10,), 
            //  Listtile
            
             Column(
              children: [
                blglst(blogimg:const  blgImg(blgimg: "https://t4.ftcdn.net/jpg/02/24/86/95/360_F_224869519_aRaeLneqALfPNBzg0xxMZXghtvBXkfIA.jpg"), 
                dlticn:IcnBtn(icnBtn:Icon(Icons.delete_rounded,color: Colors.red,), icnOntab:(){}), 
                ttltxt:" what is java ",
                subtxt: "java is a",
                ),
              ]
            ),
          ],
       ),
      )
    );
  }
}