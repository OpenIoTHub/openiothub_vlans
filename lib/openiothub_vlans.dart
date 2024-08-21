
import 'openiothub_vlans_platform_interface.dart';

class OpeniothubVlans {
  Future<String?> getPlatformVersion() {
    return OpeniothubVlansPlatform.instance.getPlatformVersion();
  }
}
