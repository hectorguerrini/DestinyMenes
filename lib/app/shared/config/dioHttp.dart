import 'package:dio/native_imp.dart';

class DioHttp extends DioForNative {
  DioHttp() {
    this.options.baseUrl = 'https://www.bungie.net';
    this.options.headers = {'X-API-Key': 'a845d1b4b9df46538918715ff71a5caf'};
  }
}
