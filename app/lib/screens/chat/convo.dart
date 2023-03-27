import './components/convo_body.dart';
import '/constants.dart';
import 'package:flutter/material.dart';

class Convo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ConvoBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: primary_color,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user2.jpg"),
          ),
          SizedBox(width: default_padding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ahmed",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Active 13m ago",
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.local_phone),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: () {},
        ),
        SizedBox(width: default_padding / 2),
      ],
    );
  }
}
