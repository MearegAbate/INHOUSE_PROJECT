import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RegisterDialog extends StatefulWidget {
  RegisterDialog({Key? key, required this.display}) : super(key: key);
  final String display;
  @override
  _RegisterDialogState createState() => _RegisterDialogState();
}

class _RegisterDialogState extends State<RegisterDialog> {
  @override
  Widget build(BuildContext context) {
    final String? role = widget.display == 'fd' ? null : widget.display;
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.close,
                      size: 20,
                    ))),
            widget.display == 'fd'
                ? Column(
                    children: [
                      Row(
                        children: [
                          Text('Food'),
                          Radio(
                              value: 'Food',
                              groupValue: 'fd',
                              onChanged: (e) {}),
                          Text('Food'),
                          Radio(
                              value: 'Drink',
                              groupValue: 'fd',
                              onChanged: (e) {}),
                        ],
                      ),
                      buildTextFormField('spesfication'),
                      buildTextFormField('description'),
                      buildTextFormField('price'),
                    ],
                  )
                : Column(
                    children: [
                      buildTextFormField('Full Name'),
                      buildTextFormField('E-mail'),
                    ],
                  ),
            ElevatedButton(onPressed: () {}, child: Text('Submit'))
          ],
        ),
      ),
    ));
  }

  buildTextFormField(label) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration:
            InputDecoration(border: OutlineInputBorder(), labelText: label),
      ),
    );
  }
}
