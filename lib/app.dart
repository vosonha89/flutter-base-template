import 'package:flutter/material.dart';
import 'package:flutter_base_template/core/constants/routes.constant.dart';
import 'package:flutter_base_template/features/splash/presentation/splash.view.dart';
import 'package:flutter_base_template/route.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      initialRoute: RouteNames.all,
      routes: appRoutes,
      onGenerateRoute: (settings) {
        // for addition check if don't want to show splash as default
        return MaterialPageRoute(builder: (_) => const SplashView());
      },
    );
  }
}
