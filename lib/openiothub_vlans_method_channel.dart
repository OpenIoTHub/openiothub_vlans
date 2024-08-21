import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'openiothub_vlans_platform_interface.dart';

/// An implementation of [OpeniothubVlansPlatform] that uses method channels.
class MethodChannelOpeniothubVlans extends OpeniothubVlansPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('openiothub_vlans');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
