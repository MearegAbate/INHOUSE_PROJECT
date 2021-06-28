import 'package:flutter/material.dart';
import 'package:inhouse_web/cashier/selectionDialog.dart';
import 'package:inhouse_web/widgets/appbar.dart';
import 'package:inhouse_web/widgets/createDialogButton.dart';

class CashierHomePage extends StatelessWidget {
  const CashierHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final Map name = {'shiro': 2, 'tea': 3, 'water': 1};
    TextEditingController wait_staf = new TextEditingController();
    TextEditingController invited_by = new TextEditingController();
    TextEditingController order_by = new TextEditingController();
    return Scaffold(
      appBar: BaseAppBar(appBar: AppBar()),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Container(
              width: width * .8,
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: wait_staf,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Name of wait staf'),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: invited_by,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Invited by'),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: width * 0.05),
                        CreateDialogButton(name: 'Food',dialog:MenuDialog()),
                        SizedBox(width: width * 0.05),
                        CreateDialogButton(name:'Drink',dialog:MenuDialog()),
                        SizedBox(width: width * 0.05),
                      ],
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: order_by,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Order by'),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Container(
              width: width * .2,
              height: height * .8,
              child: Column(
                children: [
                  Image.asset(
                    'assets/img/klogo.png',
                    height: 50,
                  ),
                  Text(DateTime.now().toString()),
                  SizedBox(height: 15),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.black,
                  ),
                  DataTable(
                      sortAscending: true,
                      columns: [
                        DataColumn(label: Text('')),
                        DataColumn(label: Text('')),
                      ],
                      rows: name.entries
                          .map(
                            (e) => DataRow(
                              cells: [
                                DataCell(Text(e.key.toString())),
                                DataCell(Text(e.value.toString()))
                              ],
                            ),
                          )
                          .toList()),
                  Text('Wait staf ${wait_staf.text}'),
                  Text('Invited by ${invited_by.text}'),
                  Text('Orderd by ${order_by.text}'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

 
}

