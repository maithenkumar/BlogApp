import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button( {super.key, required this.onTab, required this.btnColor, required this.btnText, required this.textColor, required this.btnwdt, required this.btnhgt, });
  final Function onTab;
  final Color btnColor;
  final String btnText;
  final Color textColor;
  final double btnwdt;
  final double btnhgt;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab(),
      child: Container(
        width:btnwdt,
        height: btnhgt,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: btnColor
        ),
        child: Center(
          child: Text(btnText,
          textAlign: TextAlign.center,
              style: TextStyle(
          color: textColor,
          fontSize: 15,
              ),
              ),
        ),
      ),
    );
  }
}

class IcnBtn extends StatelessWidget {
  const IcnBtn({super.key, required this.icnBtn, required this.icnOntab});
  
  final Widget icnBtn;
  final Function icnOntab;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: icnOntab(),
      icon: icnBtn,
    );
  }
}