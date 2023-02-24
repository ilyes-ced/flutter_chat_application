import 'package:flutter/material.dart';

class Conversation extends StatefulWidget {
  final String data;
  Conversation({Key? key, required this.data}) : super(key: key);

  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  List messages = [
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fzef12331111', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long fzef123222', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fz3333333333', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long f44444444', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fz555555555', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long6666666', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long 237777777773', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fzef12331111', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long fzef123222', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fz3333333333', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long f44444444', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fz555555555', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long6666666', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long 237777777773', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fzef12331111', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long fzef123222', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fz3333333333', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long f44444444', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fz555555555', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long6666666', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long 237777777773', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fzef12331111', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long fzef123222', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fz3333333333', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long f44444444', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fz555555555', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long6666666', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long 237777777773', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fzef12331111', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long fzef123222', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fz3333333333', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long f44444444', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fz555555555', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long6666666', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long 237777777773', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fzef12331111', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long fzef123222', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fz3333333333', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long f44444444', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long fz555555555', '16:40'),
    Message("cat_20.jpg", 'ilyes', 10, 'wassup man long6666666', '16:40'),
    Message("cat_16.jpg", 'ahmed', 10, 'wassup man long 237777777773', '16:40'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            debugPrint('hellothere');
          },
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
          widget.data,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 20.0,
                  bottom: 20.0,
                ),
                height: 90,
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 30,
                    ),
                    filled: true,
                    focusColor: Colors.red,
                    iconColor: Colors.blue,
                    fillColor: const Color.fromARGB(255, 67, 67, 67),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    hintText: 'Enter a search term',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Material(
                      color: Colors.black,
                      child: message(messages[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
            bottom: 10.0,
          ),
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.black,
            //borderRadius: const BorderRadius.only(
            //  topLeft: Radius.circular(20),
            //  topRight: Radius.circular(20),
            //),
          ),
          child: Row(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.mic_rounded,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.all(12),
                    filled: true,
                    focusColor: Colors.red,
                    iconColor: Colors.blue,
                    fillColor: const Color.fromARGB(255, 67, 67, 67),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    hintText: 'message',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_up_sharp,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}

class Message {
  String pfp;
  String username;
  int usernameId;
  String message;
  String time;

  Message(this.pfp, this.username, this.usernameId, this.message, this.time);
}

Widget exp() {
  return Expanded(
    flex: 1,
    child: Container(
      width: 100.0,
      height: 100.0,
      color: Colors.red,
    ),
  );
}

Widget tile(msg) {
  return ListTile(
    tileColor: Colors.grey,
    leading: FlutterLogo(size: 56.0),
    title: Text(
      'Two-line ListTile',
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    ),
    trailing: Text(
      'Two-line ListTile',
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget test() {
  return Text(
    "Chats",
    style: TextStyle(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.w600,
    ),
  );
}

/***
 * 
 * 
 * ListTile(
    contentPadding: const EdgeInsets.symmetric(
      vertical: 0.0,
      horizontal: 16.0,
    ),
    dense: true,
    onTap: () {},
    tileColor: Colors.black,
    selectedColor: Colors.green,
    leading: Row(
      children: [
        if (msg.username == 'ilyes') exp(),
        Container(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
            bottom: 10.0,
          ),
          decoration: BoxDecoration(
            color: msg.username == 'ilyes'
                ? Colors.blue
                : Color.fromARGB(255, 68, 68, 68),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Text(
            '${msg.message}',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
    title: Text('These ListTiles are expanded '),
  )
 * 
 * 
 * 
 * 
 */

Widget message(message) {
  return Container(
    padding: EdgeInsets.only(
      top: 4,
      bottom: 4,
      left: message.username == 'ilyes' ? 0 : 24,
      right: message.username == 'ilyes' ? 24 : 0,
    ),
    alignment: message.username == 'ilyes'
        ? Alignment.centerRight
        : Alignment.centerLeft,
    child: Container(
      margin: message.username == 'ilyes'
          ? const EdgeInsets.only(left: 30)
          : const EdgeInsets.only(right: 30),
      padding: const EdgeInsets.only(top: 17, bottom: 17, left: 20, right: 20),
      decoration: BoxDecoration(
          borderRadius: message.username == 'ilyes'
              ? const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )
              : const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
          color: message.username == 'ilyes' ? Colors.red : Colors.grey[700]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('messsssssssssssssssssdazd azd qefz eqfzeq ssage',
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 16, color: Colors.white))
        ],
      ),
    ),
  );
}
