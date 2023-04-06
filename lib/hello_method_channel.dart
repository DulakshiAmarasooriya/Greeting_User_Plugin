import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'hello_platform_interface.dart';

/// An implementation of [HelloPlatform] that uses method channels.
class MethodChannelHello extends HelloPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('hello');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
  @override
  Future<String?> getDefaultGreeting() async {
    final version = await methodChannel.invokeMethod<String>('getDefaultGreeting');
    return version;
  }

   @override
  Future<String?> greetingForUser(String name) async {
    final version = await methodChannel.invokeMethod<String>('greetingForUser',{'name':name});
    return version;
  }
}
