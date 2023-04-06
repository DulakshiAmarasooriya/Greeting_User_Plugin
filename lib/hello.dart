
import 'hello_platform_interface.dart';

class Hello {
  Future<String?> getPlatformVersion() {
    return HelloPlatform.instance.getPlatformVersion();
  }
  Future<String?> getDefaultGreeting() {
    return HelloPlatform.instance.getDefaultGreeting();
  }
  Future<String?> greetingForUser(String name) {
    return HelloPlatform.instance.greetingForUser(name);
  }
}
