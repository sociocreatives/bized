// navigation_menu.dart
import 'package:bized/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.red,
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                  icon: Icon(
                    Iconsax.home,
                    color: Color(0xFF0057FF),
                  ),
                  label: "Home"),
              NavigationDestination(
                  icon: Icon(
                    Iconsax.people,
                    color: Color(0xFF0057FF),
                  ),
                  label: "Teams"),
              NavigationDestination(
                  icon: Icon(
                    Iconsax.building,
                    color: Color(0xFF0057FF),
                  ),
                  label: "Companies"),
              NavigationDestination(
                  icon: Icon(
                    Iconsax.user,
                    color: Color(0xFF0057FF),
                  ),
                  label: "Profile"),
            ],
          ),
        ),
        body: Obx(
          () => controller.screens[controller.selectedIndex.value],
        ));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const LandingScreen(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
  ];
}
