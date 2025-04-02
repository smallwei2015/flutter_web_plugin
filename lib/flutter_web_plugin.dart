
import 'flutter_web_plugin_platform_interface.dart';

class FlutterWebPlugin {
  Future<String?> getPlatformVersion() {
    return FlutterWebPluginPlatform.instance.getPlatformVersion();
  }
}
