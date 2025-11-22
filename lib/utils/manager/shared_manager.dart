import 'package:shared_preferences/shared_preferences.dart';

/// Generic class to do shared preferences
/// management with dynamic data type
class SharedManager<T> {

  /// Instance shared preferences
  /// and make it private
  late SharedPreferences prefs;
  /// Get type of this generic class
  // ignore: avoid_shadowing_type_parameters
  Type type<T>() => T;

  /// Call the shared preferences
  /// field using keyname and with 
  /// the generic return type
  Future<T?> read(String key) async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(key)) {
      return prefs.get(key) as T;
    }
    return null;
  }

  /// This function will set value
  /// into shared preferences
  Future store(String key, dynamic value) async {
    prefs = await SharedPreferences.getInstance();
    var types = type<T>();
    switch(types) {
      case String:
        prefs.setString(key, value);
        break;
      case int:
        prefs.setInt(key, value);
        break;
      case bool:
        prefs.setBool(key, value);
        break;
      case double:
        prefs.setDouble(key, value);
        break;
      case List:
        prefs.setStringList(key, value);
        break;
    }
  }

  Future delete(String key) async {
    prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  /// Clear all stored shared preferences
  Future clear() async {
    prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}