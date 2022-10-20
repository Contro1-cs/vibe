import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtistCatagory extends StatefulWidget {
  final String catagory;
  const ArtistCatagory({super.key, required this.catagory});

  @override
  State<ArtistCatagory> createState() => ArtistCatagoryState();
}

class ArtistCatagoryState extends State<ArtistCatagory> {
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
        child: Text(widget.catagory, style: GoogleFonts.poppins(textStyle: TextStyle()),),
      ),
    );
  }
}
