import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import 'screens/mainscreen.dart';

void main() {
  runApp(ProviderScope(child: myapp()));
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: mainscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
