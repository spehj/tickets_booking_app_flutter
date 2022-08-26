import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),

        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headlineStyle3
                            .copyWith(color: const Color(0xFFFFFFFF)),
                      ),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              print(
                                  "Width is: ${constraints.constrainWidth()}");
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => const SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white),
                                          ),
                                        )),
                              );
                            },
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              )),
                        ),
                      ])),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "LJU",
                        style: Styles.headlineStyle3
                            .copyWith(color: const Color(0xFFFFFFFF)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New-York",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        "8H 30M",
                        style:
                            Styles.headlineStyle4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Ljubljana",
                          textAlign: TextAlign.end,
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Styles.orangeColor,
              //padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),

                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            print("Width is: ${constraints.constrainWidth()}");
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 13).floor(),
                                  (index) => const SizedBox(
                                        width: 6,
                                        height: 2,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.yellow),
                                        ),
                                      ),
                            ));
                          },
                        ),
                      ),
                    ),

                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text("1 MAY", style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                        SizedBox(height: 5,),
                        Text("DATE", style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                      ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        Text("08:00 AM", style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                        SizedBox(height: 5,),
                        Text("Departure time", style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                      ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                        Text("23", style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                        SizedBox(height: 5,),
                        Text("Gate", style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                      ]),

                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
