import 'package:flutter/material.dart';

// const dumpData = [
//   "kolom 1",
//   "kolom 2",
//   "kolom 3",
//   "kolom 4",
// ]

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widget Row")),
      body: Column(
        children: [
          Text("Row 1"),
          Text("Row 2"),
          Text("Row 3"),
          Text("Row 4"),
        ],
      ),
    );
  }
}
