// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'package:ambient_video_player_plugin/video_player.dart';
import 'package:flutter/services.dart';

import 'ambient_video_player_plugin_platform_interface.dart';



class AmbientVideoPlayerPlugin {
  static const MethodChannel _channel =
  const MethodChannel('my_video_player_plugin');

  static Future<AmbientVideoPlayer> createVideoPlayer(String dataSource) async {
    final AmbientVideoPlayer player = await AmbientVideoPlayerFactory.create(dataSource);
    return player;
  }
}




