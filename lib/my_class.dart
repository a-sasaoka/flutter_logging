import 'package:flutter_logging/mixin/my_logger.dart';

class MyClass with MyLogger {
  MyClass() {
    getLogger().d('MyClass constructor');
  }

  void output() {
    getLogger().t('MyClass output method');
  }
}
