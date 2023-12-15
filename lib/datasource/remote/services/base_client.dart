import 'package:mcoin_wallet/datasource/remote/services/dio/dio.dart';

class BaseNetworkClient {
  get getNetworkClient => WebUtil.createDio();
}