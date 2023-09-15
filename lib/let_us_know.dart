import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/loading_page.dart';

import 'Widgets/CustomButton.dart';

class MoreInfo extends StatefulWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  State<MoreInfo> createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131313),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'LET US KNOW YOU BETTER',
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
              'Let your coach know you better to',
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
              'provide more targeted support for you',
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
          Padding(
            padding: const EdgeInsets.only(left: 32,right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Date of Birth',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bebas_Neue',
                    fontSize: 18,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        '1990-01-01',
                        style: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'Edu_SA_Beginner',
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(onPressed: (){


                      }, icon: Icon(
                        Icons.edit_rounded,
                        color: Colors.white70,
                      ),)
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32,right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Current weight',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bebas_Neue',
                    fontSize: 18,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        '177.4',
                        style: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'Edu_SA_Beginner',
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(onPressed: (){


                      }, icon: Icon(
                        Icons.edit_rounded,
                        color: Colors.white70,
                      ),)
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32,right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Target weight',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bebas_Neue',
                    fontSize: 18,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        '90',
                        style: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'Edu_SA_Beginner',
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(onPressed: (){


                      }, icon: Icon(
                        Icons.edit_rounded,
                        color: Colors.white70,
                      ),)
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32,right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Height',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bebas_Neue',
                    fontSize: 18,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        '177',
                        style: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'Edu_SA_Beginner',
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(onPressed: (){
                        showModalBottomSheet(context: context, builder: (context){
                          return Container();
                        });


                      }, icon: Icon(
                        Icons.edit_rounded,
                        color: Colors.white70,
                      ),)
                    ],
                  ),
                ),

              ],
            ),
          ),

          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomButton(
              text: 'NEXT',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoadingPage(),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SaveBottomSheet extends StatelessWidget {
  const SaveBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
