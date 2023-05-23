import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ambient_video_player_plugin_platform_interface.dart';

/// An implementation of [AmbientVideoPlayerPluginPlatform] that uses method channels.
class MethodChannelAmbientVideoPlayerPlugin extends AmbientVideoPlayerPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ambient_video_player_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
