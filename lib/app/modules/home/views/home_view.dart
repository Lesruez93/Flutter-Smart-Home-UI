import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relative_scale/relative_scale.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            centerTitle: true,
          ),
          body: ListView());
    });
  }
}
