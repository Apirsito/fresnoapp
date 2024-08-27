import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpClient {
  final http.Client _client = http.Client();

  Future<http.Response> get<T>(
    Uri url,
  ) async {
    final response = await _client.get(
      url,
      headers: {'Accept': 'application/json; charset=utf-8'},
    );

    return response;
  }

  Future<http.Response> post<T>(
    Uri url,
    T body,
  ) async {
    final response = await _client.post(
      url,
      headers: {
        'Content-Type': 'application/json; charset=utf-8',
      },
      body: jsonEncode(body),
    );
    return response;
  }
}
