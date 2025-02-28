import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getir/core/constants/app_constants.dart';
import 'package:getir/core/constants/app_data.dart';
import 'package:getir/presentation/widgets/custom_app_bar.dart';

import '../../data/services/home.dart';

class MarketCategoriesScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  MarketCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "getir",
        style: TextStyle(
          color: AppConstants.getirYellow,
          fontFamily: 'Getir',
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppConstants.getirYellow,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "ev, Akçalı, 6VH8+VV, 31285 Arsuz/Hatay",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        SizedBox(width: 4),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "TVS \n30+ dk",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 180,
            child: PageView.builder(
              controller: controller.pageController,
              onPageChanged: (index) {
                if (index == AppData.banners.length) {
                  Future.delayed(Duration(milliseconds: 300), () {
                    controller.pageController.jumpToPage(0);
                  });
                } else {
                  controller.currentPage.value = index;
                }
              },
              itemCount: AppData.banners.length + 1,
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      AppData.banners[index % AppData.banners.length],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: AppData.categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  final category = AppData.categories[index];
                  return Column(
                    children: [
                      Container(
                        height: screenWidth * 0.2,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 233, 231, 231),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(category["image"]!),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        category["title"]!,
                        style: const TextStyle(fontSize: 13),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
