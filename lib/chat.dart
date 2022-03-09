import 'package:afi/Futu.dart';
import 'package:afi/msg.dart';
import 'package:afi/vidow.dart';
import 'package:flutter/material.dart';
import 'GetXRoom.dart';
import 'package:get/get.dart';
import 'colo.dart';

class MessageScreen extends StatefulWidget {
  String idroom;
  String idmy;

  MessageScreen(this.idroom, this.idmy);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  var getxroom = Get.put<GetXRoom>(GetXRoom());

  TextEditingController cony = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: homecolor,
          title: new Text("عافي"),
          leading: Icon(Icons.menu),
          actions: [
            Image.asset("assets/images/logo_white.png"),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(8),
          height: height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                height: height / 18,
                child: Container(
                  decoration: BoxDecoration(
                      color: homecolor,
                      boxShadow: [
                        // BoxShadow(
                        //     color: Colors.black38,
                        //     spreadRadius: 2.5,
                        //     blurRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Container(),
                      Text("متصل الآن"),
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                                width: width / 9,
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/images/telephone-call.png",
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: homecolor, shape: BoxShape.circle),
                                )),
                          ),
                          Container(
                              width: width / 9,
                              child: InkWell(
                                onTap: () {
                                  Get.to(vi());
                                },
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/images/video-camera-with-play-button.png",
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: homecolor, shape: BoxShape.circle),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  width: width / 1.1,
                  height: height / 18,
                ),
              ),
              Positioned(
                top: height / 18,
                bottom: height / 20,
                child: GetBuilder<GetXRoom>(
                    init: getxroom,
                    builder: (_) {
                      getxroom.getbyid(widget.idroom);
                      return Container(
                        height: height / 1.3,
                        width: width,
                        child: ListView.builder(
                            itemCount: getxroom.room.msg.length,
                            itemBuilder: (context, index) {
                              bool type = getxroom.room.msg[index].sendid ==
                                  widget.idmy;
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Container(
                                        height: height / 9,
                                        width: width / 1.5,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            getxroom.room.msg[index].msg,
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700,
                                              color: type
                                                  ? Colors.black
                                                  : Colors.white,
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: type ? hintcolor : homecolor,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                    ),
                                    if (type)
                                      Positioned(
                                        top: 0,
                                        bottom: 0,
                                        left: 0,
                                        child: Container(
                                          height: height / 11,
                                          width: height / 11,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/images/umrah (1).png",
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: hintcolor, width: 3),
                                              color: Colors.white60,
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    if (!type)
                                      Positioned(
                                        top: 0,
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          height: height / 11,
                                          width: height / 11,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/images/doctor.png",
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              border:
                                                  Border.all(color: homecolor),
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                  ],
                                ),
                              );
                            }),
                      );
                    }),
              ),
              Positioned(
                bottom: 0,
                height: height / 20,
                child: Container(
                  height: height / 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: width / 9,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/images/voice.png",
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: homecolor, shape: BoxShape.circle),
                          )),
                      Container(
                          width: width / 9,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/images/video-camera.png",
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: homecolor, shape: BoxShape.circle),
                          )),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: hintcolor,
                        ),
                        width: width / 1.5,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextField(
                              controller: cony,
                              onSubmitted: (b) async {
                                var data = Msg.fromJson({});
                                data.msg = b;
                                data.sendid = widget.idmy;
                                data.roomid = widget.idroom;
                                await Futumsg.addmsg(data);
                                cony.clear();
                              },
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
