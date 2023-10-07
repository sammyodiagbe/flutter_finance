import "package:flutter/material.dart";

class CustomTileComponent extends StatelessWidget {
  final String title;
  final String subTitle;
  final String trailingMessage;
  final IconData icon;
  const CustomTileComponent(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.trailingMessage,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(subTitle)
                ],
              )
            ],
          ),
          Row(
            children: [
              Text(trailingMessage,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  )),
              SizedBox(
                width: 3,
              ),
              Icon(
                Icons.chevron_right,
                size: 24,
              )
            ],
          )
        ],
      ),
    );
  }
}
