import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String text;
  final String imageRes;
  final double height;
  final VoidCallback? onTap;

  const CategoryCard({
    super.key,
    required this.text,
    required this.imageRes,
    required this.height,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = (screenWidth - 48) / 2;

    return GestureDetector(
      onTap: onTap ?? () {},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: cardWidth,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    imageRes,
                    width: cardWidth * 0.9,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 12),
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'Getir',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF613BCE),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
