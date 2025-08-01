import 'package:flutter/material.dart';
import 'package:flutter_base_template/core/base/presentation.logic.base.dart';
import 'package:flutter_base_template/core/constants/routes.constant.dart';
import 'package:flutter_base_template/features/login/presentation/login.view.dart';

class LoginLogic extends BaseStatefulLogic<LoginView> {
  void goHome() {
    Navigator.pushNamed(context, RouteNames.home);
  }
}
