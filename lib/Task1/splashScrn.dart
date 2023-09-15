import 'dart:async';
import 'package:flutter/material.dart';

import 'login.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(
        Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context)=> loginnxt())
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://content.jdmagicbox.com/comp/kozhikode/e8/0495px495.x495.220330150452.s8e8/catalogue/zoople-technologies-calicut-rec-kozhikode-computer-training-institutes-4d5p6rlq6f.jpg?clr=",height: 250,),
            SizedBox(
              height: 20,
            ),
            Text("Welcome to Zoople",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );

  }
}
