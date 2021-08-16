import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ntpc/keymonitoringpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //
      //   automaticallyImplyLeading: false,
      //   title: Image.asset("assets/logo_white.png",height: 50,),
      // ),
      body: Column(

        children: [

          Image.asset("assets/toolbar_back_2.png",width: MediaQuery.of(context).size.width,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(

                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset("assets/key.jpg"),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>keyMonitoringPage()));
                      },
                    ),

                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: Container(
                        height: 150,
                          width: 150,
                        child: Image.asset("assets/spv.png"),
                      ),
                    )
                  ],
                )
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          height: 150,
                          width: 150,
                          child: Image.asset("assets/emarket.png"),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Container(
                          height: 150,
                          width: 150,
                          child: Image.asset("assets/open.png"),
                        ),
                      )
                    ],
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
