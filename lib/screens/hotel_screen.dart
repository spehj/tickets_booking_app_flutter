import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width*0.6,
      height:  350,
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/one.png"
                )
              )
            ),
          )
        ],

      ),
    );
  }
}
