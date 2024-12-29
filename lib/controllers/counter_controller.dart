import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CounterController extends GetxController{
  //getx ki datatypes ki start me Rx lagta hai

  RxInt counter =0.obs; //observable class , getx ensures if the value of this class is changing

incrementCounter(){
  counter.value++;
  print(counter.value);
}
}