import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class PrivateClient {
  final String _baseURL = "http://10.17.154.10:3000/api/user";

  Future<http.Response> _sendRequest(String endpoint, {Map<String, String>? params, Object? body}) async {
    final url = Uri.parse(_baseURL + endpoint).replace(queryParameters: params);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('actkn');

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode(body),
      );

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> post(String endpoint, {Map<String, String>? params, Object? body}) async {
    final response = await _sendRequest(endpoint, params: params, body: body);
    return json.decode(response.body);
  }

}
