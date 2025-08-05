import 'package:flutter/material.dart';

class CardMenuWidget extends StatelessWidget {
  final String title1;
  final String? title2;
  final String icon;
  final String? access;

  const CardMenuWidget({
    super.key,
    required this.title1,
    this.title2,
    required this.icon,
    this.access,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 8,
            spreadRadius: 4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Center(
                    child: Image.asset(icon, width: 50, height: 50),
                  ),
                ),
              ),
            ],
          ),
          Text(
            title1,
            style: const TextStyle(fontSize: 12, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          if (title2 != null)
            Text(
              title2!,
              style: const TextStyle(fontSize: 12, color: Colors.black),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}
