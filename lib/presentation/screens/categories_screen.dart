import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/constants/app_constants.dart';
import '../../core/constants/app_data.dart';
import '../../data/services/getir_home.dart';
import '../components/category_card.dart';
import 'home_screen.dart';

class GetirHomeScreen extends StatelessWidget {
  final GetirHomeController controller = Get.put(GetirHomeController());

  GetirHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double paddingValue = screenWidth * 0.04;
    double bannerHeight = screenHeight * 0.29;
    double cardHeightLarge = screenHeight * 0.21;
    double cardHeightSmall = screenHeight * 0.1;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppConstants.statusBar,
        ),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const Icon(Icons.location_on, color: Color(0xFF613BCE)),
            const SizedBox(width: 8),
            const Text("Adres Bilgisi Yok",
                style: TextStyle(color: Colors.black, fontSize: 14)),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text("Adres Ekle",
                  style: TextStyle(color: Color(0xFF5E4D8E), fontSize: 14)),
            ),
            IconButton(
              icon: const Icon(Icons.add, color: Color(0xFF613BCE)),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: bannerHeight,
            child: PageView.builder(
              controller: controller.bannerController,
              onPageChanged: (index) {
                if (index == AppData.getirHomeBannerImages.length) {
                  Future.delayed(Duration(milliseconds: 300), () {
                    controller.bannerController.jumpToPage(0);
                  });
                } else {
                  controller.currentPage.value = index;
                }
              },
              itemCount: AppData.getirHomeBannerImages.length + 1,
              itemBuilder: (context, index) {
                return Image.asset(
                    AppData.getirHomeBannerImages[
                        index % AppData.getirHomeBannerImages.length],
                    fit: BoxFit.fill);
              },
            ),
          ),
          const SizedBox(height: 24),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 24),
              child: SmoothPageIndicator(
                controller: controller.bannerController,
                count: AppData.getirHomeBannerImages.length,
                effect: const ScaleEffect(
                  dotHeight: 4,
                  dotWidth: 4,
                  activeDotColor: Color(0xFF613BCE),
                  dotColor: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 4),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingValue),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CategoryCard(
                            text: 'getir',
                            imageRes: 'assets/images/getir.png',
                            height: cardHeightLarge,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            }),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: CategoryCard(
                          text: 'getirfinans',
                          imageRes: 'assets/images/getirfinans.png',
                          height: cardHeightLarge,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        child: CategoryCard(
                          text: 'getirbüyük',
                          imageRes: 'assets/images/getirbuyuk.png',
                          height: cardHeightSmall,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: CategoryCard(
                          text: 'getiryemek',
                          imageRes: 'assets/images/getiryemek.png',
                          height: cardHeightSmall,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CategoryCard(
                          text: 'getirçarşı',
                          imageRes: 'assets/images/getircarsi.png',
                          height: cardHeightSmall,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: CategoryCard(
                          text: 'getiralışveriş',
                          imageRes: 'assets/images/getiralisveris.png',
                          height: cardHeightSmall,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CategoryCard(
                          text: 'getirsu',
                          imageRes: 'assets/images/getirsu.png',
                          height: cardHeightSmall,
                        ),
                      ),
                      Expanded(
                        child: CategoryCard(
                          text: 'getiriş',
                          imageRes: 'assets/images/getiris.png',
                          height: cardHeightSmall,
                        ),
                      ),
                      const SizedBox(width: 4),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
