import 'package:flutter_logging/mixin/my_logger.dart';

class MyClass with MyLogger {
  MyClass() {
    logger.d('MyClass constructor');
  }

  void output() {
    logger.t('MyClass output method');
  }
}
