import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';



class Languages extends Translations{

  @override
  Map<String , Map<String,String>> get keys =>{
    'en_US':{
      'message':'What is your name ',
      'name': 'Kartik',
      'localisation':'English',
      'language':'Changing Tile Language'
    },
    'hi_IN':{
      'message':'आपका क्या नाम है ',
      'name': 'कार्तिक',
      'localisation':'हिन्दी',
      'language':'टाइल भाषा बदलना'

    },
  };

}