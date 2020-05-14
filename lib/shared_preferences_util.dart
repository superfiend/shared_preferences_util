library shared_preferences_util;

import 'package:shared_preferences/shared_preferences.dart';

/// shared_preferences 读写工具类
class SharedPreferencesUtil {

    SharedPreferencesUtil._(); // 构造函数私有化

    static Future<bool> hasData(String key) async {
        return SharedPreferences.getInstance().then((preferences) {
            return preferences.containsKey(key);
        });
    }

    static Future<T> getData<T>(String key) async {
        return SharedPreferences.getInstance().then((preferences) {
            return preferences.get(key) as T;
        });
    }

    static Future setData<T>(String key, T value) async {
        return SharedPreferences.getInstance().then((preferences) {
            switch (T) {
                case String:
                    preferences.setString(key, value as String);
                    break;
                case int:
                    preferences.setInt(key, value as int);
                    break;
                case bool:
                    preferences.setBool(key, value as bool);
                    break;
                case double:
                    preferences.setDouble(key, value as double);
                    break;
                default:
                    preferences.setStringList(key, value as List<String>);
            }
        });
    }

    static Future<bool> delData(String key) async {
        return SharedPreferences.getInstance().then((preferences) {
            return preferences.remove(key);
        });
    }

    static Future<bool> clear() async {
        return SharedPreferences.getInstance().then((preferences) {
            return preferences.clear();
        });
    }
}
