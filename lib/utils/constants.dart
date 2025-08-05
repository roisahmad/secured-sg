import 'package:flutter/material.dart';

class MenuItem {
  final String title1;
  final String? title2;
  final String imagePath;
  final String? routeName;

  const MenuItem({
    required this.title1,
    this.title2,
    required this.imagePath,
    this.routeName,
  });

  MenuItem copyWith({
    String? title1,
    String? title2,
    String? routeName,
    String? imagePath,
  }) {
    return MenuItem(
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      imagePath: imagePath ?? this.imagePath,
      routeName: routeName ?? this.routeName,
    );
  }
}

class Constants {
  static const Color primaryColor = Color(0xFF161857);
  static const Color primaryColorTransparent = Color(0x99161857);

  static final List<MenuItem> menuItems = [
    MenuItem(
      title1: "Facility",
      title2: "Management",
      imagePath: "assets/images/fm_icon.png",
      routeName: "facilityManagement",
    ),
    MenuItem(
      title1: "Visitor",
      title2: "Registration",
      imagePath: "assets/images/vr_icon.png",
      routeName: "visitorRegistration",
    ),
    MenuItem(
      title1: "Enforcement",
      title2: "Action",
      imagePath: "assets/images/ea_icon.png",
      routeName: "enforcementAction",
    ),
    MenuItem(
      title1: "Feedback",
      title2: "And Complain",
      imagePath: "assets/images/fa_icon.png",
      routeName: "feedbackAndComplain",
    ),
    MenuItem(
      title1: "Incident",
      title2: "Report",
      imagePath: "assets/images/ir_icon.png",
      routeName: "incidentReport",
    ),
    MenuItem(
      title1: "Payments",
      imagePath: "assets/images/payment_icon.png",
      routeName: "payments",
    ),
    MenuItem(
      title1: "Site SOP",
      imagePath: "assets/images/ss_icon.png",
      routeName: "siteSOP",
    ),
    MenuItem(
      title1: "Claim",
      imagePath: "assets/images/cl_icon.png",
      routeName: "claim",
    ),
  ];
}
