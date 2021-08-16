import 'dart:convert';
import 'package:ntpc/NetworkResponse/alldata.dart';
import 'package:http/http.dart' as http;
import 'package:ntpc/NetworkResponse/key_monitoring_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<KeyMonitoringData> fetchKeyMonitoring()async
{
  final url='http://ntpchrmapi.solarman.in/api/Main/Master_KeyPostions_Search?SearchID=&SearchTitle=&Department=&DepartmentGroup=&DepartmentSubGroup=&Project=&Grade=&Level=&PositionType=&isPublished=0&SortBy=title%20ASC&CurrentPage=1';
  SharedPreferences pf=await SharedPreferences.getInstance();
  String? token=pf.getString("token");
  var response= await http.get(Uri.parse(url),headers: {

    "Authorization": "Bearer $token"},);
  if(response.statusCode==200)
    {
      KeyMonitoringData jsonResponse =
      KeyMonitoringData.fromJson(json.decode(response.body));

      return jsonResponse;
    } else {
    print(response.statusCode);
    throw Exception('Failed to load jobs from API');
  }

}


