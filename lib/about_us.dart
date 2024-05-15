import 'package:flutter/material.dart';
import 'package:pharera/Text.dart';
import 'package:pharera/generated/l10n.dart';

class aboutus extends StatelessWidget {
  const aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 226, 226, 226),),
     backgroundColor: const Color.fromARGB(255, 226, 226, 226),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children:[ Stack(
            children: <Widget>[
            SafeArea(child: Padding(
              padding:  EdgeInsets.only(top: screenHeight * 0.01),
              child: Image.asset("assets/images/app_photo.jpg"),
            )),
            
               Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.39,left: screenWidth * 0.06),
                child:  Expanded(
                  child: Text(
                    S.of(context).Our, style: const TextStyle(fontSize: 26, color: Colors.black , fontWeight: FontWeight.w500),
                  ))
              )
            ],
          ),]
        ),
      ),
    );
  }
}