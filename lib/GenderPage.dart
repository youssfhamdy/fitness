import 'package:flutter/material.dart';
import 'package:untitled/goal_page.dart';

import 'Widgets/CustomButton.dart';
import 'Widgets/custom_text_field.dart';

class GenderPage extends StatefulWidget {
  GenderPage({Key? key}) : super(key: key);
  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  bool clickmale = true;
  bool clickfemale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131313),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'WHAT IS YOUR ',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Bebas_Neue',
                fontSize: 36,
              ),
            ),
          ),
          Center(
            child: Text(
              ' GENDER ?',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Bebas_Neue',
                fontSize: 36,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Your coach will design personalized',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Edu_SA_Beginner',
                fontSize: 24,
              ),
            ),
          ),
          Center(
            child: Text(
              'workout program based on a few',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Edu_SA_Beginner',
                fontSize: 24,
              ),
            ),
          ),
          Center(
            child: Text(
              'questions',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Edu_SA_Beginner',
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: clickmale
                              ? Color(0xff252121)
                              : Colors.white.withOpacity(0.2),
                          child: IconButton(
                            icon: Icon(
                              Icons.male_rounded,
                              size: 50,
                              color: clickmale
                                  ? Colors.white.withOpacity(0.2)
                                  : Color(0xff252121),
                            ),
                            onPressed: () {
                              setState(() {
                                clickmale = !clickmale;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: Colors.white60,
                            fontFamily: 'Lato',
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: clickfemale
                              ? Color(0xff252121)
                              : Colors.white.withOpacity(0.2),
                          child: IconButton(
                            icon: Icon(
                              Icons.female_rounded,
                              size: 50,
                              color: clickfemale
                                  ? Colors.white.withOpacity(0.2)
                                  : Color(0xff252121),
                            ),
                            onPressed: () {
                              setState(() {
                                clickfemale = !clickfemale;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            color: Colors.white60,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomButton(
              text: 'NEXT',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GoalPage(),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
