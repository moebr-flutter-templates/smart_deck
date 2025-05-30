import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_deck/SDUtils/AppWidget.dart';
import 'package:smart_deck/SDUtils/SDColors.dart';
import 'package:smart_deck/Screens/SDChatScreen.dart';
import 'package:smart_deck/Screens/SDDashboardScreen.dart';
import 'package:smart_deck/Screens/SDLeaderBoardScreen.dart';
import 'package:smart_deck/Screens/SDProfileScreen.dart';
import 'package:smart_deck/Screens/SDScoreBoardScreen.dart';

class SDHomePageScreen extends StatefulWidget {
  @override
  _SDHomePageScreenState createState() => _SDHomePageScreenState();
}

class _SDHomePageScreenState extends State<SDHomePageScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    changeStatusColor(sdAppBackground);
    final tab = [
      SDDashboard(context),
      SDExamCompletionBoardScreen(),
      SDLeaderboardScreen(context, size),
      SDChatScreen(),
      sdPRofileScreen(),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: sdAppBackground,
        body: tab[currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            //color: Colors.red,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(color: sdShadowColor, spreadRadius: 0, blurRadius: 2),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset('images/smartDeck/images/sdhome.png', height: 28, width: 28, color: sdIconColor),
                  activeIcon: Image.asset('images/smartDeck/images/sdhome.png', height: 28, width: 28, color: sdPrimaryColor),
                  label: 'a',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('images/smartDeck/images/sdexamcard.png', height: 28, width: 28, color: sdIconColor),
                  activeIcon: Image.asset('images/smartDeck/images/sdexamcard.png', height: 28, width: 28, color: sdPrimaryColor),
                  label: 'a',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('images/smartDeck/images/sdleaderboard.png', height: 28, width: 28, color: sdIconColor),
                  activeIcon: Image.asset('images/smartDeck/images/sdleaderboard.png', height: 28, width: 28, color: sdPrimaryColor),
                  label: 'a',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('images/smartDeck/images/sdchats.png', height: 28, width: 28, color: sdIconColor),
                  activeIcon: Image.asset('images/smartDeck/images/sdchats.png', height: 28, width: 28, color: sdPrimaryColor),
                  label: 'a',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    height: 30,
                    width: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: CachedNetworkImage(
                        placeholder: placeholderWidgetFn() as Widget Function(BuildContext, String)?,
                        imageUrl: 'https://i.insider.com/5de6dd81fd9db241b00c04d3?width=1100&format=jpeg&auto=webp',
                        fit: BoxFit.cover,
                        height: 35,
                        width: 10,
                      ),
                    ),
                  ),
                  activeIcon: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: sdPrimaryColor, width: 2)),
                    height: 30,
                    width: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: 'https://i.insider.com/5de6dd81fd9db241b00c04d3?width=1100&format=jpeg&auto=webp',
                        height: 35,
                        width: 10,
                      ),
                    ),
                  ),
                  label: 'a',
                ),
              ],
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
