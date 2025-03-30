import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smart_deck/SDUtils/AppWidget.dart';
import 'package:smart_deck/SDUtils/SDColors.dart';
import 'package:smart_deck/Screens/PurchaseMoreScreen.dart';
import 'package:smart_deck/Screens/SDSortScreen.dart';

class SDLessons extends StatefulWidget {
  @override
  _SDLessonsState createState() => _SDLessonsState();
}

class _SDLessonsState extends State<SDLessons> {
  @override
  Widget build(BuildContext context) {
    changeStatusColor(sdPrimaryColor);
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: PurchaseMoreScreen(enableAppbar: true),
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            SDSortScreen().launch(context);
          },
          label: Text('Sort By', style: boldTextStyle(size: 16, color: Colors.white)),
          icon: Icon(Icons.swap_vert),
        ),
      ),
    );
  }
}
