import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/app_data.dart';

class GetirHomeController extends GetxController {
  final PageController _bannerController = PageController();
  PageController get bannerController => _bannerController;

  final RxInt _currentPage = 0.obs;
  RxInt get currentPage => _currentPage;

  late Timer autoSlideTimer;

  @override
  void onInit() {
    super.onInit();
    autoSlideTimer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (currentPage.value < AppData.getirHomeBannerImages.length - 1) {
        currentPage.value++;
        bannerController.nextPage(
          duration: const Duration(milliseconds: 850),
          curve: Curves.ease,
        );
      } else {
        currentPage.value = 0;
        bannerController.jumpToPage(0);
      }
    });
  }

  // void _startBannerAutoScroll() async {
  //   while (true) {
  //     await Future.delayed(const Duration(seconds: 4));
  //     if (bannerController.hasClients) {
  //       int nextPage = (bannerController.page?.toInt() ?? 0) + 1;
  //       if (nextPage >= AppData.getirHomeBannerImages.length) {
  //         nextPage = 0;
  //       }
  //       await bannerController.animateToPage(
  //         nextPage,
  //         duration: const Duration(milliseconds: 850),
  //         curve: Curves.easeInOut,
  //       );
  //     }
  //   }
  // }
}
