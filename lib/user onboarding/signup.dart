// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibe/questions/question_display.dart';
import 'package:vibe/user%20onboarding/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _emailcontroller = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(child: signupBody()),
    ));
  }

  Widget signupBody() {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        Container(
          margin: EdgeInsets.only(left: 15),
          child: Text(
            'Hello there!',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 15,
          ),
          child: Text(
            'Create new account >',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 14, color: Colors.grey)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
          width: w,
          height: h / 3,
          child: SvgPicture.asset('assets/default.svg'),
        ),

        //email
        Container(
          width: w,
          height: 60,
          margin: EdgeInsets.fromLTRB(15, 50, 15, 0),
          child: TextField(
              controller: _emailcontroller,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(width: 2, color: Colors.black)),
                labelText: 'Email',
                hintText: 'example@gmail.com',
                border: OutlineInputBorder(),
              )),
        ),

        //password
        Container(
          width: w,
          height: 60,
          margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: TextField(
              controller: _passwordController,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(width: 2, color: Colors.black)),
                labelText: 'Password',
                hintText: 'Minimum 8 digits',
                border: OutlineInputBorder(),
              )),
        ),

        //Name
        Container(
          width: w,
          height: 60,
          margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: TextField(
              controller: _nameController,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(width: 2, color: Colors.black)),
                labelText: 'First name',
                hintText: 'ex. Alex',
                border: OutlineInputBorder(),
              )),
        ),

        //signup button
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Color(0xfff3f3f3),
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(12))),
              context: context,
              builder: (context) => Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 40,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xff6d6d6d),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Let us get to',
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 28)),
                  ),
                  Text(
                    'know you more!',
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 32)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Answer a few question and\nwe are all set!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 16, color: Colors.grey)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Survey()));
                    },
                    child: Container(
                      height: 52,
                      width: 208,
                      margin: EdgeInsets.only(top: 70, bottom: 70),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Start survey  ',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                            ),
                            SvgPicture.asset('assets/survey.svg'),
                          ]),
                    ),
                  )
                ],
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 40, bottom: 10),
            width: w,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text(
              'Signup',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.white, fontSize: 16)),
            )),
          ),
        ),
        GestureDetector(
          onTap: (() => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Login()))),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already a user? ',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.grey)),
              ),
              Text(
                'Login!',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black)),
              ),
            ],
          )),
        )
      ],
    );
  }
}
