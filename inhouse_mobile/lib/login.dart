import 'package:flutter/material.dart';

import 'home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .15,
                left: MediaQuery.of(context).size.width * .1,
                right: MediaQuery.of(context).size.width * .1),
            child: Image.asset('assets/img/klogo.png'),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Phone number',
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Password', border: OutlineInputBorder()),
                      obscureText: true,
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QRViewSccan()));
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w300),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
