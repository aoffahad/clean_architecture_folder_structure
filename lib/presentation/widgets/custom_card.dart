import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData icon;
  final Color backgroundColor;
  final Function()? onChangeCallback;
  const CustomCard(
      {super.key,
      required this.title,
      this.subtitle,
      required this.icon,
      required this.backgroundColor,
      this.onChangeCallback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChangeCallback?.call();
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: 32,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle != null ? Text(subtitle!) : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
