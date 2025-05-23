import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smart_deck/ModelClass/LessonsModelClass.dart';
import 'package:smart_deck/ModelClass/LiveVideoModel.dart';
import 'package:smart_deck/ModelClass/SDExamCardModel.dart';
import 'package:smart_deck/SDUtils/SDColors.dart';
import 'package:smart_deck/SDUtils/SDStyle.dart';
import 'package:smart_deck/Screens/SDAllLessonsScreen.dart';
import 'package:smart_deck/Screens/SDExamScreen.dart';
import 'package:smart_deck/Screens/SDLessonsChapterDetailsScreen.dart';
import 'package:smart_deck/Screens/SDNotificationScreen.dart';
import 'package:smart_deck/Screens/SDSearchScreen.dart';

import 'SdViewAllLivevideoScreen.dart';

List<LessonsModel> lessons = [
  LessonsModel(
    image: 'images/smartDeck/images/sdearth.png',
    title: 'GeoGraphy',
    backgroundImages: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSePqEkOx6meh5aP5W0wRjvqCwDMFrpKyjFQA&usqp=CAU',
  ),
  LessonsModel(
    image: 'images/smartDeck/images/sdruler.png',
    title: 'Math',
    backgroundImages: 'https://d2c7ipcroan06u.cloudfront.net/wp-content/uploads/2019/07/mathematics-696x364.jpg',
  ),
  LessonsModel(
    image: 'images/smartDeck/images/sdbiology.png',
    title: 'Biology',
    backgroundImages: 'https://physicsworld.com/wp-content/uploads/2019/09/dna-binary-code-255618778-Shutterstock_ymgerman.jpg',
  ),
  LessonsModel(
    image: 'images/smartDeck/images/sdcomputer.png',
    title: 'Computer',
    backgroundImages: 'https://previews.123rf.com/images/aleksander1/aleksander11302/aleksander1130200018/18017241-bulb-made-of-computer-subjects-.jpg',
  ),
  LessonsModel(
    image: 'images/smartDeck/images/sdmusic.png',
    title: 'Music',
    backgroundImages: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSePqEkOx6meh5aP5W0wRjvqCwDMFrpKyjFQA&usqp=CAU',
  ),
  LessonsModel(
    image: 'images/smartDeck/images/sddance.png',
    title: 'Dance',
    backgroundImages: 'https://i.pinimg.com/originals/30/45/9c/30459c328f5f535509d3131f773ab10f.jpg',
  ),
];

List<LiveVideoModel> liveVideo = [
  LiveVideoModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTFX3JNvflemOpVIwXGd_BdLChYZefcPNWCAQ&usqp=CAU', title: 'Talkshow', message: 'Top 10 eco campus in \nindonesia that you can be..', status: 'LIVE NOW'),
  LiveVideoModel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR4sfk7iQgjlNupZAy_A2HSv2hpgRm__UedzdvidFN8GAwd0SSKazIR2DwP39tHc0qUrNOERBaWBVvsds_wivtmBwjtOh8zRTz6kQ&usqp=CAU&ec=45690273',
      title: 'Talkshow',
      message: 'Top 5 colleges in \nIndia that you can be..',
      status: 'LIVE NOW'),
  LiveVideoModel(image: 'https://static01.nyt.com/images/2020/03/14/upshot/14up-colleges-remote/14up-colleges-remote-mediumSquareAt3X.jpg', title: 'Talkshow', message: 'Top 10 eco campus in \nindonesia that you can be..', status: 'LIVE NOW'),
];

List<SDExamCardModel> cards = [
  SDExamCardModel(
    image: 'images/smartDeck/images/sdbiology.png',
    examName: 'Biology final\nexams',
    time: '15 minutes',
    icon: Icon(Icons.notifications_active, color: Colors.white54),
    startColor: Color(0xFF2889EB),
    endColor: Color(0xFF0B56CB),
  ),
  SDExamCardModel(
    image: 'images/smartDeck/images/sdchemistry.png',
    examName: 'Chemistry daily\ntest',
    time: '15 minutes',
    icon: Icon(Icons.notifications_off, color: Colors.white54),
    startColor: Color(0xFFF1AD4B),
    endColor: Color(0xFFF26340),
  ),
  SDExamCardModel(
    image: 'images/smartDeck/images/sdmusic.png',
    examName: 'Music daily\nlearning',
    time: '3 hours',
    icon: Icon(Icons.notifications, color: Colors.white54),
    startColor: Color(0xFF7EA56C),
    endColor: Color(0xFF6C9258),
  )
];

