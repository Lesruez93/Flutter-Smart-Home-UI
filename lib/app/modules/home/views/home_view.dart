import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relative_scale/relative_scale.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> cardData = [
      {"title": "Climate", "subtitle": "20˚c"},
      {"title": "Lights", "subtitle": "2 on"},
      {"title": "Security", "subtitle": "3/4 CCTV"},
      {"title": "Humidity", "subtitle": "30˚c"},
      {"title": "AQI", "subtitle": "Good"},
      // Add more card data as needed
    ];
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Scaffold(
          appBar: AppBar(
            actions: [
              Container(
                  padding: EdgeInsets.only(right: sx(20)),
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text(
                      'JD',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ],
            title: const Text(
              'Smart Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.all(sx(15)),
            child: ListView(
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
              SizedBox(
                height: sy(55),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cardData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Container(
                        width: sx(150), // Set the desired width
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cardData[index]['title']!,
                              style: const TextStyle(fontSize: 14.0,
                              fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(cardData[index]['subtitle']!,
                              style: const TextStyle(fontSize: 12.0,
                            ))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
                  SizedBox(height: sy(10),),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Quick Access',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
            ]),
          ));
    });
  }
}
