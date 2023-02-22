import 'package:get/get.dart';

class FavouriteController extends GetxController {
  final RxList isTap = [].obs;
  final RxInt currentIndex = 0.obs;
  RxBool like = true.obs;
}
