import 'package:flutter/material.dart';
import 'package:pentana_hotel/screens/tabs/frontoffice_tabs/group_tab.dart';
import 'package:pentana_hotel/screens/tabs/frontoffice_tabs/individual_tab.dart';
import 'package:pentana_hotel/utlis/colors.dart';
import 'package:pentana_hotel/widgets/text_widget.dart';

class WalkinTab extends StatefulWidget {
  const WalkinTab({super.key});

  @override
  State<WalkinTab> createState() => _WalkinTabState();
}

class _WalkinTabState extends State<WalkinTab> {
  String selected = '';
  @override
  Widget build(BuildContext context) {
    return selected == ''
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 'Individual';
                  });
                },
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
                onTap: () {
                  setState(() {
                    selected = 'Group';
                  });
                },
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
          )
        : selected == 'Individual'
            ? Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          selected = '';
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const IndividualTab(),
                ],
              )
            : Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          selected = '';
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const GroupTab(),
                ],
              );
  }
}
