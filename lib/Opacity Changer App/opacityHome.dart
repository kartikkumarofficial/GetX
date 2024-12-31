import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/opacity_controller.dart';

class opacityApp extends StatefulWidget {
  opacityApp({super.key});

  @override
  State<opacityApp> createState() => _opacityAppState();
}

class _opacityAppState extends State<opacityApp> {
  OpacityController opacityController =Get.put(OpacityController()) ;
  double opacity = 0.4 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Changer'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(()=>Container(
              color: Colors.red.withOpacity(opacity),
              height: 300,
              width: 300,
            ),),
            Obx(()=>Slider(value: opacity, onChanged: (value) {
              print(value);
              value = opacity;
              // OpacityController.setOpa

            }, ),)



          ],
        ),
      ),

    );
  }
}
