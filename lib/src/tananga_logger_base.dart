class TanangaLogger {
  static void error({
    required String uuidV4,
    required String text,
  }) {
    if (_isUuidV4(uuidV4)) {
      print('\x1B[31m TANANGA ERROR $uuidV4: $text\x1B[0m');
    } else {
      _invalidUUID(invalidUUID: uuidV4);
    }
  }

  static void warning({
    required String uuidV4,
    required String text,
  }) {
    if (_isUuidV4(uuidV4)) {
      print('\x1B[33m TANANGA WARNING $uuidV4: $text\x1B[0m');
    } else {
      _invalidUUID(invalidUUID: uuidV4);
    }
  }

  static void info({
    required String uuidV4,
    required String text,
  }) {
    if (_isUuidV4(uuidV4)) {
      print('\x1B[34m TANANGA INFO $uuidV4: $text\x1B[0m');
    } else {
      _invalidUUID(invalidUUID: uuidV4);
    }
  }

  static bool _isUuidV4(String value) {
    final uuidV4Regex = RegExp(r'^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$', caseSensitive: false);
    return uuidV4Regex.hasMatch(value);
  }

  static void _invalidUUID({required String invalidUUID}) {
    print('\x1B[31m TANANGA INVALID UUID: $invalidUUID\x1B[0m');
  }
}
