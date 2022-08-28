import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {

  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    print("Hotel price is ${hotel["price"]}");
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(15)),
      margin: EdgeInsets.only(right: AppLayout.getWidth(15), top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 16,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel["image"]}"))),
          ),
           SizedBox(
            height: AppLayout.getHeight(12),
          ),
          Text(
            hotel["place"],
            style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),
          ),
           SizedBox(height: AppLayout.getHeight(8),),
          Text(
            hotel["destination"],
            style: Styles.headlineStyle3.copyWith(color: Colors.white),
          ),
           SizedBox(height: AppLayout.getHeight(8),),
          Text(
            "\$${hotel["price"]}/night",
            style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
