import FlutterMacOS

@objc public class MixpanelFlutterPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        SwiftMixpanelFlutterPlugin.register(with: registrar)
    }
}
