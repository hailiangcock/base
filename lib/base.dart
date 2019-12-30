import 'dart:async';

import 'package:flutter/services.dart';

class Base {
  static const MethodChannel _channel =
      const MethodChannel('base');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
