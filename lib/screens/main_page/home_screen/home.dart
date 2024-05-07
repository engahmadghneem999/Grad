import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relic/screens/authentication/welcome/welcome.dart';
import 'package:relic/screens/main_page/Airline/widgets/mybold_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/constant/size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int activeIndex = 0;
final slider = [
  'assets/images/slider1.jpeg',
  'assets/images/slider2.jpeg',
  'assets/images/slider3.jpeg',
  'assets/images/slider5.jpeg',
  'assets/images/slider14.jpeg'
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
        
    return Container(
      
       
      child: Scaffold(
          appBar: AppBar(
           
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                    100), // يمكنك تعديل قيمة الشعاع الخاصة بالحواف الدائرية هنا
              ),
            ),
            backgroundColor: Color(0xFF009B8D),
            centerTitle: true,
            title: const Text(
              'HOME',
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold
              ),
            ),
          ), 
          body:  Container(
             decoration: BoxDecoration(

          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/BB.jpg',),
            
            )),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height:20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Row(children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/znzn.jpg',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            My_Text(text: 'Hi, Zeina !'),
                            Text("You are Looking for a trip ?"),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  
                  const SizedBox(
                    height: 5,
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black)),
                      child: const Expanded(
                        child: TextField(
                    
                            // onSubmitted: (data) {
                            // cityName = data;
                    
                            // },
                            decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                          label: Text("Search"),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          hintText: "Search for a travel",
                          hintStyle:
                              TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                          labelStyle:
                              TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  
                  /// slider
                  CarouselSlider.builder(
                      itemCount: slider.length,
                      itemBuilder: (context, index, realIndex) {
                        final sliders = slider[index];
                        return buildImage(sliders, index);
                      },
                      options: CarouselOptions(
                          height: 200,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                            });
                          },
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 2))),
                  
                  SizedBox(
                    height: 10,
                  ),
                  
                  ///dots
                  buildIndicator(),
                  SizedBox(
                    height: 20,
                  ),
                  
                  ///impomrtant comp
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          ':أهم شركات الحجز',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                  CarouselSlider.builder(
                      itemCount: 4,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                          height: 100,
                          width: 200,
                          color: Colors.green,
                          child: ListTile(
                            title: Text('Comp Name'),
                            subtitle: Text('I have many '),
                          ),
                        );
                      },
                      options: CarouselOptions(
                          height: 200,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                            });
                          },
                          autoPlay: false,
                          autoPlayInterval: const Duration(seconds: 2))),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          ':أشهر الرحلات',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                ],
              ),
                  ),
          )),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        count: slider.length,
        activeIndex: activeIndex,
        effect: const SlideEffect(
            dotWidth: 10,
            dotHeight: 10,
            dotColor: Color(0xff000000),
            activeDotColor: Color(0xFF009B8D)),
      );

  Widget buildImage(String sliders, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 1),
        color: Colors.grey,
        child: Image.asset(
          sliders,
          fit: BoxFit.cover,
        ),
      );
}
