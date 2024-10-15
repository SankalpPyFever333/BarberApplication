import "package:flutter/gestures.dart";
import "package:flutter/material.dart";

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 50, left: 30),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xFFB91635),
                  Color(0xFF621d3c),
                  Color(0xFF311917)
                ])),
                child: Text(
                  "Hello\nSign in",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                )),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
              padding: EdgeInsets.only(top: 40, left: 30, right: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        color: Color(0xFFB91635),
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Signi"),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Enter Email",
                      prefixIcon: Icon(Icons.mail_outline),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Enter Password",
                      prefixIcon: Icon(Icons.password_outlined),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Color(0xFF311917),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Signi"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFB91635),
                        Color(0xFF621d3c),
                        Color(0xFF311917)
                      ]),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Signi",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          
                          children: [
                          TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(
                              color: Color(0xFF311917),
                              fontSize: 17,
                              fontFamily: "Signi",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: "sign up",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Signi",
                                ),
                                recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  
                                }
                          ),
                        ]),
                      ),
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
