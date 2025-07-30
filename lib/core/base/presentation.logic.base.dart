import 'package:flutter/material.dart';

class BaseLogic<T extends StatefulWidget> extends State<T> {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class BaseStatefulLogic<T extends StatefulWidget> extends BaseLogic {}

class BaseStatelessLogic<T extends StatelessWidget> extends BaseLogic {}
