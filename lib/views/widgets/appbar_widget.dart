import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;
  final VoidCallback? onBackTap;
  final IconData? rightIcon;
  final VoidCallback? onRightTap;
  final Color backgroundColor;
  final GlobalKey? rightIconKey;
  final Color? rightIconColor;

  const AppbarWidget({
    super.key,
    this.showBackButton = false,
    this.onBackTap,
    this.rightIcon,
    this.onRightTap,
    this.backgroundColor = const Color(0xFF161857),
    this.rightIconKey,
    this.rightIconColor = const Color(0xFF4e94be),
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Secured',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            TextSpan(
              text: 'SG',
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
          ],
        ),
      ),
      leading:
          showBackButton
              ? IconButton(
                icon: const Icon(Icons.arrow_back, color: Color(0xFF4e94be)),
                onPressed: onBackTap ?? () => Navigator.pop(context),
              )
              : null,
      actions: [
        if (rightIcon != null)
          IconButton(
            icon: Icon(rightIcon, color: rightIconColor),
            key: rightIconKey,
            onPressed: onRightTap,
          ),
      ],
    );
  }
}
