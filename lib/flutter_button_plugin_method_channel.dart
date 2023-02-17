import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_button_plugin_platform_interface.dart';

/// An implementation of [FlutterButtonPluginPlatform] that uses method channels.
class MethodChannelFlutterButtonPlugin extends FlutterButtonPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_button_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
