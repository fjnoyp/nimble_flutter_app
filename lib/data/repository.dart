import 'dart:io';

import 'package:dio/dio.dart';
import 'package:nimble_flutter_app/api/api_error.dart';

/// Provides data access to a repository.
abstract class Repository {
  /// Run and parse a HTTP requests.
  Future<T> run<T>({
    required Future<Response> Function() request,
    required T Function(dynamic) parse,
  }) async {
    try {
      final response = await request();
      switch (response.statusCode) {
        case 200:
          return parse(response.data);
        case 404:
          throw const APIError.notFound();
        default:
          throw const APIError.unknown();
      }
    } on SocketException catch (_) {
      throw const APIError.noInternetConnection();
    }
  }
}
