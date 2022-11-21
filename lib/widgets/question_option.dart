// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionOption extends StatefulWidget {
  final String option;
  final bool selected;
  const QuestionOption({
    super.key,
    required this.option,
    required this.selected,
  });

  @override
  State<QuestionOption> createState() => QuestionOptionState();
}

class QuestionOptionState extends State<QuestionOption> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    Color clr = Color.fromARGB(0, 32, 32, 78);

    return GestureDetector(
      onTap: () {},
      child: Container(
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
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
