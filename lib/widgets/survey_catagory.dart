// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SurveyResult extends StatefulWidget {
  final String catagory;
  const SurveyResult({super.key, required this.catagory});

  @override
  State<SurveyResult> createState() => SurveyResultState();
}

class SurveyResultState extends State<SurveyResult> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          color: Colors.grey,
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Text(
          widget.catagory,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
