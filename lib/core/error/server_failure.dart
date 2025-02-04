import 'package:book_app/core/error/failure.dart';
import 'package:dio/dio.dart';

class ServerFailure extends Failure {
  const ServerFailure({required super.msg});

  factory ServerFailure.fromDioException({required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(msg: "Connection timeout, please try again.");
      case DioExceptionType.sendTimeout:
        return ServerFailure(msg: "Send timeout, please try again.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(msg: "Receive timeout, please try again.");
      case DioExceptionType.badCertificate:
        return ServerFailure(msg: "Bad certificate, connection is not secure.");
      case DioExceptionType.cancel:
        return ServerFailure(msg: "Request was cancelled.");
      case DioExceptionType.connectionError:
        return ServerFailure(msg: "No internet connection.");
      case DioExceptionType.unknown:
        return ServerFailure(msg: "An unknown error occurred.");

      case DioExceptionType.badResponse:
        return ServerFailure(
          msg: _handleBadResponse(dioException.response),
        );
    }
  }

  static String _handleBadResponse(Response<dynamic>? response) {
    if (response == null) {
      return "Bad response from server.";
    }
    switch (response.statusCode) {
      case 400:
      case 401:
      case 403:
        return response.data["error"]["message"];
      case 404:
        return "Resource not found, please try again later.";
      case 500:
        return "Internal server error, please try again later.";
      default:
        return "Unexpected error: ${response.statusCode}";
    }
  }
}
