// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class TanangaLogger {
  static void error({
    required String text,
  }) {
    print('\x1B[31m TANANGA ERROR: $text\x1B[0m');
  }

  static void warning({
    required String text,
  }) {
    print('\x1B[33m TANANGA WARNING: $text\x1B[0m');
  }

  static void info({
    required String text,
  }) {
    print('\x1B[34m TANANGA INFO: $text\x1B[0m');
  }
}
