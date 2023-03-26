import '/components/primary_button.dart';
import '/constants.dart';
import '/screens/chat/home.dart';
import '../../components/chat_input.dart';
import '../../components/login_input.dart';
import 'package:flutter/material.dart';

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
              Spacer(),
              ChatInput(),
              LoginInput(type: 'Email'),
              LoginInput(type: 'Password'),
              PrimaryButton(
                text: "Sign In",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatHome(),
                  ),
                ),
              ),
              SizedBox(height: default_padding * 1.5),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () {},
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
