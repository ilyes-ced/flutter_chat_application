import 'package:flutter/material.dart';

import '/constants.dart';

class LoginInput extends StatefulWidget {
  final String? type;
  LoginInput({Key? key, required this.type}) : super(key: key);

  @override
  _LoginInputState createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    var input_icon;
    if (widget.type == "Email") {
      input_icon = Icons.email;
    } else if (widget.type == "Password") {
      input_icon = Icons.password;
    } else if (widget.type == "Username") {
      input_icon = Icons.person;
    }
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: default_padding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: default_padding * 0.75,
                ),
                decoration: BoxDecoration(
                  color: primary_color.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    SizedBox(width: default_padding / 4),
                    Expanded(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: "${widget.type}",
                          border: InputBorder.none,
                          prefixIcon: Icon(input_icon),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
