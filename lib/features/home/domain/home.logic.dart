import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_base_template/core/base/presentation.logic.base.dart';
import 'package:flutter_base_template/core/constants/routes.constant.dart';
import 'package:flutter_base_template/features/home/presentation/home.view.dart';
import 'package:http/http.dart' as http;

class HomeLogic extends BaseStatefulLogic<HomeView> implements OnInit {
  int counter = 0;
  String dataJSON = '';

  @override
  Future<void> onInit() async {
    await super.onInit();
    var data = await fetchAlbum();
    log(data.body);
    setState(() {
      dataJSON = data.body;
    });
    isReady = true;
  }

  void increment() {
    setState(() {
      counter++;
    });
  }

  void goLogin() {
    Navigator.pushNamed(context, RouteNames.login);
  }

  Future<http.Response> fetchAlbum() async {
    return http.get(Uri.parse('https://dummyjson.com/products'));
  }
}
