// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vibe/questions/selected_list.dart';

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
