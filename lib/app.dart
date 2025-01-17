import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relic/binding/initial_bindings.dart';
import 'package:relic/core/constant/shared_preferences_keys.dart';
import 'package:relic/core/service/service.dart';
import 'package:relic/screens/authentication/splash_screen/splash_screen.dart';
import 'package:relic/screens/authentication/welcome/welcome.dart';
import 'package:relic/screens/main_page/my_reserviation/settings.dart';
import 'package:relic/widgets/bottom_nav_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find<MyServices>();
    bool isLoggedIn =myServices.sharedPreferences
        .getBool(SharedPreferencesKeys.isLoginKey)?? false;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBindings(),
      home:SplashScreen()
      // isLoggedIn ? const BottomNavBar() : const SplashScreen(),
    );
  }
}
