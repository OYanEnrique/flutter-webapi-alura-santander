import 'dart:convert';

import 'package:flutter_webapi_first_course/config/api_config.dart';
import 'package:flutter_webapi_first_course/models/journal.dart';
import 'package:flutter_webapi_first_course/services/http_interceptors.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';

class JournalService {
  static String url = ApiConfig.baseUrl;
  static const String resource = "journals/";

http.Client client = InterceptedClient.build(interceptors: [LoggingInterceptor()]);

  getUrl(){
    return "$url$resource";
  }

 Future<bool> register(Journal journal) async {
    String jsonJournal = json.encode(journal.toMap());
    http.Response response = await client.post(Uri.parse(getUrl()), 
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonJournal);
    if(response.statusCode == 201){
      print("Journal registrado com sucesso!");
      return true;
    } 
    return false;
  }
  Future<String> get() async {
    http.Response response = await client.get(Uri.parse(getUrl()));
    print(response.body);
    return response.body;
  }
}