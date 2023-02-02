import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_flutter/pages/eventpage.dart';

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
            automaticallyImplyLeading: true),
        body: Center(
            child: Column(
          children: [
            Image(
              image: AssetImage('assets/c2.png'),
              height: 500,
              width: 300,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              // child: RaisedButton(
              //   child: Text('Create Event'),
              //   onPressed: null,
              //   color: Colors.teal,
              //   textColor: Colors.white,
              //   padding: EdgeInsets.fromLTRB(70, 20, 70, 20),
              //   splashColor: Colors.teal,
              // ),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Event()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Create Event",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
            ),
          ],
        )));
  }
}
