import 'package:flutter/material.dart';
import 'package:flutter_base_template/core/services/local/logging.local.service.dart';

abstract class OnInit {
  Future<void> onInit();
}

class BaseStatefulLogic<T extends StatefulWidget> extends State<T>
    implements OnInit {
  LoggingService loggingService = LoggingService();
  bool isReady = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await onInit();
    });
  }

  @override
  Future<void> onInit() async {
    isReady = false;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class BaseStatelessLogic extends StatelessWidget {
  final LoggingService loggingService = LoggingService();

  BaseStatelessLogic({super.key});

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
