import 'package:flutter/material.dart';
import 'package:pharera/Text.dart';
import 'package:pharera/check.dart';
import 'package:pharera/generated/l10n.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 226, 226),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 226, 226),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           
            SizedBox(height: screenHeight * 0.2),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.1),
              child: Column(
               
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: IsArab()? screenHeight * 0.02 : 0 ),
                    child: Row(
                      children: [
                       TextW(text: S.of(context).email ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  SizedBox(
                    width: screenWidth * 0.8,
                    child: TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.015,
                          horizontal: screenWidth * 0.04,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                   Padding(
                     padding: EdgeInsets.only(right: IsArab()? screenHeight * 0.02 : 0 ),
                     child: Row(
                      children: [
                       TextW(text:  S.of(context).password),
                      ],
                                       ),
                   ),
                  SizedBox(height: screenHeight * 0.01),
                  SizedBox(
                    width: screenWidth * 0.8,
                    child: TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.015,
                          horizontal: screenWidth * 0.04,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  TextButton(
                    onPressed: () {},
                    child:  Padding(
                      padding:  EdgeInsets.only(right: IsArab()? screenHeight * 0.02 : 0 ),
                      child: Row(
                        children: [
                          TextW(text: S.of(context).Forget ),
                        ],
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.04 , left: IsArab()? 0 : screenHeight * 0.02 , right: IsArab()? screenHeight * 0.06 : 0 ),
                    child:Row(
  children: [
    Center(
      child: GestureDetector(
        onTap: () {
          // Add your onTap functionality here
        },
        child: Container(
          width: 300,
          height: 70,
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
             text: S.of(context).login, // Text color
            
          ),
        ),
      ),
    ),
  ],
),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
