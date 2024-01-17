import 'package:flutter/material.dart';

class LandingPageMobile extends StatefulWidget {
const LandingPageMobile({ Key? key }) : super(key: key);

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context){
    return Container(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       const Text('Hey Everyone my name is',style: TextStyle(
                color: Colors.white
                          ),),
                          const Text('Vivek Singh',style: TextStyle(
                color: Colors.white , fontSize: 30.0
                          ),),
                          const Text('I am a software developer',style: TextStyle(
                color: Colors.white , fontSize: 20.0
                          ),),
                          const Text('currently Employed at IPH Technologies',style: TextStyle(
                color: Colors.white , fontSize: 14.0 
                          ),),
            
        
            Image.asset('assets/images/avatar.png',
             
             )
        ],
      ),
    );
  }
}