// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibe/questions/artist.dart';
import 'package:vibe/questions/question_list.dart';
import 'package:vibe/widgets/question_option.dart';

class Survey extends StatefulWidget {
  const Survey({super.key});

  @override
  State<Survey> createState() => SurveyState();
}

class SurveyState extends State<Survey> {
  int questionsLength = 0;

  void _inctimentCounter() {
    setState(() {
      questionsLength++;
    });
  }

  void _decrementCounter() {
    setState(() {
      questionsLength--;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      questionsLength = questions_list.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E2539),
      body: SingleChildScrollView(
        child: SafeArea(
          child: questionBody(),
        ),
      ),
    );
  }

  Widget questionBody() {
    //question variables

    var questionsLeft = questionsLength;
    var h = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 35,
          ),

          //Question #n
          Text(
            'Question ${(questionsLength % questions_list.length + 1).toString()}:',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            '${questions_list.length - questionsLength % questions_list.length} questions left',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Color(0xff727272),
                fontSize: 14,
              ),
            ),
          ),

          SizedBox(
            height: h * 0.3,
          ),

          Center(
            child: Column(
              children: [
                Text(
                  questions_list[questionsLength % questions_list.length]
                      ['question'],
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xffD0BED4),
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                QuestionOption(
                  option:
                      questions_list[questionsLength % questions_list.length]
                          ['option1'],
                ),
                QuestionOption(
                  option:
                      questions_list[questionsLength % questions_list.length]
                          ['option2'],
                ),
                QuestionOption(
                  option:
                      questions_list[questionsLength % questions_list.length]
                          ['option3'],
                ),
                QuestionOption(
                  option:
                      questions_list[questionsLength % questions_list.length]
                          ['option4'],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  if (questionsLength % questions_list.length != 0) {
                    _decrementCounter();
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  alignment: Alignment.bottomLeft,
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xffd6d6d6).withOpacity(0.5),
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: questionsLength % questions_list.length + 1 != 1
                      ? Center(
                          child: SvgPicture.asset(
                            'assets/arrow_back.svg',
                            height: 10,
                            width: 10,
                          ),
                        )
                      : Center(
                          child: SvgPicture.asset(
                            'assets/cross.svg',
                            height: 20,
                            width: 20,
                            color: Colors.black,
                          ),
                        ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (questionsLength % questions_list.length + 1 ==
                      questions_list.length) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Artist(),
                        ));
                  }

                  _inctimentCounter();
                  // ScaffoldMessenger.of(context)
                  //     .showSnackBar(SnackBar(content: Text('Next questions'),));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  alignment: Alignment.bottomLeft,
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xffd6d6d6),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: questionsLength % questions_list.length + 1 !=
                          questions_list.length
                      ? Center(
                          child: SvgPicture.asset(
                            'assets/arrow_forward.svg',
                          ),
                        )
                      : Center(
                          child: Text(
                            'Submit',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
