import 'package:get/get.dart';

class FavouriteController extends GetxController {
  // Reactive list to store favorite states for each item
  late RxList<bool> isFavourite;

  // Constructor to initialize the favorite state list
  FavouriteController(int length) {
    isFavourite = List.generate(length, (_) => false).obs;
  }

  // Toggle favorite state for a specific item
  void toggleFavourite(int index) {
    isFavourite[index] = !isFavourite[index];
  }
}
