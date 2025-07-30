import 'package:flutter/material.dart';
import '../domain/home.logic.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
    this.color = const Color(0xFFFFE306),
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  State<HomeView> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends HomeLogic<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $counter'),
        ElevatedButton(
          onPressed: increment,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
