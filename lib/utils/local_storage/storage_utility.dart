import 'package:get_storage/get_storage.dart';

class MyLocalStorage {
  static final MyLocalStorage _instance = MyLocalStorage._internal();

  factory MyLocalStorage() {
    return _instance;
  }

  MyLocalStorage._internal();

  final _storage = GetStorage();

  // Generic Method to save data
  Future<void> saveData<Data>(String key, Data value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  Data? readData<Data>(String key) {
    return _storage.read<Data>(key);
  }

  // Generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
