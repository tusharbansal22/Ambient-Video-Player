import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ambient_video_player_plugin_method_channel.dart';

abstract class AmbientVideoPlayerPluginPlatform extends PlatformInterface {
  /// Constructs a AmbientVideoPlayerPluginPlatform.
  AmbientVideoPlayerPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static AmbientVideoPlayerPluginPlatform _instance = MethodChannelAmbientVideoPlayerPlugin();

  /// The default instance of [AmbientVideoPlayerPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelAmbientVideoPlayerPlugin].
  static AmbientVideoPlayerPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AmbientVideoPlayerPluginPlatform] when
  /// they register themselves.
  static set instance(AmbientVideoPlayerPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
