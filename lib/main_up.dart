import 'package:flutter/material.dart';
import 'package:pharera/Fav_page.dart';
import 'package:pharera/Profile.dart';
import 'package:pharera/Text.dart';
import 'package:pharera/about_us.dart';
import 'package:pharera/contact_us.dart';
import 'package:pharera/generated/l10n.dart';
import 'package:pharera/notifacation.dart';
import 'package:pharera/popular_pharaoh.dart';
import 'package:pharera/pharaohs.dart';
import 'package:pharera/ticket.dart';
import 'package:pharera/exibition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tab;

  @override
  void initState() {
    super.initState();
    tab = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 226, 226),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 226, 226),
       actions:  [
  Padding(
    padding: EdgeInsets.only(right: screenWidth *0.03),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>  const Not()));
      },
      child: const Icon(Icons.circle_notifications_outlined, size: 40,)),
  )
],

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
  decoration: BoxDecoration(
    color: Color.fromRGBO(146, 112, 57, 0.78),
    image: DecorationImage(
      image: AssetImage('assets/images/app_photo.jpg'),
      fit: BoxFit.fill, // You can adjust the BoxFit as needed
    ),
  ),
  child: Text(''),
  
    ), 
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 226, 226, 226),
              
                child: Column(children: [
                ListTile(
                  leading: const Icon(Icons.home),
                  title: TextW(text: S.of(context).home,),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.info),
                  title:  TextW( text: S.of(context).ABOUT,),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const aboutus()));
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.contact_phone),
                  title:  TextW(text: S.of(context).contact),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const TabPage()));
                  },
                ),
                const Divider(),
                 ListTile(
                  leading: const Icon(Icons.person),
                  title:  TextW(text: S.of(context).profile),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ProfilePage()));
                  },
                ),
                const Divider(),
                const ListTile(),
                const ListTile(),
                const ListTile(),
                const ListTile(),
                const ListTile(),
                const ListTile(),
                          ]),
              ),),
          
            
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.1, 
            child:  TextW(text: S.of(context).Welcome,)
          ),
           Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.005),
            child: SizedBox(
              width: screenWidth * 0.95,
              child:  Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search),
                    hintText: S.of(context).search,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100.0),
                      ),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding:  EdgeInsets.only(top: screenHeight *0.004),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      tab.animateTo(0);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Groub(),
                                ),
                                (route) => false);
                          },
                          child: Image.asset("assets/images/pharahos.jpg",
                              width: 93, height: 95, fit: BoxFit.contain)),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(bottom: screenHeight * 0.009),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Tut()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset("assets/images/exibition.jpg",
                            width: 100, height: 90, fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: screenHeight * 0.019),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  const DiscountPage()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset("assets/images/ticket.jpg",
                            width: 100, height: 100, fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: screenHeight *0.02),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const favpage()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset("assets/images/faviorate.jpg",
                            width: 100, height: 105, fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: tab.index,
              children: [
                PharaohsScreen(),
                const Tut(),
                 const DiscountPage(),
                const favpage(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    tab.dispose();
    super.dispose();
  }
}
