import 'package:flutter/material.dart';
import 'package:pharera/main_up.dart';
import 'package:pharera/Panorama.dart';
import 'package:pharera/register.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool _isHomeSelected = false;
  bool _isVITSelected = false;
  bool _isRegisterSelected = false;

  static final List<Widget> _pages = <Widget>[
    const HomePage(),
    const VITPage(),
    const Register(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _isHomeSelected = index == 0;
      _isVITSelected = index == 1;
      _isRegisterSelected = index == 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          _pages[_selectedIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                margin: const EdgeInsets.only(top: 40),
                width: 10,
                height: screenHeight * 0.09,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent, // Set to transparent
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Container(
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.08,
                        decoration: BoxDecoration(
                           boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(199, 146, 112, 57),
                        ),
                        child: Row(
                          
                          children: [
                          Container(width: screenWidth*0.45,height: screenHeight*0.08,decoration: BoxDecoration(
                            color: const Color.fromARGB(199, 146, 112, 57),
                            borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Center(child:   _buildIconButton(Icons.home, 0, _isHomeSelected),),
                          ),),
                          Container(width:screenWidth*0.45 , decoration: BoxDecoration(color: const Color.fromARGB(199, 146, 112, 57),borderRadius: BorderRadius.circular(20)),
                          height: screenHeight*0.08 ,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Center(child: _buildIconButton(Icons.person_2, 2, _isRegisterSelected)),
                          ),)
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: _builDButton( _isVITSelected)
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, int index, bool isSelected) {
    return GestureDetector(
      onTap: () {
        _onItemTapped(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 30,
            color:  Colors.white ,
          ),
          const SizedBox(height: 4),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? const Color.fromARGB(255, 226, 226, 226) : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
  Widget _builDButton(bool isSelected) {
  return GestureDetector(
    onTap: () {
      _onItemTapped(1);
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
           width: 73,
              height: 60,
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
              
              
              , color:  Color.fromARGB(255, 226, 226, 226),),
          child: Center(
            child: Container(
              width: 60,
              height: 53,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(199, 146, 112, 57),
              ),
              child: Center(
                child:ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/360.png",fit: BoxFit.fill,))
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? const Color.fromARGB(255, 226, 226, 226) : Colors.transparent,
          ),
        ),
      ],
    ),
  );
}


}

 

/*ConvexAppBar(

        items: [
          TabItem(icon: Icon(Icons.home, size: screenHeight * 0.04, color: const Color.fromARGB(255, 226, 226, 226),)),
          TabItem(icon: Icon(Icons.panorama_wide_angle, size: screenHeight * 0.04 , color: const Color.fromARGB(255, 226, 226, 226),)),
          TabItem(icon: Icon(Icons.person_2, size: screenHeight * 0.04 , color: const Color.fromARGB(255, 226, 226, 226),)),
        ],
        backgroundColor: const Color.fromARGB(199, 146, 112, 57),
        activeColor: const Color.fromARGB(199, 146, 112, 57),
        initialActiveIndex: _selectedIndex,
        onTap: _onItemTapped,
        height: screenHeight * 0.07,
      ),*/