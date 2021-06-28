import 'package:flutter/material.dart';
import 'package:inhouse_web/admin/home.dart';
import 'package:inhouse_web/cashier/home.dart';
import 'package:inhouse_web/f&b_controller/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .15),
            child: Image.asset(
              'assets/img/klogo.png',
              width: MediaQuery.of(context).size.width * .4,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
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
                          hintText: 'Username', border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password', border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminHomePage()));
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
