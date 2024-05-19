import 'package:flutter/material.dart';

class NavigationBarButton extends StatelessWidget {
  const NavigationBarButton({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.onPressed,
  });

  final IconData icon;
  final Color iconColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        color: iconColor,
        iconSize: 28,
      ),
    );
  }
}
