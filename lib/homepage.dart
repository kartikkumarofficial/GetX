import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Opacity%20Changer%20App/opacityHome.dart';
import 'package:getx/screen2.dart';
import 'package:getx/screen3.dart';
import 'languages.dart';
import 'CounterApp/counterHome.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('GetX Utils',style:TextStyle(fontSize: 30) ,)),

      ),


      body: Column(
        children: [
          Card(
            child:
            ListTile(
              title: Text(' GetX Dialog Alert'),
              subtitle: Text('GetX Dialog Alert with GetX'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete Chat',
                  middleText: 'Are you sure u wanna delete this chat?',
                  onConfirm: () {
                  print('Chat deleted');
                  Get.back(); },
                onCancel: (){
                    print('Cancelled');
                    Get.back();

                },
                  contentPadding: EdgeInsets.all(20),
                  textCancel: 'No',
                  textConfirm: 'Yes',
                  confirm: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('OK')),
                  cancel: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('Cancel')),


                );

              },
            ),
          ),//dialog alert
          Card(
            child:
            ListTile(
              title: Text('GetX Bottom Sheet'),
              subtitle: Text('Building a bottomsheet with the help of getx'),
              onTap:(){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title:Text('Light theme'),
                          leading: Icon(Icons.light_mode),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());

                          },
                        ),
                        ListTile(
                          title:Text('Dark theme'),
                          leading: Icon(Icons.dark_mode),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());

                          },
                        ),

                      ],
                    ),
                  )
                );
              },
            ),
          ), //bottomsheet
          Card(
            child:ListTile(
              title: Text('GetX Navigation'),
              subtitle: Text('Navigation with the help of GetX'),
              onTap: (){
                Get.to(screen2());
              },



            ),
          ), //navigation
          Card(
            child:
            ListTile(
              title: Text(' MediaQuery Page'),
              subtitle: Text('Mediaquery given to elements using GetX'),
              onTap: (){
                Get.to(screen3());
              }


            ),
          ),//mediaquery
          Card(
            child:
            ListTile(
              title: Text('localisation'.tr),
              subtitle: Text('language'.tr),
              onTap:(){
                if (flag == true) {
                  Get.updateLocale(Locale('hi','IN'));
                } else {
                  Get.updateLocale(Locale('en','US'));
                }
                flag = !flag;


              },
            ),
          ), //localisation
          Card(
            child:ListTile(
              title: Text('Counter App'),
              subtitle: Text('Learning Controller using COunter App'),
              onTap: (){
                Get.to(counterApp());
              },



            ),
          ),//CounterApp
    Card(
    child:ListTile(
    title: Text('Opacity Changer App'),
    subtitle: Text('Changes the opacity with slider'),
    onTap: (){
    Get.to(OpacityApp());
    },



    ),
    ),



        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.showSnackbar(
        GetSnackBar(
            title: 'Notific',
            message: 'you just clicked the floating action button',
            backgroundColor: Colors.greenAccent,
        titleText: Text('Notification',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold),),
          borderRadius: 30,
          duration: Duration(seconds: 4),
          snackPosition: SnackPosition.TOP,
          icon: Icon(Icons.notification_important),
          isDismissible: true,
          dismissDirection: DismissDirection.horizontal

        ));
      },
      child: Icon(Icons.notification_add),),
    );
  }
}
