import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:openiothub_vlans/openiothub_vlans_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelOpeniothubVlans platform = MethodChannelOpeniothubVlans();
  const MethodChannel channel = MethodChannel('openiothub_vlans');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
