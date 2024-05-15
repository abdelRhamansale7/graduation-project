import 'package:flutter/material.dart';
import 'package:pharera/Text.dart';
import 'package:pharera/check.dart';
import 'package:pharera/generated/l10n.dart';
import 'package:pharera/sign_in.dart';

class Signuo extends StatelessWidget {
  const Signuo({Key? key}) : super(key: key);

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
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              SizedBox(height: screenHeight * 0.1),
              Column(
                
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.1,
                      top: screenHeight * 0.01,
                      right: IsArab()? screenHeight * 0.04 : 0
                    ),
                    child:  Row(
                      children: [
                       TextW(text: S.of(context).firstname,  )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.009,left: screenWidth * 0.07),
                    child: SizedBox(
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.1,
                      top: screenHeight * 0.01,
                      right: IsArab()? screenHeight * 0.04 : 0
                    ),
                    child:  Row(
                      children: [
                       TextW(text: S.of(context).email ,  )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.009,left: screenWidth * 0.07),
                    child: SizedBox(
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.1,
                      top: screenHeight * 0.01,
                      right: IsArab()? screenHeight * 0.04 : 0
                    ),
                    child:  Row(
                      children: [
                        TextW(text:S.of(context).password,  )
                      ],
                    ),
                  ),
                 
                  Padding(
                    padding:EdgeInsets.only(top: screenHeight * 0.009,left: screenWidth * 0.07),
                    child: SizedBox(
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.1,
                      top: screenHeight * 0.02,
                      right: IsArab()? screenHeight * 0.04 : 0
                    ),
                    child:  Expanded(
                      child: Row(
                        children: [
                          TextW(text: S.of(context).Conform,  )
                        ],
                      ),
                    ),
                  ),
              
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.009,left: screenWidth * 0.07),
                    child: SizedBox(
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.04 , right: IsArab()? screenHeight * 0.06 : 0, left:  IsArab()? 0 : screenHeight * 0.07),
                    child: Row(
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
          child:  TextW(text: S.of(context).signup,  ),
        ),
      ),
    ),
  ],
),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth * 0.1,
                          top: screenHeight * 0.05,
                        ),
                        child:  Padding(
                          padding:  EdgeInsets.only(right: IsArab()? screenHeight * 0.02 : 0 ),
                          child: TextW(text: S.of(context).haveaccount,  ),
                        )
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: screenHeight*0.05 , left: IsArab()? 0 : screenHeight*0.02),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignIn()),
                            );
                          },
                          child:  TextW(text: S.of(context).login,  )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
