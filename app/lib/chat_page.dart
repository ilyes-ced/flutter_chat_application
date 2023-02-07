import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List persons = [
    Chat("cat_16.jpg", 'ahmed', 'wassup man long', '9 Nov'),
    Chat("cat_20.jpg", 'ali', 'wassup man long', '9 Nov'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
          child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 20.0,
              bottom: 20.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  filled: true,
                  focusColor: Colors.red,
                  iconColor: Colors.blue,
                  fillColor: Color.fromARGB(255, 67, 67, 67),
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.transparent),
                    borderRadius: new BorderRadius.circular(25.7),
                  ),
                  hintText: 'Enter a search term',
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: persons.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        'assets/images/${persons[index].pfp}',
                        width: 50.0,
                        height: 50.0,
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
        ],
      )),
    );
  }
}
/*
child: Center(
        child: ListView.builder(
            itemCount: persons.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    'assets/images/${persons[index].pfp}',
                    width: 50.0,
                    height: 50.0,
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
      ), */

class Chat {
  String? pfp;
  String? name;
  String? lastMessage;
  String? date;

  Chat(this.pfp, this.name, this.lastMessage, this.date);
}
