import 'package:flutter/material.dart';

class AddCount extends StatefulWidget {
  const AddCount({Key? key}) : super(key: key);

  @override
  State<AddCount> createState() => _AddCountState();
}

class _AddCountState extends State<AddCount> {
  int counter = 10;
  addCounter() {
    setState(() {
      counter++;
    });
  }

  subcounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            onPressed: () {
              addCounter();
            },
            child: const Text("Add")),
        Text(
          "$counter",
          style: const TextStyle(fontSize: 16.0),
        ),
        ElevatedButton(
            onPressed: () {
              subcounter();
            },
            child: const Text("Sub"))
      ],
    );
  }
}
