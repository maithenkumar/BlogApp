import 'dart:io';
import 'dart:js_interop';
// import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/widgets/tagButton.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/detailsForm.dart';

class BlogWrtingDetails extends StatefulWidget {
  const BlogWrtingDetails({super.key});

  @override
  State<BlogWrtingDetails> createState() => _BlogWrtingDetailsState();
}

class _BlogWrtingDetailsState extends State<BlogWrtingDetails> {
  TextEditingController controller = TextEditingController();
   File image=File('');
  Future imagePicker() async {
    print("this is nll${image}");
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
      print("this is the image path $image");
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () => imagePicker(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    
                      
                      borderRadius: BorderRadius.circular(20),
                      color: Constants.lightBlack),
                  child: image.isDefinedAndNotNull? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Uplod Image"),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(Icons.upload_outlined)
                      ],
                    ),
                  ):Image.file(image),
                ),
              )),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Title",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          BlogDetailsForm(controller: controller),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Discription",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Constants.blackColor,
                    width: 2,
                    style: BorderStyle.solid,
                    strokeAlign: 1),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
                keyboardType: TextInputType.multiline,
                maxLines: null,
                expands: true,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Constants.blackColor,
                  side: BorderSide(
                      color: Constants.lightBlack,
                      width: 0.3,
                      style: BorderStyle.solid,
                      strokeAlign: 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: Text(
                "sumbit",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Constants.whiteColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
