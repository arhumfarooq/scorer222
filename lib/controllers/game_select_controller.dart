import 'package:get/get.dart';

class GameSelectController extends GetxController {
  // Correct type: RxInt
  final RxInt gamevalue = 0.obs;

  void gameSelect(int index) {
    gamevalue.value = index; // update the value
  }
}
