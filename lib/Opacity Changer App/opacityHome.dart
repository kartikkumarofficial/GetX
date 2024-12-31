import 'package:flutter/material.dart';
import 'package:get/get.dart';

class opacityApp extends StatelessWidget {
  opacityApp({super.key});
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
            Container(
              color: Colors.red,
              height: 300,
              width: 300,
            ),
            Slider(value: opacity, onChanged: (value) {
              print(value);
              value = opacity;
              
            }, ),

          ],
        ),
      ),

    );
  }
}
