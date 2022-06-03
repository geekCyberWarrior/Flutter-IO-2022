import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> getWeatherData() async {
  var client = http.Client();
  try {
    var response = await client.get(
      Uri.https(
          'dataservice.accuweather.com',
          'currentconditions/v1/topcities/50',
          {"apikey": "ag1u7GpfWOLR6SmkAcWHqdlr2u6472ed"}),
    );
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as List;
    print(decodedResponse);
  } finally {
    client.close();
  }
}
