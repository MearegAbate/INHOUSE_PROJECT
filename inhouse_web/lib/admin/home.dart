import 'package:flutter/material.dart';
import 'package:inhouse_web/widgets/appbar.dart';
import 'package:inhouse_web/widgets/createDialogButton.dart';
import 'package:inhouse_web/widgets/registerDialog.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(appBar: AppBar()),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CreateDialogButton(
              name: 'Add F&B Controller',
              dialog: RegisterDialog(
                display: 'fb',
              )),
        ],
      ),
    );
  }
}

