import 'package:flutter/material.dart';
import 'package:food/lundary_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // leading: const Icon(Icons.menu),
          title: const Text("iLundary"),
          actions: const [Icon(Icons.add)],
        ),
        drawer: const Drawer(),
        body: Center(
          child: Column(
            children: const [
              Text(
                "Counter",
                style: TextStyle(fontSize: 39),
              ),
              AddCount(),
            ],
          ),
        ),
      ),
    );
  }
}
