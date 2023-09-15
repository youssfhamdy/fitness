import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/custom_CupertinoDatePicker.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _State();
}

class _State extends State<LoadingPage> {
  @override
  DateTime dateTime = DateTime(2000, 2, 1, 10, 20);

  Widget build(BuildContext context) {
    return NumberPage();
  }
}