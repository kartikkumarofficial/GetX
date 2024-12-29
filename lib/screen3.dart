import 'package:flutter/material.dart';
import 'package:get/get.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: Get.height*0.45,
              color: Colors.red,
              child: Center(
                child: Container(
                  height: Get.height*0.2,
                  width: Get.width*0.5,
                  color: Colors.yellow,
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Get.toNamed('/');
            }, child:Text('This is will transfer u back to home page') )
          ],
        ),
      ),
    );
  }
}
