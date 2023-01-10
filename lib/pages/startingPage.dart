import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Login.dart';

class MyWidget extends StatefulWidget {
  static var routName = "/startingPage";

  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sri Lanka Camping Guid"),
        ),
        body: Center(
            child: Column(
          children: const [
            Image(
              image: AssetImage('assets/c2.png'),
              height: 400,
              width: 300,
            ),
            // ElevatedButton(
            //             onPressed
            //             ) {},
            //             style: ElevatedButton.styleFrom(
            //               primary: Colors.teal,
            //               padding: const EdgeInsets.symmetric(
            //                   horizontal: 50, vertical: 18),
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(30)),
            //             ),
            //             child: Text("REQUEST",
            //                 style: TextStyle(
            //                     fontSize: 18,
            //                     letterSpacing: 2,
            // color: Colors.white)));
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text('Create Event'),
                onPressed: null,
                color: Colors.teal,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(70, 20, 70, 20),
                splashColor: Colors.teal,
              ),
            )
          ],
        )));
  }
}
