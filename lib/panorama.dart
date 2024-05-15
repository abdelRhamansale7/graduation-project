import 'package:flutter/material.dart';
import 'package:pharera/Text.dart';
import 'package:pharera/generated/l10n.dart';

class VITPage extends StatelessWidget {
  const VITPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 226, 226),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 10), // Fixed padding in pixels
                child: Image.asset("assets/images/app_photo.jpg", width: screenWidth * 0.8), // Adjust width as needed
              ),
            ),
            const SizedBox(height: 30), // Fixed height in pixels
            Center(
      child: GestureDetector(
        onTap: () {
          // Add your onTap functionality here
        },
        child: Container(
          width: 300,
          height: 80,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color.fromARGB(199, 146, 112, 57), Color.fromARGB(169, 255, 255, 255) ,Color.fromARGB(199, 146, 112, 57),], // Gradient colors from gold to white
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3), // Shadow position
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
          alignment: Alignment.center,
          child: TextW(
             text: S.of(context).Ex, // Text color
            
          ),
        ),
      ),
    ),
            const SizedBox(height: 30), // Fixed height in pixels
            Center(
      child: GestureDetector(
        onTap: () {
          // Add your onTap functionality here
        },
        child: Container(
          width: 350,
          height: 90,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color.fromARGB(199, 146, 112, 57), Color.fromARGB(169, 255, 255, 255) ,Color.fromARGB(199, 146, 112, 57),], // Gradient colors from gold to white
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3), // Shadow position
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
          alignment: Alignment.center,
          child:  TextW(
             text: S.of(context).GUID, // Text color
            
          ),
        ),
      ),
    ),
          ],
        ),
      ),
    );
  }
}
