import 'package:get_storage/get_storage.dart';
import 'package:mcoin_wallet/constants/constants.dart';

class LocalStorage {
  static final box = GetStorage();

  static void writeString(String key, String v) {
    box.write(key, v);
  }

  static String getString(String key) {
    return box.read(key) ?? "";
  }

  static void writeBool(String key, bool v) {
    box.write(key, v);
  }

  static bool getBool(String key) {
    return box.read(key) ?? false;
  }

  static void clearValueByKey(String key) {
    box.remove(key);
  }

  static void setAuthToken(String token) {
    box.write(GetXStorageConstants.authToken, token);
  }


  static String getAuthToken() {
    return box.read(GetXStorageConstants.authToken) ?? "";
  }


  static void clear() {
    box.erase();
  }
}
