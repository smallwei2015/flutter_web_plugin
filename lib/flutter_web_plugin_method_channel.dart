import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_web_plugin_platform_interface.dart';

/// An implementation of [FlutterWebPluginPlatform] that uses method channels.
class MethodChannelFlutterWebPlugin extends FlutterWebPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_web_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}