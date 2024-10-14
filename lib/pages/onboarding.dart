import "package:flutter/material.dart";

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF2b1615),
      body: Container(
        // width: size.width,
        // height: size.height,
        // width: 400,
        // height: 400,
        // margin:const EdgeInsets.only(top: 120 , left: 120),
        child: Column(
          children: [
            Image.asset(
              "images/barber.png",
              fit: BoxFit.contain,
            ),
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
              decoration: BoxDecoration(
                color: const  Color(0xFFdf711a),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Get a Stylish hair cut",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Signi'
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
