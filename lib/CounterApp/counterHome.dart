import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/counter_controller.dart';


class counterApp extends StatefulWidget {
  const counterApp({super.key});

  @override
  State<counterApp> createState() => _counterAppState();
}

class _counterAppState extends State<counterApp> {
  final CounterController counterController = Get.put(CounterController()); //dependency injection = kisi bhi dependency/controller ko add karna
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('  GetX Counter App'),
      ),
      body:Center(
        child: Obx((){
          return Text(counterController.counter.toString(),style: TextStyle(fontSize: 50),);
          
        }),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 100,
        child: Icon(Icons.add),
          onPressed: (){

          counterController.incrementCounter();
          }),

    );
  }
}
