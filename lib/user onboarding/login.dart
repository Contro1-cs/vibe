// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibe/home.dart';
import 'package:vibe/user%20onboarding/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E2539),
      body: SingleChildScrollView(
        child: SafeArea(
          child: getBody(),
        ),
      ),
    );
  }

  Widget getBody() {
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
            'Welcome back!',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 15,
          ),
          child: Text(
            'Login to continue >',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 14, color: Colors.grey),
            ),
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
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  width: 2,
                  color: Color(0xffD0BED4),
                ),
              ),
              labelText: 'Email',
              hintText: 'example@gmail.com',
              border: OutlineInputBorder(),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Color(0xffD0BED4),
                ),
              ),
            ),
          ),
        ),

        //password
        Container(
          width: w,
          height: 60,
          margin: EdgeInsets.fromLTRB(15, 30, 15, 0),
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  width: 2,
                  color: Color(0xffD0BED4),
                ),
              ),
              labelText: 'Password',
              hintText: 'Minimum 8 digits',
              border: OutlineInputBorder(),
            ),
          ),
        ),

        //login button
        GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              )),
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 60, bottom: 10),
            width: w,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xff8288C3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Login',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Signup(),
                ),
              )),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New here? ',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                Text(
                  'Signup!',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
