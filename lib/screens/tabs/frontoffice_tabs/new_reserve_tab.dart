import 'package:flutter/material.dart';
import 'package:pentana_hotel/utlis/colors.dart';
import 'package:pentana_hotel/widgets/text_widget.dart';

class NewReserveTab extends StatelessWidget {
  const NewReserveTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 400,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: primary),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextWidget(
                  text: 'Individual',
                  fontSize: 18,
                  color: primary,
                ),
                const SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.person,
                  color: primary,
                  size: 250,
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 400,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: primary),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextWidget(
                  text: 'Group',
                  fontSize: 18,
                  color: primary,
                ),
                const SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.group,
                  color: primary,
                  size: 250,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
