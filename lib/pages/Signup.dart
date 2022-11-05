import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Signup extends StatefulWidget {
  static const routName = "/signup";

  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TourPal"),
          backgroundColor: Colors.teal,
        ),
        body: Container(
            padding: const EdgeInsets.fromLTRB(80, 0, 80, 50),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/trip6.png'),
                    height: 400,
                    width: 300,
                  ),
                  const SizedBox(height: 0),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              prefixIcon: const Icon(Icons.email),
                              fillColor: Colors.white12,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.teal, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (input) {
                              if (input!.isEmpty) {
                                return 'Please Enter Email';
                              }
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              prefixIcon: const Icon(Icons.lock),
                              fillColor: Colors.white12,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.teal, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            validator: (input) {
                              if (input!.length < 6) {
                                return "Provide Minimum 6 Characters";
                              }
                            }),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            // ignore: deprecated_member_use
                            RaisedButton(
                              padding:
                                  const EdgeInsets.fromLTRB(92, 14, 92, 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Colors.teal,
                              onPressed: () {
                                // Validate returns true if the form is valid, or false otherwise.
                                if (_formKey.currentState!.validate()) {
                                  // If the form is valid, display a snackbar. In the real world,
                                  // you'd often call a server or save the information in a database.
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Data')),
                                  );
                                }
                              },
                              child: const Text(
                                'Signup',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  const Text(
                    '-OR-',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  SignInButton(
                    Buttons.Google,
                    text: "Sign up with Google",
                    padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: () {},
                  ),
                ])));
  }
}
