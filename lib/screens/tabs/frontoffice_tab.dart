import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pentana_hotel/screens/tabs/frontoffice_tabs/new_reserve_tab.dart';
import 'package:pentana_hotel/utlis/colors.dart';
import 'package:pentana_hotel/widgets/button_widget.dart';
import 'package:pentana_hotel/widgets/text_widget.dart';

class FrontOfficeTab extends StatefulWidget {
  const FrontOfficeTab({super.key});

  @override
  State<FrontOfficeTab> createState() => _FrontOfficeTabState();
}

class _FrontOfficeTabState extends State<FrontOfficeTab> {
  bool one = true;

  bool two = false;
  bool three = false;
  bool four = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 75,
          color: Colors.orange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          minRadius: 25,
                          maxRadius: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              text: 'System User',
                              fontSize: 14,
                              fontFamily: 'Bold',
                            ),
                            TextWidget(
                              text: 'Pentana, Admin',
                              fontSize: 14,
                              fontFamily: 'Bold',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: SizedBox(
                  width: 10,
                ),
              ),
              ButtonWidget(
                width: 200,
                color: one ? Colors.amber : Colors.grey,
                height: 50,
                label: 'New Reserve',
                onPressed: () {
                  setState(() {
                    one = true;
                    two = false;
                    three = false;
                    four = false;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonWidget(
                color: two ? Colors.amber : Colors.grey,
                width: 200,
                height: 50,
                label: 'Walk in',
                onPressed: () {
                  setState(() {
                    one = false;
                    two = true;
                    three = false;
                    four = false;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonWidget(
                color: three ? Colors.amber : Colors.grey,
                width: 200,
                height: 50,
                label: 'Individual',
                onPressed: () {
                  setState(() {
                    one = false;
                    two = false;
                    three = true;
                    four = false;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonWidget(
                color: four ? Colors.amber : Colors.grey,
                width: 200,
                height: 50,
                label: 'Group',
                onPressed: () {
                  setState(() {
                    one = false;
                    two = false;
                    three = false;
                    four = true;
                  });
                },
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        one ? const NewReserveTab() : const SizedBox(),
      ],
    );
  }
}
