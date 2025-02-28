import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getir/core/constants/app_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final TextStyle style;
  const CustomAppBar({super.key, required this.title, required this.style});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppConstants.statusBar,
      ),
      backgroundColor: AppConstants.getirPurple,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Text(
        title,
        style: style,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
