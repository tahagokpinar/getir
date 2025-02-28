import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/app_data.dart';

class HomeController extends GetxController {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  PageController get pageController => _pageController;

  final RxInt _currentPage = 0.obs;
  RxInt get currentPage => _currentPage;

  Timer? autoSlideTimer;

  @override
  void onInit() {
    super.onInit();

    autoSlideTimer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (pageController.hasClients) {
        if (currentPage.value < AppData.banners.length - 1) {
          currentPage.value++;
          pageController.nextPage(
            duration: Duration(milliseconds: 600),
            curve: Curves.ease,
          );
        } else {
          currentPage.value = 0;
          pageController.jumpToPage(0);
        }
      }
    });
  }

  @override
  void onClose() {
    autoSlideTimer?.cancel();
    pageController.dispose();
    super.onClose();
  }
}
