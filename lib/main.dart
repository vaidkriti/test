import 'dart:convert';

import 'package:countdown_flutter/countdown_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:ntpc/NetworkResponse/loginresponse.dart';
import 'package:ntpc/NetworkResponse/alldata.dart';
import 'package:ntpc/homepage.dart';
import 'package:ntpc/networkcall/Alldatacall.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    print(url);
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
                color: Color(0xff083663),
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
                            style: GoogleFonts.lora(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32.0,
                                    fontStyle: FontStyle.italic))),
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
                        height: 60.0,
                        width: 600.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 22.0,
                                height: 1.2,
                                color: Colors.black),
                            controller: employecodecontroller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "EMPLOYEE CODE",
                              hintStyle: TextStyle(fontSize: 22.0),
                              border: InputBorder.none,
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Icon(Icons.person, color: Colors.grey),
                              ),
                              //border: UnderlineInputBorder(),
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
                        width: 600.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: TextFormField(
                            controller: employeepasswordcontroller,
                            obscureText: _isObscure, //initially true
                            style: TextStyle(
                                fontSize: 22.0,
                                height: 1.2,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintText: "PASSWORD",
                              hintStyle: TextStyle(fontSize: 22.0),
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
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, top: 5.0),
                          child: Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.green,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text("Remember Me",
                              style: TextStyle(fontSize: 15.0)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 5.0),
                      child: Row(
                        children: [
                          Text("Don't Remember Your Password?",
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.red)),
                          Text("Click Here",
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.red)),
                        ],
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
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 42,
                                            width: 100,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(left: 20.0),
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(24.0)
                                                  
                                            ),
                                            
                                            child: Text("Verify User")),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Container(
                                          height: 60.0,
                                          width: 520.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(35.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(18.0),
                                            child: TextFormField(
                                              style: TextStyle(
                                                  fontSize: 22.0,
                                                  height: 1.2,
                                                  color: Colors.black),
                                              controller: otpcontroller,
                                              keyboardType: TextInputType.number,
                                              decoration: InputDecoration(
                                                hintText: "Enter Your OTP",
                                                hintStyle: TextStyle(fontSize: 22.0),
                                                border: InputBorder.none,
                                                suffixIcon: Padding(
                                                  padding: const EdgeInsets.only(right: 10.0),
                                                  child: Icon(Icons.lock_clock, color: Colors.yellow),
                                                ),
                                                //border: UnderlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Countdown(
                                          duration: Duration(seconds: 600),
                                          onFinish: () {
                                            print('finished!');
                                          },
                                          builder: (BuildContext ctx, Duration remaining) {
                                            return Text('Time Remaining to Verify the OTP:${remaining.inMinutes}:${remaining.inSeconds}');
                                          },
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        InkWell(
                                          onTap: (){
                                            fetchalldata();
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                          },
                                          child: Container(
                                            height: 60.0,
                                            width: 350.0,
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.circular(20.0)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 15.0),
                                              child: Text(
                                                "Verify User",
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.w500,
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
                        height: 60.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13.0),
                          child: Text(
                            "SIGN IN ",
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
    );
  }
}
