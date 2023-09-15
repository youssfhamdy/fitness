import 'package:flutter/material.dart';

import 'Widgets/CustomButton.dart';
import 'fitness_level.dart';

class GoalPage extends StatefulWidget {
  const GoalPage({Key? key}) : super(key: key);

  @override
  State<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
  bool clicklose=true;
  bool clickbuild=true;
  bool clickkeep=true;
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
              'WHAT IS YOUR GOAL ? ',
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
              'Chosse your main goal and your coach',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Edu_SA_Beginner',
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              'Will help you achieve it',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Edu_SA_Beginner',
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                clicklose = !clicklose;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color:clicklose? Color(0xff252121):Colors.white70,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 85,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.checklist,
                      color:clicklose?  Colors.white:Colors.black,
                      size: 30,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text('LOSE WEIGHT',
                        style: TextStyle(
                        color: clicklose?  Colors.white:Colors.black,
                        fontFamily: 'Bebas_Neue',
                        fontSize: 26,
                      ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                clickbuild = !clickbuild;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color:clickbuild ? Color(0xff252121):Colors.white70,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 85,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.content_paste_sharp,
                      color:clickbuild?  Colors.white:Colors.black,
                      size: 30,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text('BUILD MUSCLE',
                        style: TextStyle(
                          color: clickbuild?  Colors.white:Colors.black,
                          fontFamily: 'Bebas_Neue',
                          fontSize: 26,
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                clickkeep = !clickkeep;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color:clickkeep? Color(0xff252121):Colors.white70,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 85,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.favorite,
                      color:clickkeep?  Colors.white:Colors.black,
                      size: 30,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text('KEEP FIT',
                        style: TextStyle(
                          color: clickkeep? Colors.white:Colors.black,
                          fontFamily: 'Bebas_Neue',
                          fontSize: 26,
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),










          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomButton(
              text: 'NEXT',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FitnessLevelPage(),
                    ));
              },
            ),
          ),
        ],
      ),

    );
  }
}
