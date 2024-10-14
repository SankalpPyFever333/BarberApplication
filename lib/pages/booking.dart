import "package:flutter/material.dart";

class Booking extends StatefulWidget {
  String service;
  Booking({required this.service});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2b1615),
      body: Container(
        margin: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                    size: 30,
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Let's the\njourney begin",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: Colors.white30),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "images/discount.png",
                  fit: BoxFit.cover,
                )),
            Text(
              widget.service,
              style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
