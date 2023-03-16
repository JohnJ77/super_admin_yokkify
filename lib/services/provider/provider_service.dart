import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:super_admin_yokkify/models/provider_per_super_admin_model.dart';

class ProviderService {
  String _baseUrl = 'apiyokkify.ideasappcolombia.com';
  String _tokenId = "";

  ProviderService(String tokenId) {
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

  Future<ProviderPerSuperAdmin> getProviders() async {
    final jsonData = await this._getJsonData('/api/provider/');
    return providerPerSuperAdminFromJson(jsonData);
  }
}
