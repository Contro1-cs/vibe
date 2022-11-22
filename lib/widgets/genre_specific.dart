// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenreSpecific extends StatelessWidget {
  final String title;
  final String subtitle;
  const GenreSpecific({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Container(
      height: 150,
      width: w,
      padding: const EdgeInsets.only(left: 25, top: 25, bottom: 25),
      decoration: BoxDecoration(
        color: Color(0xffF0E0FA),
        border: Border(
          top: BorderSide(color: Colors.black, width: 2),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2E2539),
                    ),
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff2E2539),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
