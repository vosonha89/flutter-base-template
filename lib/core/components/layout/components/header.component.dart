import 'package:flutter/material.dart';
import 'package:flutter_base_template/core/base/presentation.logic.base.dart';

class HeaderComponent extends BaseStatelessLogic {
  final String label;

  HeaderComponent(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(label);
  }
}
