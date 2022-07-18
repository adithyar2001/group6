//app
import 'package:app_int/settings.dart';
import 'package:flutter/material.dart';
import './ProfileU12.dart';
import 'edit_profile.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Bottom NavBar Demo',
      theme: ThemeData(
        primaryColor:  Colors.black87,
        splashColor: Colors.transparent,
        highlightColor: Colors.grey,
        hoverColor: Colors.grey[260],     //selection colour
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  final pages = [
    Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
    const Page6(),
    const Page7(),
    const Page8(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        actions: [
          Icon(Icons.search,
              color: Theme.of(context).primaryColor
          ),
          IconButton(
            icon:Icon(Icons.more_vert,
                color: Theme.of(context).primaryColor
            ),
            onPressed: (){
              setState(() {
                pageIndex = 4;
              });
            },
          )
        ],

        // title: Text(
        // "hello",
        // style: TextStyle(
        //    color: Theme.of(context).primaryColor,
        //  fontSize: 25,
        //   fontWeight: FontWeight.w600,
        // ),
        //),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      drawer: Drawer(
        width: 200,           //drawer
        child: ListView(                  //drawer items
          padding: EdgeInsets.zero,
          children: [
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.purpleAccent,
            //   ),
            //   child: Text('Drawer Header'),
            // ),
            Container(
              width: double.infinity,
              height: 150,
          decoration: BoxDecoration(
                 color: Colors.purpleAccent,
               ),
              child: Container(
                alignment: const Alignment(0.0, 0.0),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/8/80/PM_at_First_Meeting_of_Central_Asia_Summit.jpg"),
                  radius: 35.0,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Scan QR Code'),
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Transactions'),
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Wallet'),
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title:const Text('Edit profile'),
              onTap: () {
                setState(() {
                  pageIndex = 7;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title:const Text('settings'),
              onTap: () {
                setState(() {
                  pageIndex = 4;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title:const Text('Help'),
              onTap: () {
                setState(() {
                  pageIndex = 5;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title:const Text('About us'),
              onTap: () {
                setState(() {
                  pageIndex = 6;
                });
                Navigator.pop(context);           //drawer items
              },
            ),
            ListTile(
              leading:const Icon(Icons.logout),
              title: const Text('Log out'),
              onTap: () {
                Navigator.pop(context);           //drawer items
              },
            ),
          ],
        ),

      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),

    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,          //bottom navigation bar
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(               //bottom navigation buttons
              Icons.home_filled,
              color: Colors.purpleAccent,
              size: 35,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.purpleAccent,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.currency_exchange_sharp,
              color: Colors.purpleAccent,
              size: 35,
            )
                : const Icon(
              Icons.currency_exchange_outlined,
              color: Colors.purpleAccent,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.qr_code_scanner_rounded,
              color: Colors.purpleAccent,
              size: 35,
            )
                : const Icon(
              Icons.qr_code,
              color: Colors.purpleAccent,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 7;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
              Icons.person,
              color: Colors.purpleAccent,
              size: 35,
            )
                : const Icon(
              Icons.person_outline,
              color: Colors.purpleAccent,               //bottom navigation buttons
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
class Page1 extends StatelessWidget {
  //const Page1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfileUI2(),
    );
  }
}
class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(                             //page2
      color: Colors.white,
      child: Center(
        child: Text(
          "Wallet & Transactions",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(                               //page3
      color: Colors.white,
      child: Center(
        child: Text(
          "QR Code Payment",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(                                 //page 4
      color: Colors.white,
      child: Center(
        child: Text(
          "user information",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SettingsPage(),
    );
  }
}
class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {                    //page6
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Help",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {                    //page7
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "About us",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SettingsUI(),
    );
  }
}