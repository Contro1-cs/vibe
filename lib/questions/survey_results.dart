// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibe/home.dart';
import 'package:vibe/lists/selected_list.dart';

class Artist extends StatefulWidget {
  const Artist({super.key});

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xff2E2539),
        appBar: AppBar(
          title: Text(
            'Survey result',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(),
            ),
          ),
          backgroundColor: Color(0xff8288C3),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              width: w,
              height: h,
              // color: Colors.red,
              child: ListView.builder(
                itemCount: selectedItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      selectedItems[index],
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xff8288C3),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        floatingActionButton: SizedBox(
          width: 80,
          height: 80,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            backgroundColor: Color(0xff8288C3),
            child: const Icon(
              Icons.done,
              size: 32,
            ),
          ),
        ));
  }
}
