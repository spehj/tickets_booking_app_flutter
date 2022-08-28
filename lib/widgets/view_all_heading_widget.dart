import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class ViewAllHeading extends StatelessWidget {
  final String heading;
  final String viewAll;
  const ViewAllHeading({Key? key, required this.heading, required this.viewAll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: Styles.headlineStyle2,
        ),
        InkWell(
            onTap: () {
              //print("Tapped");
            },
            child: Text(
              viewAll,
              style: Styles.textStyle
                  .copyWith(color: Styles.primaryColor),
            )),
      ],
    );
  }
}
