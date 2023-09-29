import 'package:flutter_logging/mixin/my_logger.dart';

/// MyClass
class MyClass with MyLogger {
  /// コンストラクタ
  MyClass() {
    logger.d('MyClass constructor');
  }

  /// output
  void output() {
    logger.t('MyClass output method');
  }
}
