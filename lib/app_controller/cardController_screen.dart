import 'package:get/get.dart';

class CardController extends GetxController {

  final saveCard = false.obs;

  void toggleSaveCard() {
    saveCard.value = !saveCard.value;
    update();
  }
}
