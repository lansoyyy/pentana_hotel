import 'package:flutter/material.dart';
import 'package:pentana_hotel/utlis/colors.dart';
import 'package:pentana_hotel/widgets/button_widget.dart';
import 'package:pentana_hotel/widgets/text_widget.dart';
import 'package:pentana_hotel/widgets/textfield_widget.dart';

class IndividualTab extends StatefulWidget {
  const IndividualTab({super.key});

  @override
  State<IndividualTab> createState() => _IndividualTabState();
}

class _IndividualTabState extends State<IndividualTab> {
  final fname = TextEditingController();
  final lname = TextEditingController();
  final address = TextEditingController();
  final contactnumber = TextEditingController();
  final idno = TextEditingController();
  final email = TextEditingController();
  final noofguest = TextEditingController();
  final roomnumber = TextEditingController();
  final roomrate = TextEditingController();
  final checkindate = TextEditingController();
  final checkoutdate = TextEditingController();
  final noofdays = TextEditingController();
  final balance = TextEditingController();
  final dp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 500,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: primary),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  TextWidget(
                    text: 'Guest Information',
                    fontSize: 24,
                    fontFamily: 'Bold',
                  ),
                  TextFieldWidget(
                    width: 350,
                    controller: fname,
                    label: 'Firstname',
                  ),
                  TextFieldWidget(
                    width: 350,
                    controller: lname,
                    label: 'Lastname',
                  ),
                  TextFieldWidget(
                    width: 350,
                    controller: address,
                    label: 'Address',
                  ),
                  TextFieldWidget(
                    width: 350,
                    controller: contactnumber,
                    label: 'Contact number',
                  ),
                  TextFieldWidget(
                    width: 350,
                    controller: idno,
                    label: 'ID number',
                  ),
                  TextFieldWidget(
                    width: 350,
                    controller: email,
                    label: 'Email address',
                  ),
                  TextFieldWidget(
                    width: 350,
                    controller: noofguest,
                    label: 'Number of guest',
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 500,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: primary),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  TextWidget(
                    text: 'Additional Information',
                    fontSize: 24,
                    fontFamily: 'Bold',
                  ),
                  TextFieldWidget(
                    width: 350,
                    controller: roomnumber,
                    label: 'Room number',
                  ),
                  TextFieldWidget(
                    width: 350,
                    controller: roomrate,
                    label: 'Room rate',
                  ),
                  TextFieldWidget(
                    width: 350,
                    controller: checkindate,
                    label: 'Checkin date',
                  ),
                  TextFieldWidget(
                    width: 350,
                    controller: checkoutdate,
                    label: 'Checkout date',
                  ),
                  TextFieldWidget(
                    width: 350,
                    controller: noofdays,
                    label: 'Number of days',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextWidget(
                    text: 'Payment Information',
                    fontSize: 24,
                    fontFamily: 'Bold',
                  ),
                  TextFieldWidget(
                    isEnabled: false,
                    width: 350,
                    controller: balance,
                    label: 'Total payment',
                  ),
                  TextFieldWidget(
                    isEnabled: false,
                    width: 350,
                    controller: dp,
                    label: 'Down payment',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: ListTile(
                      leading: TextWidget(
                        text: 'Mode of payment',
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                      trailing: TextWidget(
                        text: 'CASH',
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: 'Bold',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                    width: 350,
                    color: Colors.amber,
                    height: 50,
                    label: 'Check in',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
