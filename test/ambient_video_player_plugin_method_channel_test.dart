import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ambient_video_player_plugin/ambient_video_player_plugin_method_channel.dart';

void main() {
  MethodChannelAmbientVideoPlayerPlugin platform = MethodChannelAmbientVideoPlayerPlugin();
  const MethodChannel channel = MethodChannel('ambient_video_player_plugin');

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
