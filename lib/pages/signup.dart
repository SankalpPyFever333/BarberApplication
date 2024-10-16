import "package:barber_app/pages/login.dart";
import "package:flutter/material.dart";
import "package:flutter/gestures.dart";

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController =  TextEditingController();
  TextEditingController passwordController = TextEditingController();




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
                  "Create Your Account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                )),
            Container(
              height: MediaQuery.of(context).size.height,
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
                    "Name",
                    style: TextStyle(
                        color: Color(0xFFB91635),
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Signi"),
                  ),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Name",
                      labelText: "Enter Name",
                      prefixIcon: Icon(Icons.abc_outlined),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                        color: Color(0xFFB91635),
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Signi"),
                  ),
                  TextField(
                    controller: emailController,
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
                    controller: passwordController,
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
                      "SIGN UP",
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
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(
                              color: Color(0xFF311917),
                              fontSize: 17,
                              fontFamily: "Signi",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                              text: "log in",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Signi",
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pop(context);
                                }),
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
