import 'dart:developer' as developer;

class LoggingService {
  static void debug(String message, {String tag = 'DEBUG'}) {
    developer.log(message, name: tag);
  }

  static void info(String message, {String tag = 'INFO'}) {
    developer.log(message, name: tag);
  }

  static void warning(String message, {String tag = 'WARNING'}) {
    developer.log('⚠️ $message', name: tag);
  }

  static void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    String tag = 'ERROR',
  }) {
    developer.log(
      '❌ $message',
      name: tag,
      error: error,
      stackTrace: stackTrace,
      level: 1000,
    );
  }
}
