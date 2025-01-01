import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/favourite_controller.dart';

class FavouriteApp extends StatelessWidget {
  final List<String> proglangs = [
    'Python',
    'Java',
    'C++',
    'HTML',
    'JS',
    'PHP',
    'C',
    'CSS',
    'Dart',
    'C#'
  ];

  // Initialize the controller with the length of proglangs
  final FavouriteController favouriteController = Get.put(FavouriteController(10));

  FavouriteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Programming Language'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: proglangs.length,
        itemBuilder: (context, index) {
          return Obx(() {
            bool isFavourite = favouriteController.isFavourite[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                title: Text(
                  proglangs[index],
                  style: const TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.favorite_rounded,
                  color: Colors.red.withOpacity(isFavourite ? 1.0 : 0.0),
                ),
                onTap: () {
                  favouriteController.toggleFavourite(index);
                },
              ),
            );
          });
        },
      ),
    );
  }
}
