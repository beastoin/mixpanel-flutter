import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mixpanel_flutter_method_channel.dart';

abstract class MixpanelFlutterPlatform extends PlatformInterface {
  /// Constructs a MixpanelFlutterPlatform.
  MixpanelFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static MixpanelFlutterPlatform _instance = MethodChannelMixpanelFlutter();

  /// The default instance of [MixpanelFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelMixpanelFlutter].
  static MixpanelFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MixpanelFlutterPlatform] when
  /// they register themselves.
  static set instance(MixpanelFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
