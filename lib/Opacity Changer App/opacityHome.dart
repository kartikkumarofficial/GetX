import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/opacity_controller.dart';

class OpacityApp extends StatefulWidget {
  OpacityApp({super.key});

  @override
  State<OpacityApp> createState() => _OpacityAppState();
}

class _OpacityAppState extends State<OpacityApp> {
  // Instantiate the OpacityController
  final OpacityController opacityController = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Changer'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Reactive Opacity Container
            Obx(() => Container(
              color: Colors.red.withOpacity(opacityController.opacity.value),
              height: 300,
              width: 300,
            )),
            SizedBox(height: 20),

            // Slider to Control Opacity
            Obx(() => Slider(
              value: opacityController.opacity.value,
              min: 0.0,
              max: 1.0,
              // divisions: 10,
              label: opacityController.opacity.value.toStringAsFixed(1),
              onChanged: (value) {
                print('Slider Value: $value');
                opacityController.setOpacity(value);
              },
            )),
          ],
        ),
      ),
    );
  }
}
