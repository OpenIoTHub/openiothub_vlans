import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'openiothub_vlans_method_channel.dart';

abstract class OpeniothubVlansPlatform extends PlatformInterface {
  /// Constructs a OpeniothubVlansPlatform.
  OpeniothubVlansPlatform() : super(token: _token);

  static final Object _token = Object();

  static OpeniothubVlansPlatform _instance = MethodChannelOpeniothubVlans();

  /// The default instance of [OpeniothubVlansPlatform] to use.
  ///
  /// Defaults to [MethodChannelOpeniothubVlans].
  static OpeniothubVlansPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpeniothubVlansPlatform] when
  /// they register themselves.
  static set instance(OpeniothubVlansPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
