// screens/welcome_screen.dart
import 'package:bized/screens/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/welcome.png',
                    height: 280,
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    "Manage Clients, Send",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      color: Color(0xFF0057FF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Quotations and Invoices",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      color: Color(0xFF0057FF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xFF0057FF),
                          )),
                      // decoration: BoxDecoration(

                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFffffff),
                          // foregroundColor: const Color(0xFF0057FF),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          minimumSize: Size(280, 45), //////// HER
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => const LoginScreen()));
                        },
                        child: const Text(
                          'GET STARTED',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Color(0xFF0057FF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
