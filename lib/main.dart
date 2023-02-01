import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hello there'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('floating action brh');
        },
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.plus_one), label: 'label'),
          NavigationDestination(icon: Icon(Icons.foggy), label: 'center'),
          NavigationDestination(
              icon: Icon(Icons.generating_tokens), label: 'test'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            page = index;
          });
        },
        selectedIndex: page,
      ),
    );
  }
}
