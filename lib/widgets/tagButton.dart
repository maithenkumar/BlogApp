import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

class TagButton extends StatefulWidget {
  const TagButton({super.key, required this.onTab, required this.butColor, required this.text, required this.textColor});
  final VoidCallback onTab;
  final Color butColor;
  final String text;
  final Color textColor;

  @override
  State<TagButton> createState() => _TagButtonState();
}

class _TagButtonState extends State<TagButton> {
   bool onPressed=false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(


        onPressed: (){
          setState(() {
            onPressed?onPressed=false:onPressed=true;
          });
         
        },
        style: ElevatedButton.styleFrom(

          backgroundColor:onPressed==true? widget.butColor:Constants.blackColor,
          side: BorderSide(
            color: Constants.lightBlack
            ,width: 0.3,
            style: BorderStyle.solid,
            strokeAlign: 1

          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )


        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 20,
            color:onPressed==false? widget.textColor:Constants.blackColor,

          ),
        ),);
  }
}
