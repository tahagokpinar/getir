import 'package:flutter/material.dart';
import 'package:getir/core/constants/app_constants.dart';
import 'package:getir/core/constants/app_data.dart';

class SearchLabelsContainer extends StatelessWidget {
  const SearchLabelsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 2, offset: Offset(0, 1)),
        ],
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: AppData.popularSearches
            .map((text) => PopularSearch(text: text))
            .toList(),
      ),
    );
  }
}

class PopularSearch extends StatelessWidget {
  final String text;
  const PopularSearch({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: AppConstants.getirPurple,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
