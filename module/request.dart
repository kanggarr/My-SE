import '../interceptor/privateClient.dart';

class RequestApi {
  final PrivateClient _privateClient = PrivateClient();
  final String _createMessageEndpoint = "/request";

  Future<dynamic> createMessage(Map<String, dynamic> messageData) async {
    try {
      final response = await _privateClient.post(_createMessageEndpoint, body: messageData);
      return response;
    } catch (error) {
      print('Error creating message: $error');
      rethrow;
    }
  }
}
