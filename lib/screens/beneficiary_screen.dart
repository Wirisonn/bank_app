import 'package:bank_application/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'contact_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

class BeneficiaryScreen extends StatefulWidget {
  const BeneficiaryScreen({Key? key}) : super(key: key);

  @override
  State<BeneficiaryScreen> createState() => _BeneficiaryScreenState();
}

class _BeneficiaryScreenState extends State<BeneficiaryScreen> {
  @override
  Widget build(BuildContext context) {
    final addBen = Material(
      elevation: 5,
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () {},
        child: Row(
          children: [
            Icon(Icons.person_add_alt_1_rounded),
            SizedBox(
              width: 30,
            ),
            Text(
              "Add Beneficiary",
              style: TextStyle(
                color: Color.fromARGB(255, 11, 61, 102),
              ),
            ),
          ],
        ),
      ),
    );

    final transBen = Material(
      elevation: 2,
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () {},
        child: Row(
          children: [
            Icon(Icons.credit_card),
            SizedBox(
              width: 30,
            ),
            Text(
              "Transfer Beneficiaries",
              style: TextStyle(
                color: Color.fromARGB(255, 11, 61, 102),
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
      ),
    );

    final billBen = Material(
      elevation: 2,
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () {},
        child: Row(
          children: [
            Icon(Icons.file_copy),
            SizedBox(
              width: 30,
            ),
            Text(
              "Bill Beneficiaries",
              style: TextStyle(
                color: Color.fromARGB(255, 11, 61, 102),
              ),
            ),
            SizedBox(
              width: 100,
            ),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
      ),
    );

    final airBen = Material(
      elevation: 2,
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () {},
        child: Row(
          children: [
            Icon(Icons.file_copy),
            SizedBox(
              width: 30,
            ),
            Text(
              "Airtime Beneficiaries",
              style: TextStyle(
                color: Color.fromARGB(255, 11, 61, 102),
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
      ),
    );

    final refreshBen = Material(
      elevation: 5,
      color: Color.fromARGB(255, 11, 61, 102),
      borderRadius: BorderRadius.circular(40),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () {},
        child: Text(
          "Refresh Beneficiaries",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 212, 212),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(145, 50, 145, 50),
              alignment: Alignment.center,
              height: 180,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 12, 47, 77), width: 5),
                  shape: BoxShape.circle),
              child: Icon(
                Icons.person,
                color: Color.fromARGB(255, 187, 170, 24),
                size: 75,
              ),
            ),
            Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    addBen,
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Color.fromARGB(255, 216, 215, 215)))),
                    ),
                    transBen,
                    SizedBox(
                      height: 20,
                    ),
                    billBen,
                    SizedBox(
                      height: 20,
                    ),
                    airBen
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              height: 50,
              width: 300,
              color: Colors.transparent,
              child: refreshBen,
            ),
          ],
        ),
      ),
    );
  }
}
