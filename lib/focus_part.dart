import 'package:flutter/material.dart';
import 'package:untitled/let_us_know.dart';

import 'Widgets/CustomButton.dart';

class FocusPart extends StatefulWidget {
  const FocusPart({Key? key}) : super(key: key);

  @override
  State<FocusPart> createState() => _FocusPartState();
}

class _FocusPartState extends State<FocusPart> {
  @override
  bool clicklose=true;
  bool clickbuild=true;
  bool clickkeep=true;
  bool clickLegs=true;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131313),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'WHAT IS YOUR FOCUS PART ?',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Bebas_Neue',
                fontSize: 36,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Chosse your problem area and your coach',
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
              'will schedule a plan to meet your needs',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Edu_SA_Beginner',
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                clicklose = !clicklose;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color:Color(0xff252121),
                borderRadius: BorderRadius.circular(8),
              ),
              height: 85,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        child: Image.asset('assets/images/My project (4).jpg',),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('ARM',
                        style: TextStyle(
                          color: clicklose?  Colors.white:Colors.redAccent,
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
            height: 15,
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                clickbuild = !clickbuild;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color:Color(0xff252121),
                borderRadius: BorderRadius.circular(8),
              ),
              height: 85,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('assets/images/My project (7).jpg',),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('CHEST',
                        style: TextStyle(
                          color: clickbuild?  Colors.white:Colors.redAccent,
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
            height: 15,
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                clickkeep = !clickkeep;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color:Color(0xff252121),
                borderRadius: BorderRadius.circular(8),
              ),
              height: 85,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('assets/images/My project (6).jpg',),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('ABS',
                        style: TextStyle(
                          color: clickkeep? Colors.white:Colors.redAccent,
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
            height: 15,
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                clickLegs = !clickLegs;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff252121),
                borderRadius: BorderRadius.circular(8),
              ),
              height: 85,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('assets/images/My project (8).jpg',),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        child: Text('LEG',
                          style: TextStyle(
                            color: clickLegs? Colors.white:Colors.redAccent,
                            fontFamily: 'Bebas_Neue',
                            fontSize: 26,
                          ),
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








          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomButton(
              text: 'NEXT',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoreInfo(),
                    ));
              },
            ),
          ),
        ],
      ),

    );
  }
}
