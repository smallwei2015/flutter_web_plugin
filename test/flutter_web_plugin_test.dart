import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_web_plugin/flutter_web_plugin.dart';
import 'package:flutter_web_plugin/flutter_web_plugin_platform_interface.dart';
import 'package:flutter_web_plugin/flutter_web_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterWebPluginPlatform
    with MockPlatformInterfaceMixin
    implements FlutterWebPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterWebPluginPlatform initialPlatform = FlutterWebPluginPlatform.instance;

  test('$MethodChannelFlutterWebPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterWebPlugin>());
  });

  test('getPlatformVersion', () async {
    FlutterWebPlugin flutterWebPlugin = FlutterWebPlugin();
    MockFlutterWebPluginPlatform fakePlatform = MockFlutterWebPluginPlatform();
    FlutterWebPluginPlatform.instance = fakePlatform;

    expect(await flutterWebPlugin.getPlatformVersion(), '42');
  });
}
