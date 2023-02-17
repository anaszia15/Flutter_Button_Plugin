import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_button_plugin/flutter_button_plugin.dart';
import 'package:flutter_button_plugin/flutter_button_plugin_platform_interface.dart';
import 'package:flutter_button_plugin/flutter_button_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterButtonPluginPlatform
    with MockPlatformInterfaceMixin
    implements FlutterButtonPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterButtonPluginPlatform initialPlatform = FlutterButtonPluginPlatform.instance;

  test('$MethodChannelFlutterButtonPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterButtonPlugin>());
  });

  test('getPlatformVersion', () async {
    FlutterButtonPlugin flutterButtonPlugin = FlutterButtonPlugin();
    MockFlutterButtonPluginPlatform fakePlatform = MockFlutterButtonPluginPlatform();
    FlutterButtonPluginPlatform.instance = fakePlatform;

    expect(await flutterButtonPlugin.getPlatformVersion(), '42');
  });
}
