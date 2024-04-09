import 'package:flutter/material.dart';
import 'package:pentana_hotel/utlis/colors.dart';
import 'package:pentana_hotel/widgets/text_widget.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextWidget(
          text: 'PENTANA',
          fontSize: 58,
          color: primary,
          fontFamily: 'Bold',
          decoration: TextDecoration.underline,
        ),
        const SizedBox(
          width: 10,
        ),
        TextWidget(
          text: 'HOTEL',
          fontSize: 58,
          color: Colors.white,
          fontFamily: 'Bold',
        ),
      ],
    );
  }
}
