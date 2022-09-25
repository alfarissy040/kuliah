import 'package:flutter/material.dart';

// const dumpData = [
//   "kolom 1",
//   "kolom 2",
//   "kolom 3",
//   "kolom 4",
// ]

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widget Column")),
      body: Column(
        children: [
          Text("Kolom 1"),
          Text("Kolom 2"),
          Text("Kolom 3"),
          Text("Kolom 4"),
        ],
      ),
    );
  }
}
