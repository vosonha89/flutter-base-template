import 'package:flutter/material.dart';
import 'package:flutter_base_template/core/base/presentation.logic.base.dart';
import 'package:flutter_base_template/core/constants/routes.constant.dart';
import 'package:flutter_base_template/core/services/local/auth.local.service.dart';
import 'package:flutter_base_template/features/splash/presentation/splash.view.dart';

class SplashLogic extends BaseStatefulLogic<SplashView> {
  Future<void> checkAuthAndNavigate() async {
    await Future.delayed(Duration(seconds: 3)); // Simulate network delay
    final isAuthenticated = await AuthService.instance.isLoggedInAsync();
    if (mounted) {
      Navigator.pushReplacementNamed(
        context,
        isAuthenticated ? RouteNames.home : RouteNames.login,
      );
    }
  }
}
