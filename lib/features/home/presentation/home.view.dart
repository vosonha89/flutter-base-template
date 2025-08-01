import 'package:flutter/material.dart';
import 'package:flutter_base_template/core/components/layout/layout.component.dart';
import 'package:flutter_base_template/features/home/domain/home.logic.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeWidgetState createState() => HomeWidgetState();
}

class HomeWidgetState extends HomeLogic {
  @override
  Widget build(BuildContext context) {
    return LayoutComponent(
      children: [
        Row(
          children: [
            Text('$counter', key: Key('counter')),
            ElevatedButton(
              onPressed: increment,
              child: Text('Increment', key: Key('increment')),
            ),
            ElevatedButton(
              onPressed: goLogin,
              child: Text('Go Login', key: Key('goLogin')),
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(child: Text(dataJSON, key: Key('data'))),
        ),
      ],
    );
  }
}
