import 'package:flutter_logging/filters/customize_filter.dart';
import 'package:logger/logger.dart';

/// [loggerパッケージ](https://pub.dev/packages/logger)をカスタマイズしたmixin
///
/// * フォルターとして[CustomizeFilter]を使用する
/// * ログレベルと日時も出力する
mixin MyLogger {
  /// カスタマイズしたインスタンス
  var logger = Logger(
    filter: CustomizeFilter(),
    printer: PrefixPrinter(
      PrettyPrinter(
        // 時刻も出力する
        printTime: true,
      ),
    ),
  );
}
