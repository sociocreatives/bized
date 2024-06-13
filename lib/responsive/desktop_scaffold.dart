// responsive/desktop_scaffold.dart
import 'package:flutter/material.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [Text("Webspage")],
        ),
      )),
    );
  }
}
