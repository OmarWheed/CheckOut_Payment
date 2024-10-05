import 'package:http/http.dart' as http;

class DioServices {
  // post Request
  Future<http.Response> post({
    required String url,
    required String token,
    Map<String, String>? headers,
    required body,
  }) async {
    var response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers ??
          {
            'Authorization': 'Bearer $token',
            'content-type': 'application/x-www-form-urlencoded',
          },
    );
    return response;
  }
}
