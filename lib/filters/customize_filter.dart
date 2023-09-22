import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';

/// 設定ファイル(.env)の定義にしたがって、出力するログレベルを制御するFilter
///
/// 設定出来るログレベルは下記の通り（指定無し or 下記以外の値の場合は全てのレベルのログを出力）
/// * trace
/// * debug
/// * info
/// * warning
/// * error
/// * fatal
/// * off
///
/// 記入例
/// ```
/// LOG_LEVEL=error
/// ```
class CustomizeFilter extends LogFilter {
  Level? _level;

  CustomizeFilter() {
    String level = dotenv.get('LOG_LEVEL');

    switch (level) {
      case 'trace':
        _level = Level.trace;
        break;
      case 'debug':
        _level = Level.debug;
        break;
      case 'info':
        _level = Level.info;
        break;
      case 'warning':
        _level = Level.warning;
        break;
      case 'error':
        _level = Level.error;
        break;
      case 'fatal':
        _level = Level.fatal;
        break;
      case 'off':
        _level = Level.off;
        break;
      default:
        _level = Level.all;
    }
  }

  @override
  bool shouldLog(LogEvent event) {
    return event.level.value >= _level!.value;
  }
}
