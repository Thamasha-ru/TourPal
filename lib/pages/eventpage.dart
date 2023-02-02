import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  static const routName = "/eventPage";

  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  get isPasswordTextField => false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Create Event"),
          backgroundColor: Colors.teal,
        ),
        body: Container(
            padding: const EdgeInsets.only(left: 15, top: 30, right: 15),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: ListView(children: [
                // Center(
                //   child: Stack(
                //     children: [
                //       Container(
                //           width: 170,
                //           height: 170,
                //           decoration: BoxDecoration(
                //               border: Border.all(width: 4, color: Colors.white),
                //               boxShadow: [
                //                 BoxShadow(
                //                     spreadRadius: 2,
                //                     blurRadius: 10,
                //                     color: Colors.black.withOpacity(0.1))
                //               ],
                //               shape: BoxShape.circle,
                //               image: DecorationImage(
                //                   fit: BoxFit.cover,
                //                   image: AssetImage('assets/man.png')))),
                //       Positioned(
                //           bottom: 0,
                //           right: 0,
                //           child: Container(
                //               height: 45,
                //               width: 45,
                //               decoration: BoxDecoration(
                //                   shape: BoxShape.circle,
                //                   border:
                //                       Border.all(width: 4, color: Colors.white),
                //                   color: Colors.greenAccent),
                //               child: InkWell(
                //                   child: Icon(
                //                     Icons.edit,
                //                     color: Colors.white,
                //                   ),
                //                   onTap: () {
                //                     print("Edit icon clicked");
                //                     showModalBottomSheet(
                //                         context: context,
                //                         builder: (context) => bottomSheet());
                //                   })))
                //     ],
                //   ),
                // ),
                const SizedBox(height: 30),
                buildTextField(
                  "Event Name",
                  "Event Name",
                  false,
                ),
                buildTextField("Email", "thamasha@gmail.com", false),
                buildTextField("Starting Date", "MM/DD/YYYY", false),
                buildTextField("Starting Time", "__:__", false),
                buildTextField("Ending Date", "MM/DD/YYYY", false),
                buildTextField("Ending Time", "__:__", false),
                buildTextField("Description", "Description", false),

                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text("CANCEL",
                          style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 2,
                              color: Colors.black)),
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 18),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.teal,
                                title: Text(
                                  'Alert',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                content: Text(
                                  'Event created successfully!',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text(
                                      'Done',
                                      style: TextStyle(
                                          fontSize: 18,
                                          // fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        // child: Text('Press me'),

                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 18),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        child: const Text("REQUEST",
                            style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 2,
                                color: Colors.white)))
                  ],
                )
              ]),
            )));
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordtextField) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: TextField(
          // obscureText: isPasswordtextField ? isObscurePasswordTextField : false,
          decoration: InputDecoration(
              suffixIcon: isPasswordTextField
                  ? IconButton(
                      icon:
                          const Icon(Icons.remove_red_eye, color: Colors.grey),
                      onPressed: () {
                        setState(() {
                          // isObscurePasswordTextField =
                          //     !isObscurePasswordTextField;
                        });
                      })
                  : null,
              contentPadding: const EdgeInsets.only(bottom: 5),
              labelText: labelText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              )),
        ));
  }

  bottomSheet() {}
}
