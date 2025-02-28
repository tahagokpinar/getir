import 'package:get/get.dart';

class CampaignController extends GetxController {
  var tabIndex = 0.obs;

  void changeTab(int index) {
    tabIndex.value = index;
  }
}
