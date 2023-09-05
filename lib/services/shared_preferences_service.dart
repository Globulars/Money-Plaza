import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class Store {
  static const String _userKey = "user";

  static Future getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userString = prefs.getString(_userKey);
    return userString;
  }

  static Future<bool> save(String key, String json) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_userKey, json);
  }

  static Future<bool> deleteUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.remove(_userKey);
  }
}
