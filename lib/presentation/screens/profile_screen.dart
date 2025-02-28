import 'package:flutter/material.dart';
import 'package:getir/presentation/widgets/custom_app_bar.dart';
import 'package:getir/presentation/widgets/custom_list_tile.dart';
import '../widgets/login_bottom_sheet.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar(
        title: "Profil",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      body: ListView(
        children: [
          CustomListTile(
            icon: Icons.person,
            title: "Giriş Yap",
            onTap: () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
                backgroundColor: Colors.white,
                builder: (context) => const LoginBottomSheet(),
              );
            },
          ),
          SizedBox(height: 28),
          CustomListTile(icon: Icons.live_help, title: "Canlı Destek"),
          CustomListTile(icon: Icons.location_on, title: "Adreslerim"),
          CustomListTile(icon: Icons.favorite, title: "Favori Ürünlerim"),
          CustomListTile(icon: Icons.help, title: "Yardım"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Language - Dil',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
          CustomListTile(title: "Türkçe"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Versiyon',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
          CustomListTile(title: "25.3.0"),
        ],
      ),
    );
  }
}
