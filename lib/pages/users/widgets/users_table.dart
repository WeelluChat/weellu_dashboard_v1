import 'package:dashboard_v1/constants/controllers.dart';
import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/helpers/local_navigator.dart';
import 'package:dashboard_v1/widgets/custom_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class UsersTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: secondaryColor.withOpacity(.1),
              blurRadius: 12),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: DataTable2(
        columnSpacing: 12,
        horizontalMargin: 12,
        minWidth: 600,
        columns: [
          DataColumn2(label: Text('S. nº')),
          DataColumn(label: Text('Profile')),
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('User')),
          DataColumn(label: Text('E-mail')),
          DataColumn(label: Text('Country')),
          DataColumn(label: Text('Last Seen')),
          DataColumn(label: Text('Actions')),
        ],
        rows: List<DataRow>.generate(
          7,
          (index) => DataRow(
            cells: [
              DataCell(CustomText(text: '$index')),
              DataCell(CircleAvatar()),
              DataCell(CustomText(text: 'Henrique')),
              DataCell(CustomText(text: 'test@gmail.com')),
              DataCell(CustomText(text: 'test@gmail.com')),
              DataCell(CustomText(text: 'Brazil')),
              DataCell(CustomText(text: '1-abr-2022')),
              DataCell(Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: lightGrey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconButton(
                          onPressed: () {
                            mainNavigationController
                                .navigateTo('/user-profile');
                          },
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: lightGrey,
                          ),
                          tooltip: 'View',
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: (index >= 0) && (index < 3)
                                ? Colors.green
                                : Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            (index >= 0) && (index < 3)
                                ? Icons.lock_open
                                : Icons.lock,
                          ),
                          color: (index >= 0) && (index < 3)
                              ? Colors.green
                              : Colors.red,
                          tooltip:
                              (index >= 0) && (index < 3) ? 'Block' : 'Unlock',
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete_forever),
                          color: Colors.red,
                          tooltip: 'Delete',
                        ),
                      ),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
