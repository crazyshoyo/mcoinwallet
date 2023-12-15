import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mcoin_wallet/constants/constants.dart';
import 'package:mcoin_wallet/core/errors/exceptions.dart' as Dio;
import 'package:mcoin_wallet/datasource/remote/services/base_client.dart';
import 'package:mcoin_wallet/datasource/remote/services/base_services.dart';

class RestClient implements BaseService {
  var dioInstance = BaseNetworkClient();

  @override
  Future get({required String url, Map<String, dynamic>? params}) async {
    try {
      final response =
          await dioInstance.getNetworkClient.get(url, queryParameters: params);
      return response.data;
    } catch (e) {
      if (e is DioError) {
        if (e.response?.statusCode == 401) {
          throw Dio.LogoutException(Constants.logoutMessage);
        } else if(e.response?.statusCode == 500 ) {
          throw Dio.ServerException('Server Error');
        } else {
          Map<String, dynamic> errorResponse = jsonDecode(e.response?.data);
          final String message = errorResponse['message'];
          throw Dio.DioException(message);
        }
      }
      if (kDebugMode) {
        print(e);
      }
      throw Dio.ServerException(Constants.someThingWentWrong);
    }
  }

  @override
  Future post(
      {required String url,
      required Map<String, dynamic> request,
      Map<String, dynamic>? params}) async {
    try {
      final response = await dioInstance.getNetworkClient
          .post(url, data: request, queryParameters: params);
      return response.data;
    } catch (e) {
      if (e is DioError) {
        if (e.response?.statusCode == 401) {
          throw Dio.LogoutException(Constants.logoutMessage);
        } else if(e.response?.statusCode == 500 ) {
          throw Dio.ServerException('Server Error');
        } else {
          Map<String, dynamic> errorResponse = jsonDecode(e.response?.data);
          final String message = errorResponse['message'] ?? '';
          throw Dio.DioException(message);
        }
      }
      if (kDebugMode) {
        print(e.toString());
      }
      throw Dio.ServerException(e.toString());
    }
  }

  @override
  Future put(
      {required String url, required Map<String, dynamic> request}) async {
    try {
      final response =
          await dioInstance.getNetworkClient.put(url, data: request);
      return response.data;
    } catch (e) {
      if (e is DioError) {
        if (e.response?.statusCode == 401) {
          throw Dio.LogoutException(Constants.logoutMessage);
        } else if(e.response?.statusCode == 500 ) {
          throw Dio.ServerException('Server Error');
        } else {
          Map<String, dynamic> errorResponse = jsonDecode(e.response?.data);
          final String message = errorResponse['message'];
          throw Dio.DioException(message);
        }
      }
      if (kDebugMode) {
        print(e);
      }
      throw Dio.ServerException(Constants.someThingWentWrong);
    }
  }

  @override
  Future delete(
      {required String url, required Map<String, dynamic> request}) async {
    try {
      final response =
          await dioInstance.getNetworkClient.delete(url, data: request);
      return response.data;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    throw Dio.ServerException(Constants.someThingWentWrong);
  }

  }


