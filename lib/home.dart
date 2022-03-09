import 'package:afi/chat.dart';
import 'package:flutter/material.dart';
import 'colo.dart';
import 'package:url_launcher/url_launcher.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: homecolor,
          title: new Text("عافي"),
          leading: Icon(Icons.menu),
          actions: [
            Image.asset("assets/images/logo_white.png"),
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: homecolor,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              spreadRadius: 2.5,
                              blurRadius: 5)
                        ],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    height: height / 1.5,
                    width: width / 5,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset("assets/images/home.png"),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Image.asset("assets/images/user.png"),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                              "assets/images/medical-prescription.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset("assets/images/user.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset("assets/images/chat.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset("assets/images/logout.png"),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: width / 3,
                        width: width / 3,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset("assets/images/hospital.png",
                                    height: height / 10),
                                Text(
                                  "الزيارات السابقة",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: homecolor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 3)
                            ],
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      Container(
                        height: width / 3,
                        width: width / 3,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset("assets/images/place.png",
                                    height: height / 10),
                                Text(
                                  "اقرب صيدلية",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: homecolor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 3)
                            ],
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        height: height / 50,
                      ),

                      //
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (c) => MessageScreen("any", "ids"),
                                  ));
                            },
                            child: Container(
                              height: width / 3,
                              width: width / 3,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset("assets/images/p5.png",
                                          height: height / 10),
                                      Text(
                                        "إرشادات وزارة الصحة",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: homecolor,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 2,
                                        blurRadius: 3)
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (c) => MessageScreen("any", "ids"),
                              ));
                        },
                        child: Container(
                          height: width / 3,
                          width: width / 3,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset("assets/images/medical.png",
                                      height: height / 10),
                                  Text(
                                    "طلب استشارة",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: homecolor,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 2,
                                    blurRadius: 3)
                              ],
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      Container(
                        height: width / 3,
                        width: width / 3,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (c) =>
                                      MessageScreen("any", "master"),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset("assets/images/placeholder.png",
                                      height: height / 10),
                                  Text(
                                    "اقرب وجهة صحية",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: homecolor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 3)
                            ],
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      Container(
                        height: width / 3,
                        width: width / 3,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset("assets/images/heartbeat.png",
                                    height: height / 10),
                                Text(
                                  "مؤشرات حيوية",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: homecolor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 3)
                            ],
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: width / 50,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
