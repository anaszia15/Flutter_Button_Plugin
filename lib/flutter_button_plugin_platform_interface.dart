import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_button_plugin_method_channel.dart';

abstract class FlutterButtonPluginPlatform extends PlatformInterface {
  /// Constructs a FlutterButtonPluginPlatform.
  FlutterButtonPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterButtonPluginPlatform _instance = MethodChannelFlutterButtonPlugin();

  /// The default instance of [FlutterButtonPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterButtonPlugin].
  static FlutterButtonPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterButtonPluginPlatform] when
  /// they register themselves.
  static set instance(FlutterButtonPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
