import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pentana_hotel/screens/tabs/frontoffice_tabs/group_tab.dart';
import 'package:pentana_hotel/screens/tabs/frontoffice_tabs/individual_tab.dart';
import 'package:pentana_hotel/screens/tabs/frontoffice_tabs/new_reserve_tab.dart';
import 'package:pentana_hotel/screens/tabs/frontoffice_tabs/walkin_tab.dart';
import 'package:pentana_hotel/screens/tabs/housekeeping_tabs/inventory_tab.dart';
import 'package:pentana_hotel/screens/tabs/housekeeping_tabs/roomstatus_tab.dart';
import 'package:pentana_hotel/utlis/colors.dart';
import 'package:pentana_hotel/widgets/button_widget.dart';
import 'package:pentana_hotel/widgets/text_widget.dart';

class HouseKeepingTab extends StatefulWidget {
  const HouseKeepingTab({super.key});

  @override
  State<HouseKeepingTab> createState() => _HouseKeepingTabState();
}

class _HouseKeepingTabState extends State<HouseKeepingTab> {
  bool one = true;

  bool two = false;
  bool three = false;
  bool four = false;
  bool five = false;
  bool six = false;
  bool seven = false;

  final sc = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 75,
          color: Colors.orange,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Scrollbar(
              controller: sc,
              child: SingleChildScrollView(
                controller: sc,
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ButtonWidget(
                      width: 200,
                      color: one ? Colors.amber : Colors.grey,
                      height: 50,
                      label: 'Room Status',
                      onPressed: () {
                        setState(() {
                          one = true;
                          two = false;
                          three = false;
                          four = false;
                          five = false;
                          six = false;
                          seven = false;
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
                      label: 'Inventory',
                      onPressed: () {
                        setState(() {
                          one = false;
                          two = true;
                          three = false;
                          four = false;
                          five = false;
                          six = false;
                          seven = false;
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
                      label: 'Laundry',
                      onPressed: () {
                        setState(() {
                          one = false;
                          two = false;
                          three = true;
                          four = false;
                          five = false;
                          six = false;
                          seven = false;
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
                      label: 'Maintenance',
                      onPressed: () {
                        setState(() {
                          one = false;
                          two = false;
                          three = false;
                          four = true;
                          five = false;
                          six = false;
                          seven = false;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ButtonWidget(
                      color: five ? Colors.amber : Colors.grey,
                      width: 200,
                      height: 50,
                      label: 'Pantry',
                      onPressed: () {
                        setState(() {
                          one = false;
                          two = false;
                          three = false;
                          four = false;
                          five = true;
                          six = false;
                          seven = false;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ButtonWidget(
                      color: six ? Colors.amber : Colors.grey,
                      width: 200,
                      height: 50,
                      label: 'Staff Sched',
                      onPressed: () {
                        setState(() {
                          one = false;
                          two = false;
                          three = false;
                          four = false;
                          five = false;
                          six = true;
                          seven = false;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ButtonWidget(
                      color: seven ? Colors.amber : Colors.grey,
                      width: 200,
                      height: 50,
                      label: 'Lost & Found',
                      onPressed: () {
                        setState(() {
                          one = false;
                          two = false;
                          three = false;
                          four = false;
                          five = false;
                          six = false;
                          seven = true;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        one
            ? const RoomStatusTab()
            : two
                ? const InventoryTab()
                : three
                    ? const IndividualTab()
                    : const GroupTab(),
      ],
    );
  }
}
