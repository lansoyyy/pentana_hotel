import 'package:flutter/material.dart';
import 'package:pentana_hotel/utlis/colors.dart';
import 'package:pentana_hotel/widgets/text_widget.dart';

class RoomStatusTab extends StatefulWidget {
  const RoomStatusTab({super.key});

  @override
  State<RoomStatusTab> createState() => _RoomStatusTabState();
}

class _RoomStatusTabState extends State<RoomStatusTab> {
  final sc = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            rowItem('First Floor', 10),
            rowItem('Second Floor', 20),
            rowItem('Third Floor', 30),
            rowItem('Fifth Floor', 40),
          ],
        ),
      ),
    );
  }

  Widget rowItem(String floor, int base) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextWidget(
            text: floor,
            fontSize: 24,
            fontFamily: 'Bold',
            decoration: TextDecoration.underline,
            color: Colors.white,
          ),
          const SizedBox(
            width: 50,
          ),
          SizedBox(
            width: 1000,
            child: Scrollbar(
              controller: sc,
              child: SingleChildScrollView(
                controller: sc,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 10; i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: primary,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextWidget(
                                text: '$base$i',
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              TextWidget(
                                text: 'JR',
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
