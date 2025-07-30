import 'package:flutter_base_template/core/base/presentation.logic.base.dart';
import 'package:flutter_base_template/features/home/presentation/home.view.dart';

class HomeLogic extends BaseStatefulLogic<HomeView> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }
}
