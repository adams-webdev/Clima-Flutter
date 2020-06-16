import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    // Create response variable as get method to return a future response
    http.Response response = await http.get(url);

    // Check that the api response is OK
    if (response.statusCode == 200) {
      // Return a JSON value API response with key value pairs (XML mode optional)
      String data = response.body;
      // Decode all json data and store in variable
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
