import 'package:brawn_app_test/data/common/api_exception.dart';
import 'package:dio/dio.dart';

class DefaultErrorHandlerInterceptor extends QueuedInterceptor {
  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    handler.next(
      DioException(
        requestOptions: err.requestOptions,
        error: ApiException(err),
        response: err.response,
        type: err.type,
      ),
    );
  }
}
