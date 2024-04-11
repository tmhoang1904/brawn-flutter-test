import 'dart:async';

import 'package:brawn_app_test/config/app_config.dart';
import 'package:brawn_app_test/data/common/api_exception.dart';
import 'package:brawn_app_test/data/gateway/interceptors/default_error_handler_interceptor.dart';
import 'package:brawn_app_test/data/gateway/interceptors/default_response_handler_interceptor.dart';
import 'package:brawn_app_test/data/gateway/resource/resource.dart';
import 'package:dio/dio.dart';

enum HTTPMethod { get, post, put, delete, patch }

class ApiGateway<T> {
  ApiGateway(
    this.configs, {
    required this.resource,
    required this.method,
    this.maxRetries = 3,
    this.contentType,
    this.params,
    this.data,
    this.interceptors,
    this.timeout = const Duration(seconds: 30),
    this.onSendProgress,
    this.onReceivedProgress,
    this.headers,
    BaseOptions? options,
  }) {
    final endpoint = _getEndpoint(configs);
    final mOptions = options?.copyWith(
          baseUrl: endpoint,
          connectTimeout: timeout,
          headers: headers,
          contentType: contentType,
        ) ??
        BaseOptions(
          baseUrl: endpoint,
          connectTimeout: timeout,
          headers: headers,
          contentType: contentType,
        );
    _dioInstance = Dio(mOptions);
    _configureInterceptors();
  }

  factory ApiGateway.withDefaultRepo(
    AppConfig configs, {
    required Resource resource,
    required HTTPMethod method,
    List<Interceptor>? interceptors,
    Duration timeout = const Duration(seconds: 30),
    BaseOptions? options,
  }) {
    return ApiGateway(
      configs,
      interceptors: interceptors,
      timeout: timeout,
      options: options,
      resource: resource,
      method: method,
    );
  }

  final Duration timeout;
  late Dio _dioInstance;
  final AppConfig configs;
  List<Interceptor>? interceptors;
  final Resource resource;
  final HTTPMethod method;
  final String? contentType;
  final Map<String, dynamic>? headers;
  final Map<String, dynamic>? params;
  final dynamic data;
  final int maxRetries;
  final void Function(int, int)? onSendProgress;
  final void Function(int, int)? onReceivedProgress;

  String _getEndpoint(AppConfig configs) {
    switch (resource.apiType) {
      default:
        return configs.baseUrl;
    }
  }

  void _configureInterceptors() {
    if (interceptors != null) {
      _dioInstance.interceptors.addAll(interceptors!);
    }

    switch (resource.apiType) {
      case ApiType.public:
        if (interceptors == null) {
          _dioInstance.interceptors.addAll(
            [
              DefaultResponseHandlerInterceptor(),
              DefaultErrorHandlerInterceptor(),
            ],
          );
        }
      case ApiType.user:
        if (interceptors == null) {
          _dioInstance.interceptors.addAll(
            [
              DefaultResponseHandlerInterceptor(),
              DefaultErrorHandlerInterceptor(),
            ],
          );
        }
    }
  }

  Future<Response<T>> execute() {
    switch (method) {
      case HTTPMethod.get:
        return _dioInstance
            .get<T>(
              resource.path,
              queryParameters: params,
              onReceiveProgress: onReceivedProgress,
            )
            .catchError(_errorWrapper);
      case HTTPMethod.post:
        return _dioInstance
            .post<T>(
              resource.path,
              data: data,
              onSendProgress: onSendProgress,
              onReceiveProgress: onReceivedProgress,
            )
            .catchError(_errorWrapper);
      case HTTPMethod.put:
        return _dioInstance
            .put<T>(
              resource.path,
              data: data,
              onSendProgress: onSendProgress,
              onReceiveProgress: onReceivedProgress,
            )
            .catchError(_errorWrapper);
      case HTTPMethod.delete:
        return _dioInstance
            .delete<T>(
              resource.path,
            )
            .catchError(_errorWrapper);
      case HTTPMethod.patch:
        return _dioInstance
            .patch<T>(
              resource.path,
              data: data,
              onSendProgress: onSendProgress,
              onReceiveProgress: onReceivedProgress,
            )
            .catchError(_errorWrapper);
    }
  }

  FutureOr<Response<T>> _errorWrapper(dynamic error) {
    if (error is DioException) {
      if (error.error != null && error.error is ApiException) {
        throw error.error! as ApiException;
      } else {
        throw error;
      }
    } else {
      throw ApiException.fromMessage('Unexpected error', 'unexpected');
    }
  }
}
