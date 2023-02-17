
import 'package:flutter/cupertino.dart';

import 'flutter_button_plugin_platform_interface.dart';

class FlutterButtonPlugin {
  Future<String?> getPlatformVersion() {
    return FlutterButtonPluginPlatform.instance.getPlatformVersion();
    
  }
}
