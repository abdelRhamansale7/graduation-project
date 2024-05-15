import 'package:flutter/material.dart';
import 'package:pharera/Sign_up.dart';
import 'package:pharera/Text.dart';
import 'package:pharera/sign_in.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pharera/generated/l10n.dart';
class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.099),
                child: Image.asset("assets/images/pharera_login.jpg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.16),
              child: Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignIn()));
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
          child: TextW(
             text: S.of(context).login,
               
          ),
        ),
      ),
    ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.06),
              child: Center(
      child: GestureDetector(
        onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=> const Signuo()));
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
          child: TextW(
             text: S.of(context).signup,
            
          ),
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
