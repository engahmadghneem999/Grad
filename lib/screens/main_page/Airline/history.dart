import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:relic/screens/main_page/Airline/widgets/col_with_pic_and_row.dart';
import 'package:relic/screens/main_page/Airline/widgets/mybold_text.dart';

class Airline extends StatelessWidget {
  List<String> employee = [
    "assets/images/p1.jpg",
    "assets/images/p2.jpg",
    "assets/images/p3.jpg",
    "assets/images/p4.jpg",
    "assets/images/p5.png",
    "assets/images/p6.jpg",
  ];
  List<String> city = ['Paris', 'Tokyo', 'Cairo', 'Dubai', 'Madrid', 'Newyork'];
  List<String> country = ['France', 'Japan', 'Egypt', 'UAE', 'Spain', 'USA'];
  List<double> rate = [4.7, 4.4, 4.5, 4.8, 4.6, 4.7];
//String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
          backgroundColor:const Color.fromARGB(255, 153, 222, 228),
          appBar: AppBar(
            title: const Text('Airline'),
            backgroundColor:const Color(0xFF009B8D),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/BB.jpg'))
      ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:14 ),
              child:ListView(
                  children: [
                    
                    
             const SizedBox(height:30,),
                  
                    ClipRRect(
                      
                      borderRadius: BorderRadius.circular(30),
                      child:Container(
                        height:230,
                        child: Image.asset('assets/images/pp.png', 
                        fit: BoxFit.fill)),
                    ),
              const  SizedBox(height: 30,),
                    const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Column_of_pic_and_title(pic: 'assets/images/hh.jpg', title: 'Hotel'),
                    Column_of_pic_and_title(pic: 'assets/images/gaming.jpg', title: 'Entertain'),
                    Column_of_pic_and_title(pic: 'assets/images/f.png', title: 'Food'),
                  Column_of_pic_and_title(pic: 'assets/images/support.jpg', title: 'Help'),
                  
                    ]),
                    const SizedBox(height: 20,),
                    const My_Text( text: 'Recommended Flights',),
                    const SizedBox( height: 20,),
                     Expanded(child: GridView.builder(
                  physics:const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
                     gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2.1/ 4,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                          ),
                          itemCount: employee.length,
                          itemBuilder: (context, i) {
                            return Card(
                                child: Column(
                              children: [
                              Padding(
                                  padding: const  EdgeInsets.all(7),
                                  child: Container(
                                    height: 250,
                                    width: 400,
                                    child: Image.asset(
                                      employee[i],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                 
                               const   Padding(
                                    padding: EdgeInsets.all(3),
                                    child: Icon(Icons.location_on_outlined),
                                  ),
                                  Column(children: [
                                    My_Text(text: city[i]),
                                    Text(country[i])
                                  ]),
                               Padding(
                                 padding: const EdgeInsets.only(left: 30),
                                 child: Text(rate[i].toString()),
                               ),
                               const   Padding(
                                    padding:  EdgeInsets.all(5),
                                    child: Icon(Icons.star),
                                  ),
                                ])
                              ],
                            ));
                          }),
                    ),
                  ]),
            ),
          ));
  }
}

