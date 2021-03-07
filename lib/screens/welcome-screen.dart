import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sign_in_demo/config/colors.dart';
import 'package:sign_in_demo/screens/login-screen.dart';
import 'package:sign_in_demo/screens/sign-up.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.colorPrimary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 130,
              child: Stack(children: [
                Positioned(
                  top: 10,
                  left: 50,
                  child: Image.asset(
                    "assets/images/cloud2.png",
                    color: AppColors.colorBlack,
                    width: 150,
                  ),
                ),
                Positioned(
                  left: 250,
                  top: 70,
                  child: Image.asset(
                    "assets/images/cloud2.png",
                    color: AppColors.colorBlack,
                    width: 150,
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:48.0),
              child: Column(
                children: [
                  Image.asset("assets/images/financial_data_no_bg.png"),
                  Text(
                    "Welcome",
                    style: const TextStyle(
                        color: AppColors.colorBlack,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Are you ready to start bidding?",
                    style: TextStyle(color: AppColors.colorBlack, fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:32.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 32.0),
                      child: Hero(
                        tag: "welcome_login",
                        child: FlatButton(
                          splashColor: AppColors.colorPrimary.withAlpha(70),
                          color: AppColors.colorBlack,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("login",
                                    style: TextStyle(
                                        color: AppColors.colorWhite,
                                        fontSize: 20.0)),
                                Icon(
                                  Icons.arrow_forward,
                                  color: AppColors.colorWhite,
                                  size: 28.0,
                                )
                              ],
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => LoginScreen()));
                          },
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: AppColors.colorBlack, fontSize: 14.0),
                      ),
                      MaterialButton(
                        minWidth: 0,
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: AppColors.colorBlack,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => SignUpScreen()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
