import 'package:flutter/material.dart';

abstract class HomeLogic<T extends StatefulWidget> extends State<T> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }
}
