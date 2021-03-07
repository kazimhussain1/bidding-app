import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_demo/config/colors.dart';
import 'package:sign_in_demo/screens/welcome-screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadNextPage();
  }

  loadNextPage() {
    var page =  WelcomeScreen();
    var route = MaterialPageRoute(builder: (_) => page);
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, route);
    });
  }

  Future<Widget> buildPageAsync() async {
    return Future.microtask(() {
      return WelcomeScreen();
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        color: AppColors.colorPrimary,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 64.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Hero(
              tag: "welcome_login",
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: AppColors.colorBlack, shape: BoxShape.circle),
                child: Image.asset(
                  "assets/images/splash.png",
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
