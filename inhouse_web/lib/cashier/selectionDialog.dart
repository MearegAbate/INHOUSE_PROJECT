import 'package:flutter/material.dart';

class MenuDialog extends StatefulWidget {
  MenuDialog({Key? key}) : super(key: key);

  @override
  _MenuDialogState createState() => _MenuDialogState();
}

class _MenuDialogState extends State<MenuDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [1, 2, 3, 4]
                .map((e) => Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('clasification'),
                            SingleChildScrollView(
                              child: Column(
                                  children: [1, 23, 3, 4, 5, 6]
                                      .map((e) => Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('description'),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon:
                                                          Icon(Icons.minimize)),
                                                  Text('0'),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons.add)),
                                                ],
                                              )
                                            ],
                                          ))
                                      .toList()),
                            )
                          ],
                        ),
                        Divider()
                      ],
                    ))
                .toList()),
      ),
    );
  }
}
