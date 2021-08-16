import 'dart:convert';

import 'package:countdown_flutter/countdown_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:ntpc/NetworkResponse/loginresponse.dart';

import 'package:ntpc/homepage.dart';
import 'package:ntpc/networkcall/Alldatacall.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'networkcall/KeyMonitoringData.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future<loginresponse> _fetchDetailsData() async {
    SharedPreferences pf = await SharedPreferences.getInstance();

    String id = employecodecontroller.text;
    String password = employeepasswordcontroller.text;
    final url = 'http://ntpchrmapi.solarman.in/api/Main/User_Login';
    var data = ({
      'LoginId': id,
      'LoginPassword': password,
    });

    var response = await http.post(Uri.parse(url), body: data);

    if (response.statusCode == 200) {
      print(response.body);
      loginresponse jsonResponse =
          loginresponse.fromJson(json.decode(response.body));

      pf.setString("token", jsonResponse.token);


      return jsonResponse;
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }

  TextEditingController employecodecontroller = TextEditingController();
  TextEditingController employeepasswordcontroller = TextEditingController();
  TextEditingController otpcontroller = TextEditingController();

  bool _isObscure = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                color: Color(0xff03284c),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0, top: 20.0),
                        child: Text("Welcome Back",
                            style: TextStyle(
                              fontFamily: 'ubuntu',
                              color: Colors.white,
                              fontSize: 32.0,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0, top: 8.0),
                        child: Text("Sign In to Continue",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 24.0))),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/logo_white.png",
                          width: 200.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270.0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: 140.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text("Delphi",
                            style: GoogleFonts.lora(
                                textStyle: TextStyle(
                                    color: Color(0xff083663),
                                    fontSize: 38.0,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 30.0),
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        height: 60.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: TextFormField(
                              style: TextStyle(
                                  fontSize: 22.0, color: Colors.black),
                              controller: employecodecontroller,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "EMPLOYEE CODE",
                                hintStyle: TextStyle(fontSize: 20.0),
                                border: InputBorder.none,
                                suffixIcon:
                                    Icon(Icons.person, color: Colors.grey),
                                //border: UnderlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 30.0),
                      child: Container(
                        height: 60.0,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: TextFormField(
                              controller: employeepasswordcontroller,
                              obscureText: _isObscure, //initially true
                              style: TextStyle(
                                  fontSize: 22.0, color: Colors.black),
                              decoration: InputDecoration(
                                hintText: "PASSWORD",
                                hintStyle: TextStyle(fontSize: 20.0),
                                border: InputBorder.none,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.grey,
                                  ),
                                ),
                                //border: UnderlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, top: 5.0),
                            child: Checkbox(
                              checkColor: Colors.white,
                              activeColor: Color(0xff016105),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text("Remember Me",
                              style: TextStyle(fontSize: 15.0)),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 46),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 5.0),
                        child: Row(
                          children: [
                            Text("Don't Remember Your Password?",
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.red)),
                            Text("Click Here",
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.red)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () async {
                        await _fetchDetailsData();

                        showModalBottomSheet(
                            context: context,
                            builder: (_) => BottomSheet(
                                onClosing: () => null,
                                builder: (_) => Container(
                                      height: 300,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                              height: 42,
                                              width: 120,
                                              alignment: Alignment.center,
                                              margin:
                                                  EdgeInsets.only(left: 20.0),
                                              decoration: BoxDecoration(
                                                  color: Color(0xff03284c),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0)),
                                              child: Text(
                                                "Verify User",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 15.0, right: 15.0),
                                            height: 60.0,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(21.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5.0),
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(left: 20.0),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 22.0,
                                                      color: Colors.black),
                                                  controller: otpcontroller,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration: InputDecoration(
                                                    hintText: "OTP",
                                                    hintStyle: TextStyle(
                                                        fontSize: 22.0),
                                                    border: InputBorder.none,
                                                    suffixIcon: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 10.0),
                                                        child: Image.asset(
                                                            "assets/otp.png")),
                                                    //border: UnderlineInputBorder(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Countdown(
                                            duration: Duration(minutes: 10),
                                            onFinish: () {
                                              print('finished!');
                                            },
                                            builder: (BuildContext ctx,
                                                Duration remaining) {
                                              return Text(
                                                  'OTP Valid For:${remaining.inMinutes}:${remaining.inSeconds}');
                                            },
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              fetchKeyMonitoring();
                                              fetchalldata();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          HomePage()));
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 20.0, right: 20.0),
                                              height: 60.0,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15.0),
                                                child: Text(
                                                  "Verify Login".toUpperCase(),
                                                  style: TextStyle(
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 25, right: 25),
                        height: 70.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          margin: EdgeInsets.only(top: 23),
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.black,
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 30,
          child: Text(
            "Copyright © 2021 NTPC Ltd. All rights reserved.",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
