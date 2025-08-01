import 'package:flutter/material.dart';
import 'package:flutter_base_template/core/components/layout/layout.component.dart';
import 'package:flutter_base_template/features/login/domain/login.logic.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  LoginWidgetState createState() => LoginWidgetState();
}

class LoginWidgetState extends LoginLogic {
  @override
  Widget build(BuildContext context) {
    return LayoutComponent(
      title: 'Login View',
      children: [
        Column(
          children: [
            ElevatedButton(
              onPressed: goHome,
              child: Text('Go Home', key: Key('goHome')),
            ),
          ],
        ),
      ],
    );
  }
}
