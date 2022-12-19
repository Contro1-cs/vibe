// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibe/lists/songs_main.dart';

class PartyPlaylist extends StatefulWidget {
  const PartyPlaylist({super.key});

  @override
  State<PartyPlaylist> createState() => _PartyPlaylistState();
}

class _PartyPlaylistState extends State<PartyPlaylist> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff2E2539),
      appBar: AppBar(
        title: Text(
          'Party PLaylist',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xff8288C3),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // padding: EdgeInsets.only(top: 25),
            // margin: EdgeInsets.only(bottom: 100),
            width: w,
            height: h,
            // color: Colors.red,
            child: ListView.builder(
              itemCount: songsMain.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    songsMain[index]['song'],
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xff8288C3),
                      ),
                    ),
                  ),
                  subtitle: Text(
                    songsMain[index]['artist'],
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Color(0xff8288C3),
                      ),
                    ),
                  ),
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
