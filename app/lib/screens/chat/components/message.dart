import 'package:flutter/material.dart';
import '/models/Message_model.dart';
import '/constants.dart';

class Message extends StatefulWidget {
  final MessageModel message;
  Message({Key? key, required this.message}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        //color: MediaQuery.of(context).platformBrightness == Brightness.dark
        //    ? Colors.white
        //    : Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: default_padding * 0.75,
          vertical: default_padding / 2,
        ),
        decoration: BoxDecoration(
          color: primary_color.withOpacity(widget.message.isSender ? 1 : 0.1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          widget.message.msg,
          style: TextStyle(
            color: widget.message.isSender
                ? Colors.white
                : Theme.of(context).textTheme.bodyText1!.color,
          ),
        ),
      ),
    );
  }
}
