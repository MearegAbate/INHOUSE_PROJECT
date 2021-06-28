import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final Color backgroundColor = Colors.red;
  // final Text title;
  final AppBar appBar;
  // final List<Widget> widgets;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key? key,required this.appBar})
      : super(key: key);
  // const BaseAppBar({Key? key, this.title, this.appBar, this.widgets})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/img/klogo.png',
          height: 50,
        ),
        actions: [
          TextButton(onPressed: () {}, child: Text('Full Name')),
          SizedBox(width: 20),
          TextButton(
              onPressed: () {},
              child: Text(
                'Log out',
                style: TextStyle(fontSize: 22),
              )),
          SizedBox(width: 15)
        ],
      );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}