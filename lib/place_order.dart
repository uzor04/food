import 'package:flutter/material.dart';

class PlaceOrder extends StatelessWidget {
  const PlaceOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            "Enter the details of your Lundary\n  Orders and click to Proceed",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue, fontSize: 15),
          ),
          const SizedBox(height: 10),
          const Divider(height: 7, thickness: 7, color: Colors.pinkAccent),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Clothe type",
                hintText: "e.g T- shirt",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "e.g red or green",
                hintText: "green",
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                prefix: Text("₦"),
                border: OutlineInputBorder(),
                labelText: "Price",
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                labelText: "quantity",
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Proceed"),
          ),
        ],
      ),
    );
  }
}
