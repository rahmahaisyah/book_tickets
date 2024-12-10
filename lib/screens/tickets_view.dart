import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketsView extends StatelessWidget {
  const TicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //show the blue part of the card
            Container(
              decoration: BoxDecoration(
                color: Color(0xff526799),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'NYC',
                        style:
                            Style.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ThickContainer(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                // ignore: avoid_print
                                print(
                                    'The widht is ${constraints.constrainWidth()} ');
                                return Flex(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  direction: Axis.horizontal,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                        color: Colors.white,
                                      )),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.6,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),
                      ThickContainer(),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        'LDN',
                        style:
                            Style.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'New-York',
                          style: Style.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        '8H 30M',
                        style:
                            Style.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'London',
                          textAlign: TextAlign.end,
                          style: Style.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //show orange part of the card
            Container(
              color: Style.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            direction: Axis.horizontal,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //bottom part of orange part
            Container(
              decoration: BoxDecoration(
                color: Style.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 10, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1 MAY',
                            style: Style.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            'Date',
                            style: Style.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '08:00 AM',
                            style: Style.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            'Departure Time',
                            style: Style.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '23',
                            style: Style.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            'Number',
                            style: Style.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
