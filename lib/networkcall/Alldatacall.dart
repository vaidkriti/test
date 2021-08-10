import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ntpc/NetworkResponse/alldata.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';



Future<Data> fetchalldata() async{
  final url = 'http://ntpchrmapi.solarman.in/api/Main/adm_Masters_All';
  SharedPreferences pf = await SharedPreferences.getInstance();
  String? token = pf.getString("token");


  var response = await http.post(Uri.parse(url),headers: { 'Content-type': 'application/json',
    'Accept': 'application/json',
    "Authorization": "Bearer $token"},);
  print(response.headers);
  print(response);
  print(token);
  print(url);
  if (response.statusCode == 200) {
    print(response.body);
    Data jsonResponse =
    Data.fromJson(json.decode(response.body));
    return jsonResponse;
  } else {
    throw Exception('Failed to load jobs from API');
  }
}