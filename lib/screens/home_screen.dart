import 'package:bank_application/models/appbanner.dart';
import 'package:bank_application/models/banner_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final connectorServices = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(10),
      color: Color.fromARGB(255, 236, 236, 238),
      child: MaterialButton(
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Icon(Icons.settings_sharp),
            SizedBox(
              height: 6,
            ),
            Text(
              "Connector",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 4, 93, 133)),
            ),
            Text(
              "Services",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 4, 93, 133)),
            )
          ],
        ),
      ),
    );

    final virtualBranch = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(10),
      color: Color.fromARGB(255, 236, 236, 238),
      child: MaterialButton(
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Icon(
              Icons.door_sliding_sharp,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Connector",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 4, 93, 133)),
            ),
            Text(
              "Services",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 4, 93, 133)),
            )
          ],
        ),
      ),
    );

    final schoolFees = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(10),
      color: Color.fromARGB(255, 236, 236, 238),
      child: MaterialButton(
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Icon(Icons.settings),
            SizedBox(
              height: 6,
            ),
            Text(
              "Connector",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 4, 93, 133)),
            ),
            Text(
              "Services",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 4, 93, 133)),
            )
          ],
        ),
      ),
    );

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
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.power_settings_new),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 236, 236, 238),
          shape: CircularNotchedRectangle(),
          notchMargin: 0,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 40,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                iconSize: 30,
              ),
              SizedBox(
                width: 40,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.people),
                iconSize: 30,
              ),
              SizedBox(
                width: 40,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.headset_mic),
                iconSize: 30,
              ),
              SizedBox(
                width: 40,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
                iconSize: 30,
              ),
            ],
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 217, 216, 216),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 60,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Good Afternoon, Wilson",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 4, 29, 50),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 200,
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  itemCount: appBannerList.length,
                  itemBuilder: (context, index) {
                    var banner = appBannerList[index];
                    var _scale = _selectedIndex == index ? 1.0 : 0.8;
                    return TweenAnimationBuilder(
                      duration: const Duration(milliseconds: 350),
                      curve: Curves.easeIn,
                      tween: Tween(begin: _scale, end: _scale),
                      child: BannerItem(),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: 1,
                          child: child,
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                width: 370,
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.black)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    connectorServices,
                    SizedBox(
                      width: 20,
                    ),
                    virtualBranch,
                    SizedBox(
                      width: 20,
                    ),
                    schoolFees,
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 224.9,
                width: 350,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.app_blocking,
                                size: 40,
                                color: Color.fromARGB(255, 187, 170, 24),
                              ),
                              Text(
                                "Internal Transfer",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 4, 93, 133)),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.app_blocking,
                                size: 40,
                                color: Color.fromARGB(255, 187, 170, 24),
                              ),
                              Text(
                                "Internal Transfer",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 4, 93, 133)),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.app_blocking,
                                size: 40,
                                color: Color.fromARGB(255, 187, 170, 24),
                              ),
                              Text(
                                "Internal Transfer",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 4, 93, 133)),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.app_blocking,
                                size: 40,
                                color: Color.fromARGB(255, 187, 170, 24),
                              ),
                              Text(
                                "Internal Transfer",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 4, 93, 133)),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.app_blocking,
                                size: 40,
                                color: Color.fromARGB(255, 187, 170, 24),
                              ),
                              Text(
                                "Internal Transfer",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 4, 93, 133)),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.app_blocking,
                                size: 40,
                                color: Color.fromARGB(255, 187, 170, 24),
                              ),
                              Text(
                                "Internal Transfer",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 4, 93, 133)),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.app_blocking,
                                size: 40,
                                color: Color.fromARGB(255, 187, 170, 24),
                              ),
                              Text(
                                "Internal Transfer",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 4, 93, 133)),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.app_blocking,
                                size: 40,
                                color: Color.fromARGB(255, 187, 170, 24),
                              ),
                              Text(
                                "Internal Transfer",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 4, 93, 133)),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.app_blocking,
                                size: 40,
                                color: Color.fromARGB(255, 187, 170, 24),
                              ),
                              Text(
                                "Internal Transfer",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 4, 93, 133)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
