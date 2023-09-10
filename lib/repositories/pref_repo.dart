import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';

class PrefRepo {
  static const String keyPrimarySwatchIndex = 'primarySwatchIndex';
  static const String keyCurrentUser = 'currentUser';

  static Future<Map<String, dynamic>?> _getMap(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey(key)) return null;
    return json.decode(prefs.getString(key)!);
  }

  static void _putMap(String key, Map<String, dynamic> data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, json.encode(data));
  }

  static void _removeMap(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey(key)) return;
    prefs.remove(key);
  }

  static Future<int?> _getInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  static Future<void> _setInt(String key, int data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key, data);
  }

  static void removeCurrentUser() => _removeMap(keyCurrentUser);

  static void saveCurrentUser(UserModel userModel) =>
      _putMap(keyCurrentUser, userModel.toJson());

  static Future<UserModel?> getCurrentUser() async {
    Map<String, dynamic>? currentUserJson = await _getMap(keyCurrentUser);
    if (currentUserJson == null) return null;
    return UserModel.fromJson(currentUserJson);
  }

  static void savePrimarySwatchIndex(int index) =>
      _setInt(keyPrimarySwatchIndex, index);

  static Future<int?> getPrimarySwatchIndex() => _getInt(keyPrimarySwatchIndex);
}
