import 'package:flutter/material.dart';

class CreateDialogButton extends StatelessWidget {
  const CreateDialogButton({Key? key, required this.name, required this.dialog})
      : super(key: key);
  final String name;
  final Widget dialog;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (_) => Dialog(
                  child: dialog,
                ));
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          name,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
