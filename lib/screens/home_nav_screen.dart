import 'package:bank_application/models/tab_bar.dart';
import 'package:bank_application/screens/login_screen.dart';
import 'package:bank_application/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import 'beneficiary_screen.dart';
import 'contact_screen.dart';
import 'home_screen.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({Key? key}) : super(key: key);

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int index = 0;
  final pages = <Widget>[
    HomeScreen(),
    BeneficiaryScreen(),
    ContactUs(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 11, 52, 85),
          centerTitle: true,
          title: Icon(
            Icons.link,
            size: 50,
            color: Color.fromARGB(255, 187, 170, 24),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              icon: Icon(Icons.power_settings_new),
            )
          ],
        ),
        body: pages[index],
        bottomNavigationBar: TabBarMaterial(index, onChangedTab));
  }

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}
