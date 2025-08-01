import 'package:flutter_base_template/core/constants/routes.constant.dart';
import 'package:flutter_base_template/features/home/presentation/home.view.dart';
import 'package:flutter_base_template/features/login/presentation/login.view.dart';

dynamic appRoutes = {
  RouteNames.login: (context) => const LoginView(),
  RouteNames.home: (context) => const HomeView(),
};
