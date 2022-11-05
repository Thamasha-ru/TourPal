// ignore_for_file: deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter/pages/Login.dart';
import 'package:new_flutter/pages/Signup.dart';

class Home extends StatelessWidget {
  static const routName = "/home";
  final Function(bool)? toggleDarkMode;
  final bool? isDark;
  const Home({Key? key, required this.toggleDarkMode, this.isDark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TourPal"),
          backgroundColor: Colors.teal,
          actions: [
            CupertinoSwitch(value: isDark ?? false, onChanged: toggleDarkMode)

          ],
        ),
        body: Center(
          child: Column(children: [
            const Image(
              image: AssetImage('assets/home.png'),
              height: 400,
              width: 300,
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: RichText(
                      text: const TextSpan(
                          text: 'Welcome to ',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Tourpal',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal))
                      ])),
                ),
              ),
            ),
            //const SizedBox(height: 5),
            const Text(
              'ENJOY YOUR DREAMED TRIP WITH TOURPAL GUIDANCE',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                RaisedButton(
                    padding: const EdgeInsets.fromLTRB(90, 14, 90, 14),
                    onPressed: () {
                      Navigator.of(context).pushNamed(Login.routName);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.teal,
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                RaisedButton(
                    padding: const EdgeInsets.fromLTRB(83, 14, 83, 14),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.teal,
                    child: const Center(
                      child: Text(
                        'Signup',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ],
            ),
          ]),
       ]) ));
  }
}
