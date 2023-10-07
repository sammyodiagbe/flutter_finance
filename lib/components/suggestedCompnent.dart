import "package:flutter/material.dart";
import "package:kohoclone/constants/colors.dart";

class SuggestedComponent extends StatelessWidget {
  final String message;
  const SuggestedComponent({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 350,
      padding: EdgeInsets.all(18),
      margin: EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Text(
                'Learn more',
              ),
            ),
          ),
          Text(
            message,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
