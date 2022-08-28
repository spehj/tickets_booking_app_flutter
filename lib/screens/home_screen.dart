import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../utils/app_info_list.dart';
import '../utils/app_layout.dart';
import '../widgets/view_all_heading_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding:
                 EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(10)),
            child: Column(
              children: [
                 Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning!",
                          style: Styles.headlineStyle3,
                        ),
                         Gap(AppLayout.getHeight(5)),
                        Text(
                          "Book Tickets",
                          style: Styles.headlineStyle1,
                        )
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img_1.png"),
                          )),
                    ),
                  ],
                ),
                 SizedBox(height: AppLayout.getHeight(25)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding:
                       EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(12)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headlineStyle4,
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                  height: AppLayout.getHeight(45),
                ),
                const ViewAllHeading(heading: "Upcoming Fligths", viewAll: "View All",)
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding:  EdgeInsets.only(left: AppLayout.getWidth(20)),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList()


            ),
          ),
           SizedBox(height: AppLayout.getHeight(16),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: const ViewAllHeading(heading: "Hotels", viewAll: "View All"),
          ),
           SizedBox(height: AppLayout.getHeight(16),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              padding:  EdgeInsets.only(left:AppLayout.getWidth(20)),
              child: Row(
                children: hotelList.map((singleHotel)=> HotelScreen(hotel: singleHotel)).toList()
              )),
           SizedBox(height: AppLayout.getHeight(16),),


        ],
      ),
    );
  }
}
