import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:pentana_hotel/screens/tabs/frontoffice_tab.dart';
import 'package:pentana_hotel/screens/tabs/housekeeping_tab.dart';
import 'package:pentana_hotel/utlis/colors.dart';
import 'package:pentana_hotel/widgets/button_widget.dart';
import 'package:pentana_hotel/widgets/logo_widget.dart';
import 'package:pentana_hotel/widgets/text_widget.dart';
import 'package:pentana_hotel/widgets/textfield_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final username = TextEditingController();
  final password = TextEditingController();

  bool isfrontoffice = true;
  bool ishousekeeping = false;
  bool isfood = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage(
                'assets/images/unnamed.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logs.png',
                    height: 150,
                    width: 150,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ButtonWidget(
                    width: 200,
                    color: isfrontoffice ? Colors.amber : Colors.grey,
                    height: 50,
                    label: 'Front Office',
                    onPressed: () {
                      setState(() {
                        isfrontoffice = true;
                        isfood = false;
                        ishousekeeping = false;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ButtonWidget(
                    color: ishousekeeping ? Colors.amber : Colors.grey,
                    width: 200,
                    height: 50,
                    label: 'Housekeeping',
                    onPressed: () {
                      setState(() {
                        isfrontoffice = false;
                        isfood = false;
                        ishousekeeping = true;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ButtonWidget(
                    color: isfood ? Colors.amber : Colors.grey,
                    width: 200,
                    height: 50,
                    label: 'Food and Beverages',
                    onPressed: () {
                      setState(() {
                        isfrontoffice = false;
                        isfood = true;
                        ishousekeeping = false;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextWidget(
                    text:
                        DateFormat('yyyy/MM/dd HH:mm a').format(DateTime.now()),
                    fontSize: 24,
                    color: Colors.white,
                    fontFamily: 'Bold',
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 10,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.home,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              isfrontoffice
                  ? const FrontOfficeTab()
                  : ishousekeeping
                      ? const HouseKeepingTab()
                      : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
