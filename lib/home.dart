// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibe/lists/playlist.dart';
import 'package:vibe/main_playlist.dart';
import 'package:vibe/widgets/genre_specific.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff2E2539),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'V I B E',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xff8288C3),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 30, 10, 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello! Nitin',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xffF0E0FA),
                        fontWeight: FontWeight.w500,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Text(
                    'Continue your journey',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xffF0E0FA),
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Main playlist
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPlaylist(),
                  ),
                );
              },
              child: Container(
                height: w,
                width: w,
                decoration: BoxDecoration(
                  // color: Color(0xffF0E0FA),
                  image: DecorationImage(
                      image: AssetImage('assets/album_cover.png')),
                  border: Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    bottom: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nitin\'s Vibe',
                        style: GoogleFonts.libreFranklin(
                          textStyle: TextStyle(
                            color: Color(0xff2E2539),
                            fontWeight: FontWeight.w900,
                            fontSize: 46,
                          ),
                        ),
                      ),
                      Text(
                        'Automatic generated playlist',
                        style: GoogleFonts.libreFranklin(
                          textStyle: TextStyle(
                            color: Color(0xff2E2539),
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //genre specific playlist
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Genre specific playlists',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color(0xffF0E0FA),
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            //Generic playlist #1
            GenreSpecific(
              title: playlist[0]['title'],
              subtitle: playlist[0]['subtitle'],
            ),

            //Generic playlist #2
            GenreSpecific(
              title: playlist[1]['title'],
              subtitle: playlist[1]['subtitle'],
            ),

            //Generic playlist #3
            GenreSpecific(
              title: playlist[2]['title'],
              subtitle: playlist[2]['subtitle'],
            ),

            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //privacy policy
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.security,
                        color: Color(0xffF0E0FA),
                      ),
                      Text(
                        'Privacy Policy',
                        style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(color: Color(0xffF0E0FA), fontSize: 14),
                        ),
                      ),
                    ],
                  ),

                  //About us
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info,
                        color: Color(0xffF0E0FA),
                      ),
                      Text(
                        'About us',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xffF0E0FA),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //About team
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.people,
                        color: Color(0xffF0E0FA),
                      ),
                      Text(
                        'About team',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xffF0E0FA),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
