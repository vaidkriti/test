import 'dart:convert';
import 'package:ntpc/NetworkResponse/alldata.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';



Future<Data> fetchalldata() async{
  final url = 'http://ntpchrmapi.solarman.in/api/Main/adm_Masters_All';
  SharedPreferences pf = await SharedPreferences.getInstance();
    String? token=pf.getString("token");


  var response = await http.get(Uri.parse(url),headers: {

    "Authorization": "Bearer $token"},);

  if (response.statusCode == 200) {

    Data jsonResponse =
    Data.fromJson(json.decode(response.body));
    return jsonResponse;
  } else {
    print(response.statusCode);
    throw Exception('Failed to load jobs from API');
  }
}