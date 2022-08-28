import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../utils/app_styles.dart';
import '../widgets/icon_text_widget.dart';
import '../widgets/view_all_heading_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(40)),
        children: [
          SizedBox(
            height: AppLayout.getHeight(40),
          ),
          Text(
            "What are\nyou looking for?",
            style: Styles.headlineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          SizedBox(
            height: AppLayout.getHeight(40),
          ),
          FittedBox(
            child: Container(
                padding: EdgeInsets.all(AppLayout.getWidth(3.5)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(40),
                  ),
                  color: const Color(0xfff4f6fd),
                ),
                child: Row(
                  children: [
                    // Airline tickets
                    Container(
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(8)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(AppLayout.getHeight(40)),
                        ),
                        color: Colors.white,
                      ),
                      child: Center(child: Text("Airline tickets")),
                    ),
                    // Hotels
                    Container(
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(8)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.getHeight(40)),
                        ),
                        color: Colors.transparent,
                      ),
                      child: Center(child: Text("Hotels")),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: AppLayout.getHeight(30),
          ),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          Container(
              // Container with departure card
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(10),
                  vertical: AppLayout.getHeight(16)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                color: Color(0xd91130ce),
              ),
              child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          SizedBox(
            height: AppLayout.getHeight(35),
          ),
          const ViewAllHeading(
            heading: 'Upcoming Flights',
            viewAll: "View All",
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: AppLayout.getWidth(5)),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(16), vertical: AppLayout.getHeight(16)),
                    height: 410,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getWidth(20)),
                    ),
                    child: Column(
                      
                      children: [
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getWidth(15)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/sit.jpg")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: AppLayout.getWidth(5),
                            bottom: AppLayout.getHeight(5)),
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.circular(AppLayout.getWidth(20))),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: AppLayout.getWidth(5),
                            top: AppLayout.getHeight(5)),
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.circular(AppLayout.getWidth(20))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
