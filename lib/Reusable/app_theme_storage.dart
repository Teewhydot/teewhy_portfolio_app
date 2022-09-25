import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserSecureStorage {
  static const _storage = FlutterSecureStorage();
  static const designModeKey = 'design_mode';

  static Future setDesignMode(bool designMode) async {
    final value = jsonEncode(designMode);
    print(value);
    await _storage.write(key: designModeKey, value: value);
  }

  static Future<String?> getDesignMode() async {
    final value = await _storage.read(key: designModeKey);
    final rvalue = value == null ? null : jsonDecode(value);
    print('VAlue read from devisw is ${rvalue}');
    return rvalue;
  }
}

class DesignModeStorage {}
