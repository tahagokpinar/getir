import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getir/core/constants/app_constants.dart';

import '../../data/services/campaign.dart';
import 'announcements_tab.dart';
import 'campaigns_tab.dart';

class CampaignScreen extends StatelessWidget {
  const CampaignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CampaignController controller = Get.put(CampaignController());

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppConstants.statusBar,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: AppConstants.getirPurple,
          title: const Text(
            'getir',
            style: TextStyle(
              fontFamily: 'Getir',
              color: Colors.yellow,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: TabBar(
                onTap: controller.changeTab,
                indicator: BoxDecoration(
                  color: AppConstants.getirPurple.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelColor: AppConstants.getirPurple,
                unselectedLabelColor: Colors.grey.shade600,
                indicatorPadding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 2,
                labelStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                tabs: const [
                  Tab(text: "Kampanyalar"),
                  Tab(text: "Duyurular"),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            CampaignsTab(),
            AnnouncementsTab(),
          ],
        ),
      ),
    );
  }
}
