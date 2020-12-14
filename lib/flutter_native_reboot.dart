import 'dart:async';

import 'package:flutter/services.dart';

class FlutterNativeReboot {
  static const MethodChannel _channel =
  const MethodChannel('flutter_native_reboot');

  static Future reboot() async {
    try {
      await _channel.invokeMethod('reboot');
    } on PlatformException catch (e) {
      throw PlatformException(
        code: '平台通信错误',
        details: e.details,
        stacktrace: e.stacktrace,
      );
    }
  }
}
