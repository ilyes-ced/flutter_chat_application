import 'package:flutter/material.dart';
import '/constants.dart';

class Button extends StatefulWidget {
  final bool isFilled;
  final String text;
  final VoidCallback click_event;

  Button(
      {Key? key,
      this.isFilled = true,
      required this.text,
      required this.click_event})
      : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: Colors.white),
      ),
      elevation: widget.isFilled ? 2 : 0,
      color: widget.isFilled ? Colors.white : Colors.transparent,
      onPressed: widget.click_event,
      child: Text(
        widget.text,
        style: TextStyle(
          color: widget.isFilled ? content_light_theme : Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
