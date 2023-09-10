import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({super.key, required this.hnttxt, required this.lbltext, required this.icon, required this.torf});

  final String hnttxt;
  final String lbltext;
  final bool torf;
  final Icon icon;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: torf,
       decoration: InputDecoration( 

                            hintText: hnttxt,
                            labelText: lbltext,
                            prefixIcon: icon,
                            labelStyle: TextStyle(
                                fontSize: 15, color: Colors.grey.shade400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))
                            ),
                                
    );
    
  }
}