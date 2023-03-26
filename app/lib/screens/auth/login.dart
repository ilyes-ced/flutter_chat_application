import 'package:flutter/material.dart';
import '/components/primary_button.dart';
import '/constants.dart';
import '/screens/chat/home.dart';
import './register.dart';
import '../../components/chat_input.dart';
import '../../components/login_input.dart';

class Login extends StatelessWidget {
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
