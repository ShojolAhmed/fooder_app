import 'package:flutter/material.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.icon,
  });

  final Function() onPressed;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(right: kHorizontalPadding),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: Colors.white,
          foregroundColor: kPrimaryColor,
        ),
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(
          label,
          style: TextStyle(color: kPrimaryTextColor.withOpacity(.8)),
        ),
      ),
    );
  }
}
