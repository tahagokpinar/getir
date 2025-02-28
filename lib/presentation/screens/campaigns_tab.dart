import 'package:flutter/material.dart';
import 'package:getir/core/constants/app_constants.dart';
import 'package:getir/core/constants/app_data.dart';

import '../components/campaign_card.dart';

class CampaignsTab extends StatelessWidget {
  const CampaignsTab({super.key});

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
                  Container(
                    margin: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                      bottom: 4,
                      top: 4,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            left: 8,
                            right: 8,
                            top: 4,
                            bottom: 4,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade100),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: AppConstants.getirPurple,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            'Kampanya Kodu Ekle',
                            style: TextStyle(
                              color: AppConstants.getirPurple,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppConstants.getirPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey.shade100),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Icon(Icons.mail,
                                      color: AppConstants.getirPurple),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Arkadaşını getir, ₺100 kazan',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Expanded(
                                  flex: 3,
                                  child: Text(
                                    'Her yeni ilk siparişte ikinize de hediye. Davet \nkodu paylaş, birlikte kazanın!',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey.shade200),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(
                                      Icons.keyboard_arrow_right_rounded),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: AppData.campaigns.length,
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
