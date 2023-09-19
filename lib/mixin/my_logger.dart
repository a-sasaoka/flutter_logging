import 'package:logger/logger.dart';

// ログのカスタマイズはここに集約
mixin MyLogger {
  var logger = Logger(
    // デフォルト（DevelopmentFilter）はリリースモードだとログが出ないため、ProductionFilterを指定
    filter: ProductionFilter(),
    printer: PrettyPrinter(
      // 時刻も出力する
      printTime: true,
    ),
  );
}
