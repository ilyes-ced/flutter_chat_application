import 'package:flutter/material.dart';
import '/models/Message_model.dart';
import '/constants.dart';
import 'text_message.dart';
import 'image_message.dart';

class Message extends StatefulWidget {
  final MessageModel message;
  Message({Key? key, required this.message}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: default_padding),
      child: Row(
        mainAxisAlignment: widget.message.isSender
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          if (!widget.message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/user2.jpg"),
            ),
            SizedBox(width: default_padding / 2),
          ],
          msg_type(widget.message),
          if (widget.message.isSender)
            MessageStatusDot(
              status: widget.message.status,
            )
        ],
      ),
    );
  }
}

Widget msg_type(message) {
  if (message.type == 'text') {
    return TextMessage(message: message);
  } else if (message.type == 'image') {
    return ImageMessage();
  } else {
    return TextMessage(message: message);
  }
}

class MessageStatusDot extends StatelessWidget {
  final String? status;

  const MessageStatusDot({Key? key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(status) {
      if (status == 'not_sent') {
        return error_color;
      } else if (status == 'not_viewed') {
        return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
      } else if (status == 'viewed') {
        return primary_color;
      } else {
        return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: default_padding / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(status!),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == 'not_sent' ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}









/**
 * 
 * 
 * 
 * Container(
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
 */