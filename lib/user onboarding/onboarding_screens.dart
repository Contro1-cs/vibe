// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibe/user%20onboarding/login.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    var currentIndex = 0;

    //onboarding Screens
    List screens = [
      Swipe1(),
      Swipe2(),
      Swipe3(),
    ];
    return Scaffold(
      body: onBoardingBody(),
    );
  }

  Widget onBoardingBody() {
    //Variables
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    final pageController = PageController(initialPage: 0);

    //Theme
    return Column(
      children: [
        SizedBox(
          height: h * 0.8,
          child: PageView(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            children: [
              Swipe1(),
              Swipe2(),
              Swipe3(),
            ],
          ),
        ),
        Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey),
                ),
                Container(
                  height: 10,
                  width: 10,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey),
                ),
                Container(
                  height: 10,
                  width: 10,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey),
                ),
              ]),
        ),
        Center(
          child: Row(children: [Container()]),
        ),
        Center(
          child: Container(
              height: 55,
              width: w,
              margin: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 25,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xff303030),
                borderRadius: BorderRadius.circular(12),
              ),
              child: GestureDetector(
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Get started     ',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        color: Color(0xff7BC950),
                        fontSize: 16,
                      )),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Color(0xff7BC950),
                    )
                  ],
                )),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              )),
        )
      ],
    );
  }
}

class Swipe1 extends StatelessWidget {
  const Swipe1({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return SafeArea(
        child: SizedBox(
      width: w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 39, 0, 21),
            child: SvgPicture.asset('assets/default.svg'),
          ),
          Text(
            'Music For your Soul',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 24, color: Colors.black)),
          ),
          Container(
            width: w,
            margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Text(
              'A playlist that is more than just songs Something that feels personal',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Color(0xff909090), fontSize: 16)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    ));
  }
}

class Swipe2 extends StatelessWidget {
  const Swipe2({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return SafeArea(
        child: SizedBox(
      width: w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 39, 0, 21),
            child: SvgPicture.asset('assets/default.svg'),
          ),
          Text(
            'Playlist just for you',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 24, color: Colors.black)),
          ),
          Container(
            width: w,
            margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Text(
              'Music that comes to life!',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Color(0xff909090), fontSize: 16)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    ));
  }
}

class Swipe3 extends StatelessWidget {
  const Swipe3({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return SafeArea(
        child: SizedBox(
      width: w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 39, 0, 21),
            child: SvgPicture.asset('assets/default.svg'),
          ),
          Text(
            'Never run out of options!',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 24, color: Colors.black)),
          ),
          Container(
            width: w,
            margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Text(
              'Playlists for all kinds of moods, needs and parties!',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Color(0xff909090), fontSize: 16)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    ));
  }
}
