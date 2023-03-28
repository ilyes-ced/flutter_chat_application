import 'package:flutter/material.dart';
import '/components/chat_input.dart';
import './message.dart';
import '/constants.dart';
import '/models/Message_model.dart';

class ConvoBody extends StatefulWidget {
  ConvoBody({Key? key}) : super(key: key);

  @override
  _ConvoBodyState createState() => _ConvoBodyState();
}

List messages_list = [
  MessageModel(
    id: 1,
    msg: 'ff',
    sender: 1,
    reciever: 1,
    type: 'ff',
    status: 'ff',
    isSender: false,
  ),
  MessageModel(
    id: 2,
    msg: '..................',
    sender: 1,
    reciever: 1,
    type: 'ff',
    status: 'ff',
    isSender: false,
  ),
  MessageModel(
    id: 3,
    msg: 'ppiui',
    sender: 1,
    reciever: 1,
    type: 'ff',
    status: 'ff',
    isSender: false,
  ),
  MessageModel(
    id: 4,
    msg: '778',
    sender: 1,
    reciever: 1,
    type: 'ff',
    status: 'ff',
    isSender: false,
  ),
  MessageModel(
    id: 1,
    msg: 'fffezfz',
    sender: 1,
    reciever: 1,
    type: 'ff',
    status: 'ff',
    isSender: false,
  ),
];

class _ConvoBodyState extends State<ConvoBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: default_padding),
            child: ListView.builder(
              itemCount: messages_list.length,
              itemBuilder: (context, index) =>
                  Message(message: messages_list[index]),
            ),
          ),
        ),
        ChatInput(),
      ],
    );
  }
}
