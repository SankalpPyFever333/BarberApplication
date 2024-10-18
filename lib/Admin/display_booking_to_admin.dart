import 'package:barber_app/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BookingDetailToAdmin extends StatefulWidget {
  const BookingDetailToAdmin({super.key});

  @override
  State<BookingDetailToAdmin> createState() => _BookingDetailToAdminState();
}

class _BookingDetailToAdminState extends State<BookingDetailToAdmin> {
  Stream? BookingStream;

  getontheload() async {
    BookingStream = await DatabaseMethods().getBooking();
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Widget allBookings() {
    return StreamBuilder(
        stream: BookingStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return Material(
                      elevation: 12,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(colors: [
                              Color(0xFFB91635),
                              Color(0xFF621d3c),
                              Color(0xFF311917)
                            ])),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.network(
                                    ds["Image"],
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Service: " + ds["Service"],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Signi"),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Name: " + ds["Username"],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Signi"),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Date: " + ds["Date"],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Signi"),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Time: " + ds["Time"],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Signi"),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "email: " + ds["email"],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Signi"),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    await DatabaseMethods()
                                        .deletebooking(ds.id);
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFdf711a),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Text(
                                      "DONE",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Signi",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  })
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          children: [
            Center(
              child: Text(
                "All Bookings",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Signi"),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: allBookings(),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
