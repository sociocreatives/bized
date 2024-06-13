// main.dart
import 'package:bized/responsive/desktop_scaffold.dart';
import 'package:bized/responsive/mobile_scaffold.dart';
import 'package:bized/responsive/responsive_layout.dart';
import 'package:bized/responsive/tablet_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bized',
        theme: ThemeData(useMaterial3: true, fontFamily: "Poppins"),
        debugShowCheckedModeBanner: false,
        home: ResponsiveLayout(
          mobileScaffold: const MobileScaffold(),
          tabletScaffold: const TabletScaffold(),
          desktopScaffold: const DesktopScaffold(),
        ));
  }
}
