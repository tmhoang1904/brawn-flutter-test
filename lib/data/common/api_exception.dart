import 'dart:io';

import 'package:brawn_app_test/data/common/response_error.dart';
import 'package:dio/dio.dart';

class ApiException extends Error {
  ApiException(
    DioException? exception, {
    this.errorMessage = '',
    this.errorCode,
    this.statusCode = 0,
  }) {
    statusCode = exception?.response?.statusCode ?? statusCode;
    switch (exception?.type) {
      case DioExceptionType.unknown:
      case DioExceptionType.badResponse:
        {
          try {
            final data = exception?.response?.data as Map?;
            final errorBody =
                (data?['error'] ?? <String, dynamic>{}) as Map<String, dynamic>;
            // try to parse to response error
            final responseError = ResponseError.fromJson(errorBody);
            errorMessage = responseError.message;
            errorCode = responseError.errorCode;
          } catch (e) {
            errorMessage = e.toString();

            // Try to get Dio internal error
            // which might due to service not available
            if (exception?.error != null) {
              errorMessage = exception?.error?.toString() ?? '';
            }

            if (exception?.response?.statusMessage != null &&
                (exception?.response?.statusMessage?.isNotEmpty ?? false)) {
              errorMessage = exception?.response?.statusMessage ?? '';
            }
          }

          if (errorMessage.isEmpty) {
            errorMessage = 'Unknown error';
          }
        }
      default:
        {
          switch (exception?.type) {
            case DioExceptionType.connectionTimeout:
            case DioExceptionType.receiveTimeout:
            case DioExceptionType.sendTimeout:
              {
                errorMessage = 'Connection timeout';
              }
            default:
              {
                if (exception?.error is SocketException) {
                  errorMessage = 'Connection problem';
                } else if (exception?.error is HttpException) {
                  errorMessage = 'Connection problem';
                }
              }
          }
        }
    }
  }

  factory ApiException.fromMessage(
    String errorMessage,
    String? errorCode, {
    int? statusCode,
    DioException? exception,
  }) =>
      ApiException(
        exception,
        errorMessage: errorMessage,
        errorCode: errorCode,
        statusCode: statusCode ?? 0,
      );

  String? errorCode;
  int statusCode;
  String errorMessage = '';

  @override
  String toString() {
    return errorMessage;
  }
}
