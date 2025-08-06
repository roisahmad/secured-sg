import 'package:flutter/material.dart';
import 'package:secure_sg_app/utils/constants.dart';

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
        color: Color(0x99FFFFFF),
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
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Center(
                    child: Image.asset(icon, width: 80, height: 80),
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

class CardMenu2Widget extends StatelessWidget {
  final String title1;
  final String? title2;
  final IconData icon;
  final String? access;

  const CardMenu2Widget({
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
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Constants.primaryColorTransparent, // latar mint/cyan muda
              shape: BoxShape.circle,
            ),
            child: Center(
              // child: Image.asset(
              //   icon,
              //   width: 32,
              //   height: 32,
              //   color: Constants.primaryColor, // warna teal
              // ),
              child: Icon(
                icon, // ini adalah IconData
                color: Constants.primaryColor,
                size: 24,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title1,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              if (title2 != null)
                Text(
                  title2!,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
