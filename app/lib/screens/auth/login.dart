import 'dart:convert';

import 'package:flutter/material.dart';
import '/components/primary_button.dart';
import '/constants.dart';
import '/screens/chat/home.dart';
import './register.dart';
import '../../components/chat_input.dart';
import '../../components/login_input.dart';
//import '/models/user_data.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

saveAuth(String body) async {
  //final data = await supabase.from('countries').select('name');
  //print("data");
  //print(data);
  //final prefs = await SharedPreferences.getInstance();
  //Map<String, dynamic> user_data = jsonDecode(body);
  //prefs.setString('user_data', jsonEncode(user_data['user']));
  //prefs.setString('token', user_data['token']);
}

/*
Future<http.Response> login(String email, String password) async {
  final response = await http
      .post(
    Uri.parse('http://10.0.2.2:8000/api/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'accept': 'application/json',
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'password': password,
    }),
  )
      .then((http.Response response) {
    if (response.statusCode == 201) {
      saveAuth(response.body);

      print(json.decode(response.body));
      return json.decode(response.body);
    } else {
      print((response.statusCode));
      print((response.body));

      throw Exception('Failed to load post');
    }
  });

  return response;
}
*/

login(String email, String password) async {
  final supabase = Supabase.instance.client;
  final AuthResponse res = await supabase.auth.signInWithPassword(
    email: 'dude@gmail.com',
    password: "password",
  );
  final Session? session = res.session;
  final User? user = res.user;
  print("data");
  print(session);
  print(user);
}

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    chechAuth();
  }

  //Loading counter value on start
  Future<void> chechAuth() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      if (prefs.getString('user_data') != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatHome(),
          ),
        );
      }
    });
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
              LoginInput(type: 'Email', controller: emailController),
              LoginInput(type: 'Password', controller: passwordController),
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
                    press: () {
                      login(emailController.text, passwordController.text);
                    },
                  ),
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
