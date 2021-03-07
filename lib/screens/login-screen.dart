import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_demo/config/colors.dart';
import 'package:sign_in_demo/widgets/text-feild.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      backgroundColor: AppColors.colorBlack,
      elevation: 0,
    );
    return Scaffold(
      backgroundColor: AppColors.colorBlack,
      body: Builder(
        builder: (buildContext) => SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: AppColors.colorBlack,
            child: Stack(
              children: [
                Scaffold(backgroundColor: Colors.transparent, appBar: appBar),
                Positioned(
                  top: appBar.preferredSize.height,
                  child: Container(
                    height: MediaQuery.of(context).size.height -
                        appBar.preferredSize.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Hero(
                          tag: "welcome_login",
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                80.0, 8.0, 80.0, 32.0),
                            child: Image.asset("assets/images/login2.png"),
                          ),
                        ),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100.0)),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.colorPrimary,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(100.0))),
                              child: SingleChildScrollView(
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 32.0),
                                            child: Text(
                                              "let's sign you in.",
                                              style: const TextStyle(
                                                  color: AppColors.colorBlack,
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                32, 24.0, 32, 8.0),
                                            child: CustomTextField(
                                              label: "email",
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                32, 24.0, 32, 0),
                                            child: CustomTextField(
                                              label: "password",
                                              isPassword: true,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 32.0),
                                                child: MaterialButton(
                                                  minWidth: 0,
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 4.0),
                                                  child: Text(
                                                    "Forgot Password?",
                                                    style: TextStyle(
                                                        color: AppColors.colorBlack,
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 32.0),
                                        child: FlatButton(
                                          splashColor:
                                              AppColors.colorPrimary.withAlpha(70),
                                          color: AppColors.colorBlack,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16))),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("sign in",
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
                                            // Navigator.of(context).push(
                                            //     MaterialPageRoute(
                                            //         builder: (_) => LoginScreen()));
                                          },
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
