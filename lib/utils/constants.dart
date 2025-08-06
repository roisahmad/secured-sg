import 'package:flutter/material.dart';

class MenuItem {
  final String title1;
  final String? title2;
  final IconData? icon;
  final String? routeName;

  const MenuItem({
    required this.title1,
    this.title2,
    required this.icon,
    this.routeName,
  });

  MenuItem copyWith({
    String? title1,
    String? title2,
    String? routeName,
    IconData? icon,
  }) {
    return MenuItem(
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      icon: icon ?? this.icon,
      routeName: routeName ?? this.routeName,
    );
  }
}

class Constants {
  static const Color primaryColor = Color(0xFF161857);
  static const Color primaryColorTransparent = Color(0x77161857);
  static const Color secondaryColor = Color.fromARGB(255, 25, 27, 95);

  static final List<MenuItem> menuItems = [
    MenuItem(
      title1: "Facility",
      title2: "Management",
      icon: Icons.home_work_rounded,
      routeName: "facilityManagement",
    ),
    MenuItem(
      title1: "Visitor",
      title2: "Registration",
      icon: Icons.supervisor_account,
      routeName: "visitorRegistration",
    ),
    MenuItem(
      title1: "Enforcement",
      title2: "Action",
      icon: Icons.verified_user_outlined,
      routeName: "enforcementAction",
    ),
    MenuItem(
      title1: "Feedback",
      title2: "And Complain",
      icon: Icons.create_outlined,
      routeName: "feedbackAndComplain",
    ),
    MenuItem(
      title1: "Incident",
      title2: "Report",
      icon: Icons.attach_file_outlined,
      routeName: "incidentReport",
    ),
    MenuItem(
      title1: "Payments",
      icon: Icons.payment_outlined,
      routeName: "payments",
    ),
    MenuItem(
      title1: "Site SOP",
      icon: Icons.menu_book_outlined,
      routeName: "siteSOP",
    ),
    MenuItem(
      title1: "Claim",
      icon: Icons.edit_calendar_outlined,
      routeName: "claim",
    ),
  ];
}
