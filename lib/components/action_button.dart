import "package:flutter/material.dart";
import "package:kohoclone/constants/colors.dart";

class ActionButtonComponent extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function()? onPressed;
  const ActionButtonComponent(
      {super.key,
      required this.label,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            icon: Icon(
              icon,
              size: 24,
              color: backgroundColor,
            ),
            onPressed: onPressed,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
