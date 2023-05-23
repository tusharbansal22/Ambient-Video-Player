import 'package:flutter_test/flutter_test.dart';
import 'package:ambient_video_player_plugin/ambient_video_player_plugin.dart';
import 'package:ambient_video_player_plugin/ambient_video_player_plugin_platform_interface.dart';
import 'package:ambient_video_player_plugin/ambient_video_player_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAmbientVideoPlayerPluginPlatform
    with MockPlatformInterfaceMixin
    implements AmbientVideoPlayerPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AmbientVideoPlayerPluginPlatform initialPlatform = AmbientVideoPlayerPluginPlatform.instance;

  test('$MethodChannelAmbientVideoPlayerPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAmbientVideoPlayerPlugin>());
  });

  test('getPlatformVersion', () async {
    AmbientVideoPlayerPlugin ambientVideoPlayerPlugin = AmbientVideoPlayerPlugin();
    MockAmbientVideoPlayerPluginPlatform fakePlatform = MockAmbientVideoPlayerPluginPlatform();
    AmbientVideoPlayerPluginPlatform.instance = fakePlatform;

    expect(await ambientVideoPlayerPlugin.getPlatformVersion(), '42');
  });
}
