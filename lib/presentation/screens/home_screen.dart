import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getir/core/constants/app_constants.dart';
import 'package:getir/presentation/screens/campaign_screen.dart';
import 'package:getir/presentation/screens/market_categories_screen.dart';
import 'package:getir/presentation/screens/profile_screen.dart';
import 'package:getir/presentation/screens/search_tab_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MarketCategoriesScreen(),
    const SearchTabScreen(),
    const ProfileScreen(),
    CampaignScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6.0,
          color: Colors.white70,
          elevation: 8.0,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBottomNavItem(FontAwesomeIcons.house, 0),
              _buildBottomNavItem(FontAwesomeIcons.magnifyingGlass, 1),
              SizedBox(width: 50),
              _buildBottomNavItem(FontAwesomeIcons.solidUser, 2),
              _buildBottomNavItem(FontAwesomeIcons.gift, 3),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: AppConstants.getirPurple,
          shape: CircleBorder(),
          child: Image.asset(
            'assets/images/ic_fab.png',
            height: 60,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildBottomNavItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        decoration: BoxDecoration(),
        child: Icon(
          icon,
          size: 24,
          color:
              _selectedIndex == index ? AppConstants.getirPurple : Colors.grey,
        ),
      ),
    );
  }
}
