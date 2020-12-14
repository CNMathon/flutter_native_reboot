import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_native_reboot/flutter_native_reboot.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  Future<void> reboot() async {
    await FlutterNativeReboot.reboot();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FlatButton(
            child: Text('Reboot'),
            onPressed: reboot,
          ),
        ),
      ),
    );
  }
}
