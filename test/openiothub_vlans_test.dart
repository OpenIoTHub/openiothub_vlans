import 'package:flutter_test/flutter_test.dart';
import 'package:openiothub_vlans/openiothub_vlans.dart';
import 'package:openiothub_vlans/openiothub_vlans_platform_interface.dart';
import 'package:openiothub_vlans/openiothub_vlans_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOpeniothubVlansPlatform
    with MockPlatformInterfaceMixin
    implements OpeniothubVlansPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OpeniothubVlansPlatform initialPlatform = OpeniothubVlansPlatform.instance;

  test('$MethodChannelOpeniothubVlans is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOpeniothubVlans>());
  });

  test('getPlatformVersion', () async {
    OpeniothubVlans openiothubVlansPlugin = OpeniothubVlans();
    MockOpeniothubVlansPlatform fakePlatform = MockOpeniothubVlansPlatform();
    OpeniothubVlansPlatform.instance = fakePlatform;

    expect(await openiothubVlansPlugin.getPlatformVersion(), '42');
  });
}
