import 'package:flutter/material.dart';

class LiquidTopClipperLayer1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.6);
    path.cubicTo(
      size.width * 0.1,
      size.height * 0.5,
      size.width * 0.15,
      size.height * 0.3,
      size.width * 0.3,
      size.height * 0.4,
    );
    path.cubicTo(
      size.width * 0.5,
      size.height * 0.55,
      size.width * 0.6,
      size.height * 0.2,
      size.width * 0.8,
      size.height * 0.25,
    );
    path.cubicTo(
      size.width * 0.9,
      size.height * 0.27,
      size.width,
      size.height * 0.1,
      size.width,
      0,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class LiquidTopClipperLayer2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.65);
    path.cubicTo(
      size.width * 0.1,
      size.height * 0.55,
      size.width * 0.2,
      size.height * 0.35,
      size.width * 0.35,
      size.height * 0.45,
    );
    path.cubicTo(
      size.width * 0.55,
      size.height * 0.6,
      size.width * 0.65,
      size.height * 0.25,
      size.width * 0.85,
      size.height * 0.30,
    );
    path.cubicTo(
      size.width * 0.95,
      size.height * 0.32,
      size.width,
      size.height * 0.15,
      size.width,
      0,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class LiquidBottomClipperLayer1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.cubicTo(
      size.width * 0.1,
      size.height * 0.4,
      size.width * 0.3,
      size.height * 0.6,
      size.width * 0.5,
      size.height * 0.5,
    );
    path.cubicTo(
      size.width * 0.7,
      size.height * 0.4,
      size.width * 0.8,
      size.height * 0.7,
      size.width,
      size.height * 0.6,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class LiquidBottomClipperLayer2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.cubicTo(
      size.width * 0.1,
      size.height * 0.35,
      size.width * 0.25,
      size.height * 0.55,
      size.width * 0.5,
      size.height * 0.45,
    );
    path.cubicTo(
      size.width * 0.7,
      size.height * 0.35,
      size.width * 0.85,
      size.height * 0.65,
      size.width,
      size.height * 0.55,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
