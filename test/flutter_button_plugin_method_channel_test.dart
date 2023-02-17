import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_button_plugin/flutter_button_plugin_method_channel.dart';

void main() {
  MethodChannelFlutterButtonPlugin platform = MethodChannelFlutterButtonPlugin();
  const MethodChannel channel = MethodChannel('flutter_button_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
