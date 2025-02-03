import 'package:get_mvvm/data/network/network_api_services.dart';
import 'package:get_mvvm/res/const/url.dart';

class LoginRepo {
  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiService.postApi(data, AppUrl.loginApi);

    return response;
  }
}
