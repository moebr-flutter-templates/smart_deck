import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_deck/SDUtils/SDColors.dart';
import 'package:smart_deck/Screens/PurchaseMoreScreen.dart';

class SDSearchScreen extends StatefulWidget {
  @override
  _SDSearchScreenState createState() => _SDSearchScreenState();
}

class _SDSearchScreenState extends State<SDSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: sdAppBackground,
        body: PurchaseMoreScreen(enableAppbar: true),
      ),
    );
  }
}
