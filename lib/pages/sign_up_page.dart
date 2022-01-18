import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static const String id = 'sign_up_page';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  void fireToast(String massage) {
    Fluttertoast.showToast(
      msg: massage,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade900.withOpacity(1.0),
                Colors.grey.shade900.withOpacity(0.8),
                Colors.grey.shade800.withOpacity(0.7),
                Colors.grey.shade800.withOpacity(0.6),
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  // padding: EdgeInsets.
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      //#login_text
                      Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                      SizedBox(
                        height: 7.5,
                      ),
                      //#welcome_text
                      Text(
                        'Welcome',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    children: [
                      //#textfild
                      const SizedBox(
                        height: 60,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        height: 240,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                blurRadius: 20,
                                spreadRadius: 10,
                                offset: const Offset(0, 10),
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            TextField(
                              style: TextStyle(fontSize: 15),
                              decoration: InputDecoration(
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: 'Fullname',
                                hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ),
                            Divider(
                              color: Colors.black54,
                              height: 10,
                            ),
                            TextField(
                              style: TextStyle(fontSize: 15),
                              decoration: InputDecoration(
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: 'Email',
                                hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ),
                            Divider(
                              color: Colors.black54,
                              height: 10,
                            ),
                            TextField(
                              style: TextStyle(fontSize: 15),
                              decoration: InputDecoration(
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: 'Phone`',
                                hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ),
                            Divider(
                              color: Colors.black54,
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //#login_button
                      MaterialButton(
                        onPressed: () {},
                        height: 45,
                        minWidth: 230,
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        textColor: Colors.white,
                        color: Colors.grey.shade700,
                        shape: const StadiumBorder(),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      //#text
                      const Text(
                        'Sign Up with SNS',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      //#facebook_github
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: MaterialButton(
                                onPressed: () {},
                                height: 45,
                                child: const Text(
                                  'Facebook',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                textColor: Colors.white,
                                color: Colors.blue,
                                shape: const StadiumBorder(),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: MaterialButton(
                                onPressed: () {},
                                height: 45,
                                child: const Text(
                                  'Google',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                textColor: Colors.white,
                                color: Colors.redAccent,
                                shape: const StadiumBorder(),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: MaterialButton(
                                onPressed: () {},
                                height: 45,
                                child: const Text(
                                  'Apple',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                textColor: Colors.white,
                                color: Colors.black,
                                shape: const StadiumBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                alignment: Alignment.bottomCenter,
                child: RichText(
                  text: TextSpan(
                    text: "Best of the best",
                    style: TextStyle(fontSize: 14,color: Colors.black),
                    children: [
                      TextSpan(
                        text: " #pdp",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            fireToast("Hash tag #pdp");
                          },
                      ),
                      TextSpan(
                        text: " #academy",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            fireToast("Hash tag #academy");
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
