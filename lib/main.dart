import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  bool _isObscure = true;
  bool isChecked= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height:250.0,
            decoration: BoxDecoration(
              color: Color(0xff083663),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35.0),
                  bottomRight: Radius.circular(35.0)),
            ),
            child:Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:22.0,top:20.0),
                      child: Text("Welcome Back",style:GoogleFonts.lora(
                        textStyle: TextStyle(color: Colors.white,fontSize: 32.0,fontStyle: FontStyle. italic)
                      )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:22.0,top:8.0),
                      child: Text("Sign In to Continue",style:GoogleFonts.roboto(
                          textStyle: TextStyle(color: Colors.white,fontSize: 24.0)
                      )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:12.0),
                  child: Column(
                    children: [
                      Image.asset("logo_white.png",width:200.0,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:270.0),
            child: Container(
              child:Column(
                children: [
                  Container(
                    width:140.0,
                    height:60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Text("Delphi",style:GoogleFonts.lora(
                          textStyle: TextStyle(color: Color(0xff083663),fontSize:38.0,fontStyle: FontStyle. italic,fontWeight: FontWeight.bold)
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right:20.0,top:30.0),
                    child: Container(
                      height:60.0,
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
                              color: Colors.black
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText:"EMPLOYEE CODE",
                            hintStyle:TextStyle(fontSize:22.0),
                            border: InputBorder.none,
                           suffixIcon:Padding(
                             padding: const EdgeInsets.only(right:10.0),
                             child: Icon(Icons.person,color:Colors.grey),
                           ),
                            //border: UnderlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height:3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right:20.0,top:30.0),
                    child: Container(
                      height:60.0,
                      width: 600.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextFormField(
                          obscureText: _isObscure,//initially true
                          style: TextStyle(
                              fontSize: 22.0,
                              height: 1.2,
                              color: Colors.black
                          ),
                          decoration: InputDecoration(
                            hintText:"PASSWORD",
                            hintStyle:TextStyle(fontSize:22.0),
                            border: InputBorder.none,
                            suffixIcon:Padding(
                              padding: const EdgeInsets.only(right:10.0),
                              child: Icon(Icons.lock,color:Colors.grey,
                              ),

                            ),
                            //border: UnderlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height:5.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:22.0,top:5.0),
                        child: Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.green,
                          value: isChecked,//intially false
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:3.0),
                        child: Text("Remember Me",style:TextStyle(fontSize: 15.0)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:30.0,top:5.0),
                    child: Row(
                      children: [
                        Text("Don't Remember Your Password?",style:TextStyle(fontSize: 15.0,color: Colors.red)),
                        Text("Click Here",style:TextStyle(fontSize: 15.0,color: Colors.red)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height:20.0,
                  ),
                  InkWell(
                    onTap: (){
                    //  Navigator.push(context,MaterialPageRoute(builder: (context)=>new Lo()));
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
    );
  }
}
