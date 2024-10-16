import "package:barber_app/pages/booking.dart";
import "package:barber_app/services/shared_pref.dart";
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String? name , image; // these are used to display name of logged in used and his image.

// we will fetch data from shared preference.

getDatafromSharedPref() async{
  name = await SharedPreferenceHelper() .getUserName();
  image = await SharedPreferenceHelper().getUserImage();

  setState(() {
    
  });

}

  getonTheLoad() async{
    await getDatafromSharedPref();
    setState(() {
      
    });
  }

  @override
  void initState() {
    getonTheLoad();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2b1615),
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(
                          color: const Color.fromARGB(197, 255, 255, 255),
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    Text(
                      name!,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      image!,
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.white30,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Services",
              style: TextStyle(
                  color: const Color.fromARGB(197, 255, 255, 255),
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Booking(service: "Classic Shaving")));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFe29452),
                          borderRadius: BorderRadius.circular(20)),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/shaving.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Classic Shaving",
                            style: TextStyle(
                                color: const Color.fromARGB(197, 255, 255, 255),
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Booking(service: "Hair washing")));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFe29452),
                          borderRadius: BorderRadius.circular(20)),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/hair.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hair washing",
                            style: TextStyle(
                                color: const Color.fromARGB(197, 255, 255, 255),
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Booking(service: "Hair Cutting")));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFe29452),
                          borderRadius: BorderRadius.circular(20)),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/cutting.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hair Cutting",
                            style: TextStyle(
                                color: const Color.fromARGB(197, 255, 255, 255),
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Booking(service: "Beard Trimming")));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFe29452),
                          borderRadius: BorderRadius.circular(20)),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/beard.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Beard Trimming",
                            style: TextStyle(
                                color: const Color.fromARGB(197, 255, 255, 255),
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Booking(service: "Facials")));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFe29452),
                          borderRadius: BorderRadius.circular(20)),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/facials.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Facials",
                            style: TextStyle(
                                color: const Color.fromARGB(197, 255, 255, 255),
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Booking(service: "Kids hair cut")));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFe29452),
                          borderRadius: BorderRadius.circular(20)),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/kids.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Kids Hair Cut",
                            style: TextStyle(
                                color: const Color.fromARGB(197, 255, 255, 255),
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
