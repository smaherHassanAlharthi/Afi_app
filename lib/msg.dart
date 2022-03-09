import 'dart:convert';

Msg msgFromJson(String str) => Msg.fromJson(json.decode(str));

String msgToJson(Msg data) => json.encode(data.toJson());

class Msg {
  Msg({
    this.id,
    required this.msg,
    required this.image,
    required this.sendid,
    required this.roomid,
    required this.refid,
    required this.update,
  });

  String? id;
  String msg;
  String image;
  String sendid;
  String roomid;
  String refid;
  String update;

  factory Msg.fromJson(Map<String, dynamic> json) => Msg(
        id: json["id"] == null ? "null" : json["id"],
        msg: json["msg"] == null ? "null" : json["msg"],
        image: json["image"] == null ? "null" : json["image"],
        sendid: json["sendid"] == null ? "null" : json["sendid"],
        roomid: json["roomid"] == null ? "null" : json["roomid"],
        refid: json["refid"] == null ? "null" : json["refid"],
        update: json["Update"] == null
            ? DateTime.now().toIso8601String()
            : json["Update"],
      );

  Map<String, dynamic> toJson() => {
        "msg": msg == null ? null : msg,
        "image": image == null ? null : image,
        "sendid": sendid == null ? null : sendid,
        "roomid": roomid == null ? null : roomid,
        "refid": refid == null ? null : refid,
        "Update": update == null ? null : update,
      };
}
