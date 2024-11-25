import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiHelper {
  static Future<Map<String, dynamic>> post(String url, Map<String, String> body) async {
    try {
      final response = await http.post(Uri.parse(url), body: body);
      final responseData = jsonDecode(response.body);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return {'success': true, 'data': responseData};
      } else {
        return {'success': false, 'error': responseData['error']};
      }
    } catch (e) {
      return {'success': false, 'error': 'An error occurred: $e'};
    }
  }
}
