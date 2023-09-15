import 'package:flutter/material.dart';
import 'package:untitled/GenderPage.dart';

import 'Widgets/CustomButton.dart';
import 'Widgets/custom_text_field.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black ,
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/images/AthleteAI-final-logo--icon-1.jpg'),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text('WHAT IS YOUR NAME',
            style: TextStyle(
              color: Colors.white,
              fontFamily:'Bebas_Neue',
              fontSize: 36,
            ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Center(
            child: Text('Hello! Iam your personal coach',
              style: TextStyle(
                  color: Colors.white,
                fontFamily:'Edu_SA_Beginner',
                fontSize: 24,
              ),
            ),
          ),

          Center(
            child: Text('What would you like to be called',
              style: TextStyle(
                  color: Colors.white,
                fontFamily:'Edu_SA_Beginner',
                  fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomFormTextField(
              onChanged: (data){
                name=data;
              },
            ),
          ),
          SizedBox(
            height:100 ,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomButton(
              text: 'NEXT',
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => GenderPage(),));
              },
            ),
          ),




        ],
      ),

    );
  }
}
