// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibe/widgets/artist_catagory.dart';

class Artist extends StatefulWidget {
  const Artist({super.key});

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: artistBody(),
      )),
    );
  }

  Widget artistBody() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Text(
              'Just one last Question!',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              )),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              ArtistCatagory(
                catagory: 'Rap',
              ),
            ],
          )
        ],
      ),
    );
  }
}
