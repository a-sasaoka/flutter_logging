import 'package:logger/logger.dart';

// ログのカスタマイズはここに集約
mixin MyLogger {
  var logger = Logger();

  Logger getLogger() {
    return logger;
  }
}
