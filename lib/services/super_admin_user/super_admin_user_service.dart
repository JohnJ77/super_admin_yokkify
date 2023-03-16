import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:super_admin_yokkify/models/super_admin_user_login.dart';
import 'package:super_admin_yokkify/models/super_admin_user_login_info_model.dart';


class SuperAdminUserService {
  String _baseUrl = 'apiyokkify.ideasappcolombia.com';
  String _tokenId = "";

  SuperAdminUserService({String tokenId = ""}) {
    _tokenId = tokenId;
  }

  Future<String> _getJsonData(String endpoint) async {
    var url = Uri.http(_baseUrl, endpoint);
    Map<String, String> userHeader = {
      "Content-type": "application/json",
      "Accept": "application/json",
      "x-token": _tokenId
    };
    var response = await http.get(url, headers: userHeader);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to get data');
    }
  }

   Future<SuperAdminUserLogin> loginUser(SuperAdminUserLoginInfo user) async {
    var url = Uri.http(_baseUrl, '/api/authPanel/loginSuper');
    Map<String, String> userHeader = {
      "Content-type": "application/json",
      "Accept": "application/json",
    };

    final response = await http.post(url,
        headers: userHeader, body: convert.jsonEncode(user.toJson()));
    if (response.statusCode == 200) {
      return superAdminUserLoginFromJson(response.body);
      ;
    } else {
      throw Exception('Failed to post data');
    }
  }

 


}