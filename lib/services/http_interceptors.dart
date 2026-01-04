import 'package:http_interceptor/http_interceptor.dart';
import 'package:logger/logger.dart';

class LoggingInterceptor implements InterceptorContract {

  Logger logger = Logger();

  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    logger.v("Requisição para:${request.url}\n Cabeçalhos: ${request.headers}\n Método: ${request.method}\n Corpo: ${request is Request ? request.body : 'N/A'}");
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({required BaseResponse response}) async {
    if(response.statusCode ~/ 100 == 2){
      logger.i("Resposta de: ${response.request?.url}\n Cabeçalhos: ${response.headers}\n Status da Resposta: ${response.statusCode}\n Corpo: ${response is Response ? response.body : 'N/A'}");
    }else{
      logger.e("Resposta de: ${response.request?.url}\n Cabeçalhos: ${response.headers}\n Status da Resposta: ${response.statusCode}\n Corpo: ${response is Response ? response.body : 'N/A'}");
    }
    return response;

  }
  

  @override
  Future<bool> shouldInterceptRequest() async => true;

  @override
  Future<bool> shouldInterceptResponse() async => true;
}