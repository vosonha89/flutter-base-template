import 'package:flutter/material.dart';
import 'package:flutter_base_template/core/components/layout/layout.component.dart';
import 'package:flutter_base_template/features/example/domain/example.logic.dart';

class ExampleView extends StatefulWidget {
  const ExampleView({super.key});

  @override
  ExampleWidgetState createState() => ExampleWidgetState();
}

class ExampleWidgetState extends ExampleLogic {
  @override
  Widget build(BuildContext context) {
    return LayoutComponent(
      title: 'Example View',
      children: [
        Column(
          children: [
             // children element here
          ],
        ),
      ],
    );
  }
}
