import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }

  Future navigationPage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int count = (sharedPreferences.getInt('count') ?? 0);
    // if (count == 0) {
    //   Navigator.of(context).pushReplacementNamed("/welcome");
    //   setState(() {
    //     count = 1;
    //   });
    // } else
    Navigator.of(context).pushReplacementNamed("/");
    await sharedPreferences.setInt('count', count);
  }

  @override
  void initState() {
    super.initState();
    startTime();
//    navigationPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("images/ic_launcher.png"),
              margin: EdgeInsets.only(left: 20, right: 20),
            ),
            Container(
              child: Text("GroupBuy",style: TextStyle(fontSize: 30,color: Color.fromARGB(200, 117, 195, 191),fontWeight: FontWeight.w700),),
            )
          ],
        ),
        // child: Container(
        //   margin: EdgeInsets.all(15),
        //   child: Image.asset("images/splash.png",fit: BoxFit.cover,)),
      ),
    );
  }
}
