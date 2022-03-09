import 'package:afi/Futu.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'msg.dart';
import 'room.dart';

class GetXRoom extends GetxController {
  List<Room> data = [];
  Room room = Room.fromJson({});

  var dbmsgs = FirebaseFirestore.instance.collection("msg");

  getbyid(String id) async {
    room = await FutuRoom.Getbyid(id);
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    init();
  }

  init() async {
    data.addAll(await FutuRoom.Getroom("ids"));
    update();

    dbmsgs.snapshots().listen((event) {
      print(event.docs.length);
      for (int i = 0; i < event.docs.length; i++) {
        var elements = event.docs[i];
        var value = Msg.fromJson(elements.data());
        var t = data.firstWhereOrNull((element) => element.id == value.roomid);
        if (t == null) continue;
        value.id = elements.id;
        t.msg.add(value);
        data[data.indexWhere((element) => element.id == value.roomid)] = t;
        update();
      }
    });
  }
}
