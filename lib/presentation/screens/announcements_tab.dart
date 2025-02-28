import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../../core/constants/app_data.dart';
import '../components/campaign_card.dart';

class AnnouncementsTab extends StatelessWidget {
  const AnnouncementsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Text(
              'Kampanyalardan, sipariş takibinden ve daha \nfazlasından haberdar olmak istersen sana bildirim gönderelim.',
              style: TextStyle(
                fontSize: 14,
                color: AppConstants.getirPurple,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: AppData.announcements.length,
                    itemBuilder: (context, index) => CampaignCard(
                      campaignModel: AppData.campaigns[index],
                    ),
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
