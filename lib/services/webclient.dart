import 'package:flutter_webapi_first_course/config/api_config.dart';
import 'package:flutter_webapi_first_course/services/http_interceptors.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';

class WebClient {
   static String url = ApiConfig.baseUrl;
   http.Client client = InterceptedClient.build(
    interceptors: [LoggingInterceptor()], 
    requestTimeout: const Duration(seconds: 15));
}