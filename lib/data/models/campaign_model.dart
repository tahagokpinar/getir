import 'package:flutter/material.dart';

class CampaignModel {
  final String imageRes;
  final String title;
  final String description;
  final VoidCallback? onTap;

  CampaignModel({
    required this.title,
    required this.imageRes,
    required this.description,
    this.onTap,
  });
}
