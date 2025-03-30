import 'package:flutter/material.dart';
import 'package:smart_deck/Screens/PurchaseMoreScreen.dart';

// ignore: must_be_immutable
class SDChatPageViewScreen extends StatefulWidget {
  String? name;
  String? profileImages;

  SDChatPageViewScreen({this.name, this.profileImages});

  @override
  _SDChatPageViewScreenState createState() => _SDChatPageViewScreenState();
}

class _SDChatPageViewScreenState extends State<SDChatPageViewScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PurchaseMoreScreen(enableAppbar: true),
      ),
    );
  }
}
