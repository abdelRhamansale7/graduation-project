import 'package:flutter/material.dart';
import 'package:pharera/Fav_but.dart';
import 'package:pharera/check.dart';

class TutPic extends StatelessWidget {
  const TutPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 226, 226),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               SizedBox(height: screenHeight * 0.03),
                SizedBox(
                  height: screenHeight * 0.78, 
                  child: ListView.separated(
                    itemCount: 3, 
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: screenHeight * 0.03);
                    },
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: IsArab()? 0:screenWidth * 0.02,right: IsArab()? screenWidth * 0.08:0),
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth * 0.85,
                              height: screenHeight * 0.32, 
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.black,
                              ),
                              
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left:screenWidth*0.7 ),
                              child: const HeartIconButton(),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
