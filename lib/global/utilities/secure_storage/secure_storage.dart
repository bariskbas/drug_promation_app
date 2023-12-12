import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = new FlutterSecureStorage();

removeTokenData() {
  storage.deleteAll();
}

Future<String> kvkkCheckData() async {
  final _storage = FlutterSecureStorage();
  var kvkk_check = await _storage.read(
        key: "kvkk_check",
      ) ??
      '';
  return kvkk_check.toString();
}
