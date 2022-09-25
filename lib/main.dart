import 'package:flutter/material.dart';
import 'HelloWorld.dart';
import "ColumnWidget.dart";
import "RowWidget.dart";
import "ui/ProdukForm.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Aplikasi Flutter Pertamaku", home: ProdukForm());
  }
}
