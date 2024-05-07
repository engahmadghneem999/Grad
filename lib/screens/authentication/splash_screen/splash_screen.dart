import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:relic/screens/authentication/welcome/welcome.dart';
import 'package:relic/screens/main_page/Airline/history.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
  Future.delayed(const Duration(seconds: 5), () {

Get.to(Welcome());
    });

  // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/BB.jpg'))
      ),
         
        child: Column(
        
          children: [
        
            SizedBox(height: 100,),
              Lottie.asset('assets/images/splash_anim.json'),
        
            Text('Welcome to our service',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 10,),
            Text('Relic',
            style: TextStyle(
              color: Color(0xFF009B8D),
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
            )
        
          ],
        ),
      ),
    );
  }
}
