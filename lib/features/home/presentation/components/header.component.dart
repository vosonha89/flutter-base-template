import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  final String label;

  const HeaderComponent(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(label);
  }
}
