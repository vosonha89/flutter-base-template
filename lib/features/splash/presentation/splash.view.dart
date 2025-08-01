import 'package:flutter/material.dart';
import 'package:flutter_base_template/features/splash/domain/splash.logic.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  SplashWidgetState createState() => SplashWidgetState();
}

class SplashWidgetState extends SplashLogic {
  @override
  void initState() {
    super.initState();
    checkAuthAndNavigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100),
            SizedBox(height: 20),
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Loading...', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
