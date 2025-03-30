import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smart_deck/SDUtils/AppWidget.dart';
import 'package:smart_deck/Screens/PurchaseButton.dart';

class PurchaseMoreScreen extends StatefulWidget {
  final bool? enableAppbar;

  PurchaseMoreScreen({this.enableAppbar = false});

  @override
  _PurchaseMoreScreenState createState() => _PurchaseMoreScreenState();
}

class _PurchaseMoreScreenState extends State<PurchaseMoreScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Icon(Icons.arrow_back, size: 24).paddingAll(16).onTap(() {
              finish(context);
            }).visible(widget.enableAppbar!),
            SizedBox(
              width: context.width(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      decoration: boxDecorationDefault(shape: BoxShape.circle),
                      padding: EdgeInsets.all(16),
                      child: commonCacheImageWidget(
                        "images/smartDeck/images/sdlogo.png",
                        height: 100,
                      ).cornerRadiusWithClipRRect(90)),
                  22.height,
                  Text(
                    'This is the Lite Version of the SmartDeck App',
                    style: boldTextStyle(size: 22),
                    textAlign: TextAlign.center,
                  ),
                  16.height,
                  PurchaseButton(),
                ],
              ),
            ).paddingAll(16),
          ],
        ),
      ),
    );
  }
}
