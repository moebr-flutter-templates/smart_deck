import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_deck/Screens/PurchaseMoreScreen.dart';

// ignore: must_be_immutable
class SDLessonsDetScreen extends StatefulWidget {
  String? name;
  String? totalChapter;
  String? backgroundImages;

  SDLessonsDetScreen({this.name, this.totalChapter, this.backgroundImages});

  @override
  _SDLessonsDetScreenState createState() => _SDLessonsDetScreenState();
}

class _SDLessonsDetScreenState extends State<SDLessonsDetScreen> {
  @override
  void initState() {
    super.initState();
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
