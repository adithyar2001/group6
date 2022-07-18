import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'edit_profile.dart';
import 'main.dart';
class ProfileUI2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("add you image URL here "),
                      fit: BoxFit.cover)),
              child: Container(
                width: double.infinity,
                height: 100,
                child: Container(
                  alignment: const Alignment(0.0, 2.5),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/8/80/PM_at_First_Meeting_of_Central_Asia_Summit.jpg"),
                    radius: 40.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "NAME:VISHNU K",
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.blueGrey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "COLLEGE:college of enginnering,tly",
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "ROUTE",
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            // const Text(
            //   "COLLEGE:college 0f enginnering,tly",
            //   style: TextStyle(
            //       fontSize: 15.0,
            //       color: Colors.black45,
            //       letterSpacing: 2.0,
            //       fontWeight: FontWeight.w300),
            // ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder:(context) => SettingsUI()));
              },
              child: const Text('Edit profile'),
            ),
            /* Card(
                  margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                  elevation: 2.0,
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
                      child: Text("Edit profile",style: TextStyle(
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w300
                      ),))
              ),*/
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
