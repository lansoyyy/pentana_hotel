import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pentana_hotel/utlis/colors.dart';
import 'package:pentana_hotel/widgets/text_widget.dart';

class InventoryTab extends StatelessWidget {
  const InventoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
          width: double.infinity,
          height: 450,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                children: [
                  DataTable(columnSpacing: 50, columns: [
                    DataColumn(
                      label: TextWidget(
                        text: 'Items',
                        fontSize: 18,
                        fontFamily: 'Bold',
                        color: primary,
                      ),
                    ),
                    DataColumn(
                      label: TextWidget(
                        text: 'Par Stocks',
                        fontSize: 18,
                        fontFamily: 'Bold',
                        color: primary,
                      ),
                    ),
                    DataColumn(
                      label: TextWidget(
                        text: 'Safety Stocks',
                        fontSize: 18,
                        fontFamily: 'Bold',
                        color: primary,
                      ),
                    ),
                    DataColumn(
                      label: TextWidget(
                        text: 'Require Quantity',
                        fontSize: 18,
                        fontFamily: 'Bold',
                        color: primary,
                      ),
                    ),
                    DataColumn(
                      label: TextWidget(
                        text: 'On hand',
                        fontSize: 18,
                        fontFamily: 'Bold',
                        color: primary,
                      ),
                    ),
                    DataColumn(
                      label: TextWidget(
                        text: 'Order Quantity',
                        fontSize: 18,
                        fontFamily: 'Bold',
                        color: primary,
                      ),
                    ),
                    DataColumn(
                      label: TextWidget(
                        text: 'Unit Cose',
                        fontSize: 18,
                        fontFamily: 'Bold',
                        color: primary,
                      ),
                    ),
                    DataColumn(
                      label: TextWidget(
                        text: 'Total Cost',
                        fontSize: 18,
                        fontFamily: 'Bold',
                        color: primary,
                      ),
                    ),
                  ], rows: [
                    for (int i = 0; i < 50; i++)
                      DataRow(cells: [
                        DataCell(
                          TextWidget(
                            text: 'Sample',
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        DataCell(
                          TextWidget(
                            text: 'Sample',
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Bold',
                          ),
                        ),
                        DataCell(
                          TextWidget(
                            text: 'Sample',
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Bold',
                          ),
                        ),
                        DataCell(
                          TextWidget(
                            text: 'Sample',
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Bold',
                          ),
                        ),
                        DataCell(
                          TextWidget(
                            text: 'Sample',
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Bold',
                          ),
                        ),
                        DataCell(
                          TextWidget(
                            text: 'Sample',
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Bold',
                          ),
                        ),
                        DataCell(
                          TextWidget(
                            text: 'Sample',
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Bold',
                          ),
                        ),
                        DataCell(
                          TextWidget(
                            text: 'Sample',
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Bold',
                          ),
                        ),
                      ])
                  ])
                ],
              ),
            ),
          )),
    );
  }
}
