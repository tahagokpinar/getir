import 'package:flutter/material.dart';
import 'package:getir/core/constants/app_constants.dart';
import 'package:getir/presentation/widgets/custom_app_bar.dart';
import 'package:getir/presentation/widgets/search_labels_container.dart';

class SearchTabScreen extends StatelessWidget {
  const SearchTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: const CustomAppBar(
        title: 'Arama',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchField(),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 28, 0, 16),
              child: Text(
                'Popüler Aramalar',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ),
            const SearchLabelsContainer(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return TextFormField(
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
        hintText: 'Ürün Ara',
        suffixIcon: Icon(Icons.mic, color: Colors.grey, size: 25),
        prefixIcon:
            Icon(Icons.search, color: AppConstants.getirPurple, size: 30),
        border: InputBorder.none,
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
