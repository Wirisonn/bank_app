import 'package:bank_application/screens/login_screen.dart';
import 'package:bank_application/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import 'beneficiary_screen.dart';
import 'home_screen.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 212, 212),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(130, 10, 130, 10),
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
                  Text(
                    "Connect with us",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Please note by clicking on the Contact Us",
                      style: TextStyle(
                        fontSize: 10,
                      )),
                  Text("Icons will take out of the app to our Contact Pages",
                      style: TextStyle(
                        fontSize: 10,
                      )),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                height: 290,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 230, 227, 227),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  color: Colors.blue,
                                  icon: Icon(
                                    Icons.phone,
                                    color: Color.fromARGB(255, 187, 170, 24),
                                  )),
                            ),
                            Text(
                              "Voice Call",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 230, 227, 227),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  color: Colors.blue,
                                  icon: Icon(
                                    Icons.whatsapp,
                                    color: Color.fromARGB(255, 24, 187, 32),
                                  )),
                            ),
                            Text(
                              "Whatsapp",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 230, 227, 227),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  color: Colors.blue,
                                  icon: Icon(
                                    Icons.facebook_rounded,
                                    color: Color.fromARGB(255, 62, 22, 205),
                                  )),
                            ),
                            Text(
                              "Facebook",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 230, 227, 227),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  color: Colors.blue,
                                  icon: Icon(
                                    Icons.camera_enhance,
                                    color: Color.fromARGB(255, 167, 51, 188),
                                  )),
                            ),
                            Text(
                              "Instagram",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 230, 227, 227),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  color: Colors.blue,
                                  icon: Icon(
                                    Icons.flutter_dash,
                                    color: Colors.blue,
                                  )),
                            ),
                            Text(
                              "Twitter",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 230, 227, 227),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  color: Colors.blue,
                                  icon: Icon(
                                    Icons.flutter_dash,
                                    color: Colors.blue,
                                  )),
                            ),
                            Text(
                              "LinkedIn",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 230, 227, 227),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  color: Colors.blue,
                                  icon: Icon(
                                    Icons.flutter_dash,
                                    color: Colors.red,
                                  )),
                            ),
                            Text(
                              "YouTube",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 230, 227, 227),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  color: Colors.blue,
                                  icon: Icon(
                                    Icons.headset_mic,
                                    color: Color.fromARGB(255, 17, 27, 65),
                                  )),
                            ),
                            Text(
                              "Submit A Query",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 230, 227, 227),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  color: Colors.blue,
                                  icon: Icon(
                                    Icons.tag_faces,
                                    color: Colors.orange,
                                  )),
                            ),
                            Text(
                              "Developer",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
