import 'dart:convert';
import 'package:http/http.dart' as http;

class PublicClient {
  final String _baseURL = "http://10.17.154.10:3000/api/user";

  Future<http.Response> _sendRequest(String endpoint, {Map<String, String>? params, Object? body, required String method}) async {
    final url = Uri.parse(_baseURL + endpoint).replace(queryParameters: params);

    try {
      http.Response response;

      if (method == 'POST') {
        response = await http.post(
          url,
          headers: {'Content-Type': 'application/json'},
          body: json.encode(body),
        );
      } else if (method == 'GET') {
        response = await http.get(
          url,
          headers: {'Content-Type': 'application/json'},
        );
      } else {
        throw Exception('HTTP method not implemented');
      }

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> get(String endpoint, {Map<String, String>? params}) async {
    final response = await _sendRequest(endpoint, params: params, method: 'GET');
    return json.decode(response.body);
  }

  Future<dynamic> post(String endpoint, {Map<String, String>? params, Object? body}) async {
    final response = await _sendRequest(endpoint, params: params, body: body, method: 'POST');
    return json.decode(response.body);
  }

}
