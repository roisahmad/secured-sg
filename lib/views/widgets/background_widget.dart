import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;

  const BackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
          ),
        ),
        Positioned.fill(child: Container(color: Color(0xDAFFFFFF))),
        Positioned.fill(child: child),
      ],
    );
  }
}
