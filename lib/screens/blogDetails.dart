import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import '../widgets/appbar.dart';

class BologDetails extends StatefulWidget {
  const BologDetails({super.key});

  @override
  State<BologDetails> createState() => _BologDetailsState();
}

class _BologDetailsState extends State<BologDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.blackColor,
      appBar: HomeAppbar(
        title: "Blog Post",
        front: Icon(
          Icons.arrow_back_ios,
          color: Constants.whiteColor,
        ),
        last: Icon(
          Icons.more_horiz_outlined,
          color: Constants.whiteColor,
        ),
        bgColor: Constants.blackColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom:40 ),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "MAITHEEN",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Constants.whiteColor,
                                  ),
                                ),
                                Text(
                                  "why sex is so important",
                                  style: TextStyle(color: Constants.lightBlack),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "why is ye important in main memory",
                    style: TextStyle(
                      color: Constants.whiteColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    """his app is linked to the debug service: ws://127.0.0.1:35633/J1KAlluRwww=/ws
                Debug service listening on ws://127.0.0.1:35633/J1KAlluRwww=/ws
                Connecting to VM Service at ws://127.0.0.1:35633/J1KAlluRwww=/ws
                ══╡ EXCEPTION CAUGHT BY RENDERING LIBRARY ╞═════════════════════════════════════════════════════════
                The following assertion was thrown during layout:
                his app is linked to the debug service: ws://127.0.0.1:35633/J1KAlluRwww=/ws
                Debug service listening on ws://127.0.0.1:35633/J1KAlluRwww=/ws
                Connecting to VM Service at ws://127.0.0.1:35633/J1KAlluRwww=/ws
                ══╡ EXCEPTION CAUGHT BY RENDERING LIBRARY ╞═════════════════════════════════════════════════════════
                The following assertion was thrown during layout:
                his app is linked to the debug service: ws://127.0.0.1:35633/J1KAlluRwww=/ws
            
                
                """,
                    style: TextStyle(
                      color: Constants.lightBlack,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
                color: Constants.blackColor,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.heart_broken, size: 30,
                      color: Constants.redColor,
                    ),
                    Icon(
                      Icons.comment_bank_outlined, size: 30,
                      color: Constants.lightBlack,
                    ),
                    Icon(
                      Icons.send_outlined, size: 30,
                      color: Constants.lightBlack,
                    ),
                    Icon(
                      Icons.bookmark_add_outlined, size: 30,
                      color: Constants.lightBlack,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
