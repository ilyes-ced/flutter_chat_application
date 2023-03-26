import 'dart:convert';

import 'package:flutter/material.dart';
import '/components/primary_button.dart';
import '/constants.dart';
import '/screens/chat/home.dart';
import './register.dart';
import '../../components/chat_input.dart';
import '../../components/login_input.dart';

import 'package:http/http.dart' as http;

//Future<http.Response> fetchAlbum() {
//  return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
//}

Future<Album> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
    debugPrint(futureAlbum.toString());
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
              FutureBuilder<Album>(
                future: futureAlbum,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data!.title);
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }

                  // By default, show a loading spinner.
                  return const CircularProgressIndicator();
                },
              ),
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
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatHome(),
                      ),
                    ),
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
