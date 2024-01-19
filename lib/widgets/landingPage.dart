import 'package:flutter/material.dart';

import '../responsive.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double isbigscreen = MediaQuery.of(context).size.width < 1545? MediaQuery.of(context).size.width*0.45:MediaQuery.of(context).size.width*0.5;
    isbigscreen = MediaQuery.of(context).size.width < 1223? MediaQuery.of(context).size.width*0.43:isbigscreen;
    double leftpad = MediaQuery.of(context).size.width < 1405? 150:250;
    leftpad = MediaQuery.of(context).size.width < 1223? 100:leftpad;
    leftpad = MediaQuery.of(context).size.width < 892? 40:leftpad;
    double toppad = MediaQuery.of(context).size.width < 1223? 370.0:300.0;
    double fontsize = MediaQuery.of(context).size.width < 1223? 35.0:45.0;
    fontsize = MediaQuery.of(context).size.width < 847? 30.0:fontsize;
    fontsize = MediaQuery.of(context).size.width < 686? 26.0:fontsize;

       bool isPotrait = MediaQuery.of(context).orientation == Orientation.portrait;


    return  Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Padding(
            padding: EdgeInsets.only(left: leftpad,top: toppad),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hey Everyone my name is',style: TextStyle(
                color: Colors.white
                          ),),
                          Text('Vivek Singh',style: TextStyle(
                color: Colors.white , fontSize: fontsize
                          ),),
                          Text('I am a software developer',style: TextStyle(
                color: Colors.white , fontSize: fontsize
                          ),),
                          Text('currently Employed at IPH Technologies',style: TextStyle(
                color: Colors.white , fontSize: 14.0
                          ),),
              ],
            ),
          ), 
        
           Container(
             child: Responsive.isMobile(context)&&isPotrait?Image.asset('assets/images/avatar.png',width: isbigscreen,):
                     Image(image: AssetImage('assets/images/avatar.png'),width: isbigscreen),
           )
      ],
      ),
    );
  }
}
