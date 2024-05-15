import 'package:flutter/material.dart';
import 'package:pharera/Fav_page.dart';
import 'package:pharera/Text.dart';
import 'package:pharera/check.dart';
import 'package:pharera/generated/l10n.dart';
import 'package:pharera/language.dart';
import 'package:pharera/notifacation.dart';
import 'package:pharera/rating.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 226, 226),
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 226, 226, 226),),
      body:  SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.03 , left: screenWidth* 0.009),
            child:  Container(
          width: screenWidth * 0.9,
          height: screenHeight * 0.23,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 226, 226, 226),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3), 
              ),
            ],
          ),
          child:  Column(
            
            children: [
              Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                   padding: EdgeInsets.only(left: screenWidth*0.03),
                   child: const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/person.jpeg'),
                               ),
                               ),
                                TextW(text: S.of(context).pharera ,),
                                const TextW(text: "Pharera@gmail.com" , )
                ],
              ),),
              
            ],
          ),
        ),
          ),
        Padding(
          padding:  EdgeInsets.only(top: screenHeight* 0.04),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Not()));
            },
            child: Container(
              width: screenWidth * 0.9,
              height: screenWidth * 0.13,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 226, 226, 226),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.circle_notifications_outlined , size: 30,),
                  ),
                  TextW(
                   text:  S.of(context).not,
                    
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: screenHeight* 0.04),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const RatingPage()));
            },
            child: Container(
              width: screenWidth * 0.9,
              height: screenWidth * 0.13,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 226, 226, 226),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.star, size: 30,),
                  ),
                  TextW(
                  text:  S.of(context).rate,
                   
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: screenHeight* 0.04),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const favpage()));
            },
            child: Container(
              width: screenWidth * 0.9,
              height: screenWidth * 0.13,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 226, 226, 226),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite, size: 30,),
                  ),
                  TextW(
                   text:  S.of(context).fav,
                   
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: screenHeight* 0.04),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  LanguageList(onLocaleSelected: (Locale ) {},)));
            },
            child: Container(
              width: screenWidth * 0.9,
              height: screenWidth * 0.13,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 226, 226, 226),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.language, size: 30,),
                  ),
                  TextW(
                   text:  S.of(context).language,
                   
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ),
        ),
          
          Padding(
            padding:  EdgeInsets.only(top: screenHeight*0.04 , right: IsArab() ? 0 : screenWidth *0.65 , left: IsArab() ? screenWidth *0.4 : 0 ),
            child: InkWell(
              onTap: (){},
              child: Container(
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.logout , color: Colors.red,), // Icon
                    const SizedBox(width: 8), // Add spacing between icon and text
                    TextW(text:  S.of(context).Logout, ), // Text
                  ],
                ),
              ),
            ),
          ),


        ]),
      ),
    );
  }

  
}
