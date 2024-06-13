// screens/dashboard_screen.dart
import 'package:bized/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
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
                SvgPicture.asset("assets/images/generate_two.svg"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Which Business would You Like to Manage Today?",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 17.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => const NavigationMenu()));
                  },
                  child: Container(
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
                          const Text("Company One"),
                          SvgPicture.asset("assets/images/arrow-right.svg")
                        ],
                      ),
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
                        const Text("Company One"),
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
                        const Text("Company One"),
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
                        const Text("Company One"),
                        SvgPicture.asset("assets/images/arrow-right.svg")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
