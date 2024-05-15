import 'package:flutter/material.dart';
import 'package:pharera/Text.dart';
import 'package:pharera/generated/l10n.dart';
class DiscountPage extends StatelessWidget {
  const DiscountPage({super.key});

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:   const Color.fromARGB(255, 226, 226, 226),
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 226, 226, 226),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
           
            children: <Widget>[
               TextW(
                text: S.of(context).Ticket_dis,
              ),
              const SizedBox(height: 20.0),
              SizedBox(width: 300,height: 200,
                child: Image.asset("assets/images/ticket2.png",fit: BoxFit.fill,)), // Replace with your image asset
              const SizedBox(height: 20.0),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [TextW( text: S.of(context).adult,), Row(
                  children: [
                    const TextW( text: "100",),
                    const SizedBox(width: 5,),
                     TextW( text: S.of(context).L_e,),
                  ],
                ) ],),
                const SizedBox(height: 20,),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [TextW( text:S.of(context).student,), Row(
                  children: [
                    const TextW( text: "30",),
                    const SizedBox(width: 5,),
                     TextW( text: S.of(context).L_e,),
                  ],
                ) ],),
                const SizedBox(height: 20,),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [TextW( text: S.of(context).senior),Row(
                  children: [
                    const TextW( text: "75",),
                    const SizedBox(width: 5,),
                     TextW( text: S.of(context).L_e,),
                  ],
                ) ],),
                const SizedBox(height: 20,),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [TextW( text: S.of(context).youth,), Row(
                  children: [
                    const TextW( text: "50",),
                    const SizedBox(width: 5,),
                     TextW( text: S.of(context).L_e,),
                  ],
                ) ],),
              const SizedBox(height: 50.0),
              Center(
      child: GestureDetector(
        onTap: () {
          // Add your onTap functionality here
        },
        child: Container(
          width: 250,
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
             text: S.of(context).pay, // Text color
            
          ),
        ),
      ),
    ),
            ],
          ),
        ),
      ),
    );
  }
}