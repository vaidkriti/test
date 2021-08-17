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

           Stack(
             children: [
               Image.asset("assets/toolbar_back_2.png",width: MediaQuery.of(context).size.width,),
               Positioned(
                 top: 20,
                 child: Container(
                   height: 50,
                     alignment: Alignment.center,
                     child: Image.asset("assets/logo_white.png",width: MediaQuery.of(context).size.width,),),
               ),
               Positioned(
                 top: 30,
                 right: 100,
                 child: Container(
                    height: 40,
                     child: Image.asset("assets/profile_one.png")) ,
               ),
               Positioned(
                 top: 30,
                 right: 40,
                 child: Container(
                     height: 40,
                     child: Image.asset("assets/change.png")) ,
               )

             ],
           ),
           Divider(
             thickness:1.0,
             color: Colors.black,
           ),
          Divider(
            thickness:1.0,
            color: Colors.black,
          ),
           Container(
             margin: EdgeInsets.only(left: 12.0),
               alignment: Alignment.centerLeft,
               child: Text("Modules",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 40.0,color:Colors.grey),)),
          Divider(
            thickness:1.0,
            color: Colors.black,
          ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SizedBox(
                 height: MediaQuery.of(context).size.height/10,
               ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(

                      child: Container(
                        height: 170,
                        width: 170,
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
                        height: 170,
                        width: 170,
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
                          height: 170,
                          width: 170,
                          child: Image.asset("assets/emarket.png"),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Container(
                          height: 170,
                          width: 170,
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
