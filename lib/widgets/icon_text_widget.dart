import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container with departure card
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(10),
          vertical: AppLayout.getHeight(10)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
           Icon(icon,
              color: Color(0xFFbfc2df)),
          SizedBox(
            width: AppLayout.getWidth(12),
          ),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
