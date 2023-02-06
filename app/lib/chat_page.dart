import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List persons = [
    Chat("main.png", 'ahmed', 'wassup man long', '9 Nov'),
    Chat("main.png", 'ali', 'wassup man long', '9 Nov'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: ListView.builder(
            itemCount: persons.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    'assets/images/main.png',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.fill,
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {
                    debugPrint('hellothere');
                  },
                  color: Colors.white,
                  style: IconButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.red,
                    disabledBackgroundColor: Colors.green.withOpacity(0.12),
                    hoverColor: Colors.blue.withOpacity(0.08),
                    focusColor: Colors.yellow.withOpacity(0.12),
                    highlightColor: Colors.pink.withOpacity(0.12),
                  ),
                ),
                title: Text(
                  "${persons[index].name}",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  '${persons[index].lastMessage} -- ${persons[index].date}',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class Chat {
  String? pfp;
  String? name;
  String? lastMessage;
  String? date;

  Chat(this.pfp, this.name, this.lastMessage, this.date);
}
