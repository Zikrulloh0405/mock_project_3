import 'dart:convert';

import 'package:http/http.dart';

class NetworkService {
  static const String baseUrl = "655ef6b8879575426b443f99.mockapi.io";
  static const String apiProduct = "/item";
  static const String apiDeleted = "/item";

  static const Map<String, String> headers = {
    "Content-type": "application/json"
  };

  static Future<String> postData(Map<String, dynamic> map) async {
    Uri url = Uri.https(baseUrl, apiProduct);
    Response response =
        await post(url, body: jsonEncode(map), headers: headers);
    return "Yoour data has been uploaded succesfully  ${response.body}";
  }

  static Future<String> deleteData(String id) async {
    Uri uri = Uri.https(baseUrl, "$apiProduct/$id");
    Response response = await delete(uri, headers: headers);
    return "Deleted succesfully ${response.body}";
  }
}
