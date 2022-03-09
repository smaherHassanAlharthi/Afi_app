import 'package:afi/msg.dart';
import 'package:afi/room.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Futumsg {
  Futumsg() {}

  static var dbmsg = FirebaseFirestore.instance.collection("msg");

  static Future<List<Msg>> Getmsg(String id) async {
    List<Msg> datas = [];

    (await dbmsg.where("roomid", isEqualTo: id).get()).docs.forEach((element) {
      Map<String, dynamic> json = element.data();

      json.addAll({"id": element.id});
      // print(json);

      datas.add(Msg.fromJson(json));
    });
    return datas;
  }

  static Future<bool> addmsg(Msg data) async {
    dbmsg.add(data.toJson());
    return true;
  }
}

class FutuRoom {
  static var dbRoom = FirebaseFirestore.instance.collection("Room");

  static Future<List<Room>> Getroom(String id) async {
    List<Room> datas = [];
    (await dbRoom
            .where("sendid", isEqualTo: id)
            .where("refid", isEqualTo: id)
            .get())
        .docs
        .forEach((element) async {
      Map<String, dynamic> json = element.data();
      json.addAll({"id": element.id});
      var value = Room.fromJson(json);
      value.msg = await Futumsg.Getmsg(element.id);
      datas.add(value);
    });
    return datas;
  }

  static Future<Room> Getbyid(String id) async {
    var t = await dbRoom.doc(id).get();
    Room value = Room.fromJson(t.data()!);
    value.id = t.id;
    value.msg = await Futumsg.Getmsg(value.id!);

    return value;
  }
}
