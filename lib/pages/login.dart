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
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 50 , left: 30),
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
          ],
        ),
      ),
    );
  }
}
