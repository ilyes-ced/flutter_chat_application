import 'dart:convert';

import 'package:flutter/material.dart';
import '/components/primary_button.dart';
import '/constants.dart';
import '/screens/chat/home.dart';
import './register.dart';
import '../../components/chat_input.dart';
import '../../components/login_input.dart';
import '/models/user_data.dart';

import 'package:http/http.dart' as http;

Future<http.Response> login(String email, String password) {
  final response = http.post(
    Uri.parse('localhost:8000/api/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'password': password,
    }),
  );
  return response;
  //if (response.statusCode == 201) {
  //  // If the server did return a 201 CREATED response,
  //  // then parse the JSON.
  //  return response;
  //} else {
  //  // If the server did not return a 201 CREATED response,
  //  // then throw an exception.
  //  throw Exception('Failed to create album.');
  //}
}

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future<http.Response>? result;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: default_padding),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? "assets/images/main.png"
                    : "assets/images/main.png",
                height: 146,
              ),
              SizedBox(height: default_padding * 1),
              Text(
                "Messenger lite",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: default_padding * 3),
              LoginInput(type: 'Email'),
              LoginInput(type: 'Password'),
              SizedBox(height: default_padding * 1),
              Row(children: [
                Expanded(
                  child: PrimaryButton(
                    color: Theme.of(context).colorScheme.secondary,
                    text: "register",
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Register(),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: default_padding * 2),
                Expanded(
                  child: PrimaryButton(
                      text: "login",
                      press: () => {
                            setState(() {
                              print('hello');
                              result = login('fzef', 'fezfez');
                              print(result);
                            }),
                          }),
                ),
              ]),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
