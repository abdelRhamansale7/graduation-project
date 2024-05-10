import 'package:flutter/material.dart';
import 'package:flutter_application_09/Fav_page.dart';
import 'package:flutter_application_09/Profile.dart';
import 'package:flutter_application_09/about_us.dart';
import 'package:flutter_application_09/contact.dart';
import 'package:flutter_application_09/notifacation.dart';
import 'package:flutter_application_09/pharaohs.dart';
import 'package:flutter_application_09/pharaohss.dart';
import 'package:flutter_application_09/raiting.dart';
import 'package:flutter_application_09/test.dart';
import 'package:flutter_application_09/ticket.dart';
import 'package:flutter_application_09/tut.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tab;

  @override
  void initState() {
    super.initState();
    tab = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Calculate font size based on screen width
    final double drawerHeaderFontSize = screenWidth * 0.05;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 226, 226, 226),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 226, 226, 226),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.01, left: screenWidth * 0.01),
              child: Container(
                width: screenWidth * 0.2,
                height: screenHeight * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.04),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Not()),
                    );
                  },
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(screenWidth * 0.04),
                    child: Image.asset(
                      "assets/images/notification.jpg",
                      width: screenWidth * 0.16,
                      height: screenWidth * 0.16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        drawer: Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.05),
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(199, 146, 112, 57),
                  ),
                  child: Text(
                    'WELCOME!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: drawerHeaderFontSize,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home_filled),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyHomePage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text('About Us'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AboutUs()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.contact_phone),
                  title: const Text('Contact Us'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TabPage()),
                    );
                  },
                ),

                ListTile(
                  leading: const Icon(Icons.star),
                  title: const Text('Rate'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RatingPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.01),
              child: Text(
                'WELCOME TO THE GEM',
                style: TextStyle(
                  fontSize: screenWidth * 0.07, // Adjust text size according to screen width
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01,width: 50,),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.03),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(screenWidth * 0.05), // Adjust border radius according to screen width
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.03),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      tab.animateTo(0);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(screenWidth * 0.05),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Groub(),
                            ),
                                (route) => false,
                          );
                        },
                        child: Image.asset(
                          "assets/images/phh.jpg",
                          width: screenWidth * 0.232,
                          height: screenWidth * 0.225,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.01),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Tut(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(screenWidth * 0.05),
                        child: Image.asset(
                          "assets/images/exx.jpg",
                          width: screenWidth * 0.25,
                          height: screenWidth * 0.225,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.016),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Ticket(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(screenWidth * 0.05),
                        child: Image.asset(
                          "assets/images/ti.jpg",
                          width: screenWidth * 0.25,
                          height: screenWidth * 0.225,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.013),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const favpage(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(screenWidth * 0.05),
                        child: Image.asset(
                          "assets/images/fa.jpg",
                          width: screenWidth * 0.25,
                          height: screenWidth * 0.25,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: tab.index,
                children: [
                  Pharaohs(),
                  const Tut(),
                  const Ticket(),
                  const favpage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    tab.dispose();
    super.dispose();
  }
}