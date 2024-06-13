// screens/landing_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
              icon: const Icon(Icons.menu_outlined),
              color: const Color(0xFF0057FF),
              onPressed: () {}),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded),
            color: const Color(0xFF0057FF),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF0057FF),
                  border: Border.all(
                    color: const Color(0xFFffffff),
                  )),
              // decoration: BoxDecoration(
              child: IconButton(
                icon: const Icon(Icons.person),
                color: const Color(0xFFffffff),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.white,
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 800,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Edward Magero",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 17.0,
                                          color: const Color(0xFF0057FF),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      IconButton(
                                        color: const Color(0xFF0057FF),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(Icons.close),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    "Which Business would You Like to Switch to?",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 17.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color(0xFF0057FF),
                                        )),
                                    // decoration: BoxDecoration(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Company One"),
                                          SvgPicture.asset(
                                              "assets/images/arrow-right.svg")
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color(0xFF0057FF),
                                        )),
                                    // decoration: BoxDecoration(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Company One"),
                                          SvgPicture.asset(
                                              "assets/images/arrow-right.svg")
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color(0xFF0057FF),
                                        )),
                                    // decoration: BoxDecoration(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Company One"),
                                          SvgPicture.asset(
                                              "assets/images/arrow-right.svg")
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Good Day!",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25.0,
                  color: Color(0xFF0057FF),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                "Edward Magero Mogaka",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 17.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/poket.png",
                    width: double.infinity,
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, count) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFF0057FF),
                              border: Border.all(
                                color: const Color(0xFF0057FF),
                              )),
                          // decoration: BoxDecoration(
                          child: const Icon(
                            Iconsax.home,
                            color: Color(0xFFffffff),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xFF0057FF),
                    )),
                // decoration: BoxDecoration(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 40,
                            color: const Color(0xFFD9D9D9),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Call Client AN Other",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.0,
                                  color: Color(0xFF0057FF),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "10.00am 12/06/2024",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.0,
                                  color: Color(0xFF9A8A8A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SvgPicture.asset("assets/images/arrow-right.svg")
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xFF0057FF),
                    )),
                // decoration: BoxDecoration(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 40,
                            color: const Color(0xFFD9D9D9),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Call Client AN Other",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.0,
                                  color: Color(0xFF0057FF),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "10.00am 12/06/2024",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.0,
                                  color: Color(0xFF9A8A8A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SvgPicture.asset("assets/images/arrow-right.svg")
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xFF0057FF),
                    )),
                // decoration: BoxDecoration(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 40,
                            color: const Color(0xFFD9D9D9),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Call Client AN Other",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.0,
                                  color: Color(0xFF0057FF),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "10.00am 12/06/2024",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.0,
                                  color: Color(0xFF9A8A8A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SvgPicture.asset("assets/images/arrow-right.svg")
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
