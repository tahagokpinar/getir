import 'package:flutter/material.dart';
import 'package:getir/core/constants/app_constants.dart';

class CustomListTile extends StatelessWidget {
  final IconData? icon;
  final String title;
  final VoidCallback? onTap;

  const CustomListTile({
    super.key,
    this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade100,
          width: 0.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 1,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading:
            icon != null ? Icon(icon, color: AppConstants.getirPurple) : null,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap ?? () {},
      ),
    );
  }
}
