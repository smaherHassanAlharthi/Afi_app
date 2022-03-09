import 'package:flutter/material.dart';
import 'package:agora_uikit/agora_uikit.dart';

class vi extends StatefulWidget {
  @override
  _viState createState() => _viState();
}

class _viState extends State<vi> {
  // Instantiate the client
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: "9e6d6861db1a4c739b6401bf190b24a3",
      channelName: "Afi",
    ),
    enabledPermission: [
      Permission.camera,
      Permission.microphone,
    ],
  );

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    client.sessionController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        AgoraVideoViewer(
          client: client,
        ),
        AgoraVideoButtons(
          client: client,
        ),
      ],
    )));
  }

  Future<void> init() async {
    await client.initialize();
  }
}
