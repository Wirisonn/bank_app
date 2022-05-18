import 'package:bank_application/screens/create_profile_screen.dart';
import 'package:bank_application/screens/login_screen.dart';
import 'package:bank_application/screens/new_acc_screen.dart';
import 'package:flutter/material.dart';

class PreLoginScreen extends StatefulWidget {
  const PreLoginScreen({Key? key}) : super(key: key);

  @override
  State<PreLoginScreen> createState() => _PreLoginScreenState();
}

class _PreLoginScreenState extends State<PreLoginScreen> {
  @override
  Widget build(BuildContext context) {
    final signInButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: Color.fromARGB(255, 4, 29, 50),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );

    final profileButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateProfile()));
        },
        child: Text(
          "Create Profile",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken)),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            height: 100,
                            child: Image.asset(
                              "assets/logo.JPG",
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  "NMB",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Connect",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 209, 192, 48),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Welcome to NMBConnect",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 6, 59, 102)),
                          ),
                          Text(
                            "Your Digital Bank",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 6, 59, 102),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    signInButton,
                    SizedBox(
                      height: 40,
                    ),
                    profileButton,
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 40,
                            height: 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewAccount()));
                            },
                            child: Text(
                              "OPEN NEW NMB ACCOUNT",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 209, 192, 48),
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