// ignore: non_constant_identifier_names
Widget SDDashboard(BuildContext context) {
  return Container(
 //   color: Colors.red,
    child: SingleChildScrollView(
      padding: EdgeInsets.only(top: 20, bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
          //  color: Colors.red,
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: boxDecoration(radius: 5, backGroundColor: sdViewColor.withOpacity(0.8), blurRadius: 0, spreadRadius: 0),
                    child: TextField(
                      autofocus: false,
                      readOnly: true,
                      onTap: () {
                        SDSearchScreen().launch(context);
                      },
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(left: 10, top: 5, right: 15),
                      child: InkWell(
                        onTap: () {
                          SDNotificationScreen().launch(context);
                        },
                        child: Icon(Icons.notifications_none, size: 30, color: Colors.black),
                      ),
                    ),
                    Positioned(
                      right: 9,
                      top: 0,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                        child: Text('3', style: secondaryTextStyle(color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Text('Hi, Mark', style: boldTextStyle(size: 20)),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Text('You have 3 exams pending', style: secondaryTextStyle(size: 14)),
          ),
          SizedBox(height: 15),
          Container(
            height: 250,
            child: ListView.builder(
              padding: EdgeInsets.only(right: 16),
              scrollDirection: Axis.horizontal,
              itemCount: cards.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    SDExamScreen(cards[index].examName, cards[index].image, cards[index].startColor, cards[index].endColor).launch(context);
                  },
                  child: Container(
                    width: 180.0,
                    margin: EdgeInsets.only(left: 16),
                    padding: EdgeInsets.all(10),
                    decoration: boxDecoration(
                      radius: 8,
                      spreadRadius: 1,
                      blurRadius: 4,
                      gradient: LinearGradient(colors: [cards[index].startColor!, cards[index].endColor!]),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white30,
                          child: Image.asset(cards[index].image!, height: 60, width: 60),
                        ),
                        SizedBox(height: 15),
                        Text(cards[index].examName!, style: secondaryTextStyle(color: Colors.white, size: 20)),
                        SizedBox(height: 15),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          Text(cards[index].time!, style: secondaryTextStyle(color: Colors.white54, size: 18)),
                          cards[index].icon!,
                        ]),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child: Text('Lessons', style: boldTextStyle(size: 16))),
                InkWell(
                  onTap: () {
                    SDLessons().launch(context);
                  },
                  child: Text('SEE ALL', style: boldTextStyle(color: sdPrimaryColor, size: 14)),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Text('Senior High School - 12th Grade', style: secondaryTextStyle(size: 14)),
          ),
          SizedBox(height: 5),
          Container(
            height: 150,
            child: ListView.builder(
                padding: EdgeInsets.only(right: 16),
                scrollDirection: Axis.horizontal,
                itemCount: lessons.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      SDLessonsDetScreen(
                        name: lessons[index].title,
                        backgroundImages: lessons[index].backgroundImages,
                      ).launch(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Image.asset(lessons[index].image!, height: 30, width: 30),
                          ),
                          Container(margin: EdgeInsets.only(top: 10), child: Text(lessons[index].title!)),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child: Text('Live Video', style: boldTextStyle(size: 16))),
                InkWell(
                  onTap: () {
                    SdViewAllLiveVideoScreen().launch(context);
                  },
                  child: Text('SEE ALL', style: boldTextStyle(color: sdPrimaryColor, size: 14)),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 130,
            child: ListView.builder(
              padding: EdgeInsets.only(right: 16),
              scrollDirection: Axis.horizontal,
              itemCount: liveVideo.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 300,
                  decoration: boxDecorations(showShadow: true),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 130,
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                          image: DecorationImage(image: CachedNetworkImageProvider(liveVideo[index].image!), fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(liveVideo[index].title!, style: boldTextStyle(size: 16)),
                                Padding(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Align(alignment: Alignment.topRight, child: Icon(Icons.more_vert)),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              child: FittedBox(
                                child: Text(
                                  liveVideo[index].message!,
                                  style: primaryTextStyle(size: 14),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            FittedBox(
                              child: Container(
                                margin: EdgeInsets.only(top: 15),
                                decoration: boxDecorations(bgColor: sdSecondaryColorRed, radius: 4),
                                padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                                child: Center(
                                  child: Text(liveVideo[index].status!, style: secondaryTextStyle(size: 8, color: Colors.white)),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    ),
  );
}
