import 'package:flutter/material.dart';
import 'package:flutter_base_template/core/services/local/logging.service.dart';

class BaseStatefulLogic<T extends StatefulWidget> extends State<T>  {
  LoggingService loggingService = LoggingService();

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class BaseStatelessLogic extends StatelessWidget {
  final LoggingService loggingService = LoggingService();

  BaseStatelessLogic({super.key});

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
