import 'package:flutter/material.dart';
import 'package:inhouse_web/widgets/registerDialog.dart';
import 'package:inhouse_web/widgets/appbar.dart';
import 'package:inhouse_web/widgets/createDialogButton.dart';


class FBControllerHomePage extends StatelessWidget {
  const FBControllerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(appBar: AppBar()),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CreateDialogButton(
              name: 'Add Casher',
              dialog: RegisterDialog(
                display: 'casher',
              )),
          CreateDialogButton(
              name: 'Add Waiter',
              dialog: RegisterDialog(
                display: 'Waiter',
              )),
          CreateDialogButton(
              name: 'Add Manager',
              dialog: RegisterDialog(
                display: 'manager',
              )),
          CreateDialogButton(
              name: 'Add food or drink',
              dialog: RegisterDialog(
                display: 'fd',
              )),
        ],
      ),
    );
  }
}
