// To parse this JSON data, do
//
//     final room = roomFromJson(jsonString);

import 'package:afi/msg.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

Room roomFromJson(String str) => Room.fromJson(json.decode(str));

String roomToJson(Room data) => json.encode(data.toJson());

class Room {
  Room({
    this.id,
    required this.image,
    required this.sendid,
    required this.refid,
    required this.update,
  });

  String? id;
  String image;
  List<Msg> msg=[];
  String sendid;
  String refid;
  String update;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        id: json["id"] == null ? "null" : json["id"],
        image: json["image"] == null ? "null" : json["image"],
        sendid: json["sendid"] == null ? "null" : json["sendid"],
        refid: json["refid"] == null ? "null" : json["refid"],
        update: json["Update"] == null ? "null" : json["Update"],
      );

  Map<String, dynamic> toJson() => {
        "image": image == null ? null : image,
        "sendid": sendid == null ? null : sendid,
        "refid": refid == null ? null : refid,
        "Update": update == null ? null : update,
      };
}
