import '/constants.dart';
import '/models/Contact.dart';
import '/screens/chat/convo.dart';
import './button.dart';
import './chat_node.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

List contacts = [
  Contact(
    id: 1,
    name: "ahmed",
    lastMessage: "lorem lorem lorem lorem loremlorem lorem lorem",
    image: "assets/images/user1.jpg",
    time: "16m ago",
    isActive: false,
  ),
  Contact(
    id: 1,
    name: "ahmed",
    lastMessage: "lorem lorem lorem lorem loremlorem lorem lorem",
    image: "assets/images/user2.jpg",
    time: "16m ago",
    isActive: false,
  ),
  Contact(
    id: 1,
    name: "ahmed",
    lastMessage: "lorem lorem lorem lorem loremlorem lorem lorem",
    image: "assets/images/user3.jpg",
    time: "16m ago",
    isActive: true,
  ),
];

class ChatList extends StatefulWidget {
  ChatList({Key? key}) : super(key: key);

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  void initState() {
    super.initState();
    chechAuth();
  }

  //Loading counter value on start
  Future<void> chechAuth() async {
    final prefs = await SharedPreferences.getInstance();
    String? kk = prefs.getString('token');
    print(kk);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(default_padding, default_padding / 2,
              default_padding, default_padding / 2),
          color: primary_color,
          child: Row(
            children: [
              Button(click_event: () {}, text: "Recent Message"),
              SizedBox(width: default_padding),
              Button(
                click_event: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) => ChatNode(
              chat: contacts[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Convo(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
