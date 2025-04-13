import 'dart:convert';
import 'package:http/http.dart' as http;

class SpotifyService {
  final String clientId;
  final String clientSecret;

  SpotifyService({required this.clientId, required this.clientSecret});

  Future<String> _getAccessToken() async {
    final String auth = base64Encode(utf8.encode('$clientId:$clientSecret'));
    final response = await http.post(
      Uri.parse('https://accounts.spotify.com/api/token'),
      headers: {
        'Authorization': 'Basic $auth',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {'grant_type': 'client_credentials'},
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return body['access_token'];
    } else {
      throw Exception('Failed to get access token: ${response.statusCode}');
    }
  }

  Future<String?> fetchSpotifyImageUrl({
    String type = 'artist',
    required String id,
  }) async {
    try {
      final accessToken = await _getAccessToken();
      final url = Uri.parse('https://api.spotify.com/v1/${type}s/$id');

      final response = await http.get(
        url,
        headers: {'Authorization': 'Bearer $accessToken'},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final images = data['images'] as List?;
        return images != null && images.isNotEmpty ? images[0]['url'] : null;
      } else {
        throw Exception('API Error: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Fetch failed: $e');
    }
  }
}
