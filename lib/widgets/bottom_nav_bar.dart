import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relic/core/constant/image_strings.dart';
import 'package:relic/screens/main_page/Airline/history.dart';
import 'package:relic/screens/main_page/my_booking/my_booking_screen.dart';
import '../screens/main_page/home_screen/home.dart';
import '../screens/main_page/my_reserviation/settings.dart';

import '../screens/main_page/qr/qr_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF009B8D),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          onPressed: () => Get.to(() => const QrScreen()),
          child: Image(
            image: AssetImage(MyImage.qr),
          ),
        ),
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 90,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            backgroundColor: Colors.white,
            indicatorColor: Colors.black.withOpacity(0.1),
            destinations: [
              NavigationDestination(
                  icon: Image(
                    image: controller.selectedIndex.value == 0
                        ? AssetImage(MyImage.homeSelected)
                        : AssetImage(MyImage.home),
                  ),
                  label: 'Home'),
              NavigationDestination(
                  icon: Image(
                    image: controller.selectedIndex.value == 1
                        ? AssetImage(MyImage.touristSelected)
                        : AssetImage(MyImage.tourist),
                  ),
                  label: 'My Booking'),
              NavigationDestination(
                  icon: Image(
                    image: controller.selectedIndex.value == 2
                        ? AssetImage(MyImage.historySelected)
                        : AssetImage(MyImage.history),
                  ),
                  label: 'Airlines'),
              NavigationDestination(
                  icon: Image(
                    image: controller.selectedIndex.value == 3
                        ? AssetImage(MyImage.settingsSelected)
                        : AssetImage(MyImage.settings),
                  ),
                  label: 'Profile'),
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
    const HomeScreen(),
    const MyBooking(),
    Airline(),
    const Profile(),
  ];
}
