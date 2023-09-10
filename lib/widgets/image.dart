import 'package:flutter/material.dart';

class GglImg extends StatelessWidget {
  const GglImg({super.key,  required this.imgUrl});
final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: Image.network(imgUrl),
    );
  }
}

class prfImg extends StatelessWidget {
  const prfImg({super.key, required this.prfimg});
  
  final String prfimg;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(200.0)),
      color: Colors.redAccent,
      
      ),
      child: CircleAvatar(backgroundImage: NetworkImage(prfimg),)
      
    );
  }
}

class blgImg extends StatelessWidget {
  const blgImg({super.key, required this.blgimg,});

  final String blgimg; 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child:Image.network(blgimg,
      height: 70 ,
      width: 70,
      ),
    );
  }
}