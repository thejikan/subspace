import 'dart:collection';
import 'package:http/http.dart' as http;

class DetailsProvider extends IDetailsProvider {

  DetailsProvider() {}

  @override
  Future<http.Response> getDetails() async {
    String endPointPath = 'https://intent-kit-16.hasura.app/api/rest/blogs';
    String adminSecret = '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';

    Map<String, String> headers = HashMap();
    headers['x-hasura-admin-secret'] = adminSecret;

    return await http.get(
      Uri.parse(endPointPath),
      headers: headers,
    );
  }


}

abstract class IDetailsProvider {
  Future<http.Response> getDetails();
}
