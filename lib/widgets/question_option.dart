// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionOption extends StatefulWidget {
  final String option;
  const QuestionOption({super.key, required this.option});

  @override
  State<QuestionOption> createState() => QuestionOptionState();
}

class QuestionOptionState extends State<QuestionOption> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8),
      height: 60,
      width: w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff8288C3),
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          widget.option,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
