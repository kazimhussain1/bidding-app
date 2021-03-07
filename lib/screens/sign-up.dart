import 'package:flutter/material.dart';
import 'package:sign_in_demo/config/colors.dart';
import 'package:sign_in_demo/widgets/text-feild.dart';

class SignUpScreen extends StatelessWidget {
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
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(64.0, 8.0, 64.0, 32.0),
                          child: Image.asset("assets/images/register.png"),
                        ),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100.0)),
                            child: Hero(
                              tag: "welcome_signup",
                              child: Container(
                                decoration: BoxDecoration(
                                    color: AppColors.colorPrimary,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(120.0))),
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
                                              padding: const EdgeInsets.only(
                                                  left: 32.0),
                                              child: Text(
                                                "let's get started",
                                                style: const TextStyle(
                                                    color: AppColors.colorBlack,
                                                    fontSize: 28.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      32, 16.0, 32, 8.0),
                                              child: CustomTextField(
                                                label: "name",
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      32, 16.0, 32, 8.0),
                                              child: CustomTextField(
                                                label: "email",
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      32, 16.0, 32, 8.0),
                                              child: CustomTextField(
                                                label: "username",
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      32, 16.0, 32, 8.0),
                                              child: CustomTextField(
                                                label: "phone number",
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      32, 16.0, 32, 8.0),
                                              child: CustomTextField(
                                                label: "city",
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      32, 16.0, 32, 8.0),
                                              child: CustomTextField(
                                                label: "state",
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      32, 16.0, 32, 8.0),
                                              child: CustomTextField(
                                                label: "cnic",
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      32, 16.0, 32, 8.00),
                                              child: CustomTextField(
                                                label: "password",
                                                isPassword: true,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      32, 16.0, 32, 8.0),
                                              child: RadioGroup(),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0, horizontal: 32.0),
                                          child: FlatButton(
                                            splashColor: AppColors.colorPrimary
                                                .withAlpha(70),
                                            color: AppColors.colorBlack,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16))),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("sign up",
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .colorWhite,
                                                          fontSize: 20.0)),
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    color: AppColors.colorWhite,
                                                    size: 28.0,
                                                  )
                                                ],
                                              ),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ]),
                                ),
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

class RadioGroup extends StatefulWidget {
  @override
  _RadioGroupState createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  String selected = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            valueChanged("buyer");
          },
          child: Row(
            children: [
              Radio(
                value: "buyer",
                groupValue: selected,
                onChanged: valueChanged,
                activeColor: AppColors.colorBlack,
              ),
              Text("buyer",
                  style:
                      TextStyle(fontSize: 18.0, color: AppColors.colorBlack)),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            valueChanged("seller");
          },
          child: Row(
            children: [
              Radio(
                  value: "seller",
                  groupValue: selected,
                  onChanged: valueChanged,
                  activeColor: AppColors.colorBlack),
              Text("seller",
                  style:
                      TextStyle(fontSize: 18.0, color: AppColors.colorBlack)),
            ],
          ),
        ),
      ],
    );
  }

  void valueChanged(value) {
    setState(() {
      selected = value;
    });
  }
}
