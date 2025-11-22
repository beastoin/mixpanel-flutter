import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mixpanel_flutter_platform_interface.dart';

/// An implementation of [MixpanelFlutterPlatform] that uses method channels.
class MethodChannelMixpanelFlutter extends MixpanelFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mixpanel_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
