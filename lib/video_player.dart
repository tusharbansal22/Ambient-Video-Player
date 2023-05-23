import 'package:flutter/services.dart';
import 'package:sound_mode/utils/ringer_mode_statuses.dart';
import 'package:video_player/video_player.dart';
import 'package:sound_mode/sound_mode.dart';

class AmbientVideoPlayer extends VideoPlayerController {

  AmbientVideoPlayer.network(String dataSource) : super.network(dataSource);

  @override
  Future<void> initialize() async {
    await super.initialize();

    final bool isDeviceSilent = await _isDeviceSilent();
    if (isDeviceSilent) {
      setVolume(0);
    }
  }

  Future<bool> _isDeviceSilent() async {
    RingerModeStatus audioMode = await SoundMode.ringerModeStatus;
    print(audioMode);
    return (audioMode == RingerModeStatus.silent || audioMode==RingerModeStatus.vibrate);
  }
}

class AmbientVideoPlayerFactory {
  static Future<AmbientVideoPlayer> create(String dataSource) async {
    final AmbientVideoPlayer player = AmbientVideoPlayer.network(dataSource);
    await player.initialize();
    return player;
  }
}