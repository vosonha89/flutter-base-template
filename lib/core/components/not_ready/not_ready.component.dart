import 'package:flutter/material.dart';
import 'not_ready.logic.dart';

class NotReadyComponent extends StatefulWidget {
  const NotReadyComponent({super.key});

  @override
  NotReadyWidgetState createState() => NotReadyWidgetState();
}

class NotReadyWidgetState extends NotReadyLogic {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text('Not Ready')
          ],
        ),
      ),
    );
  }
}
