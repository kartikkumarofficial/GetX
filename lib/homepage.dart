import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              title: Text('GetX Dialog Alert'),
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
                    // Get.back();

                },
                  contentPadding: EdgeInsets.all(20),
                  textCancel: 'No',
                  textConfirm: 'Yes',
                  confirm: TextButton(onPressed: (){}, child: Text('OK')),
                  cancel: TextButton(onPressed: (){}, child: Text('Cancel')),


                );

              },
            ),
          )

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
          duration: Duration(seconds: 1),
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
