import 'package:flutter/material.dart';

class keyMonitoringPage extends StatefulWidget {
  const keyMonitoringPage({Key? key}) : super(key: key);

  @override
  _keyMonitoringPageState createState() => _keyMonitoringPageState();
}

class _keyMonitoringPageState extends State<keyMonitoringPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo_white.png",height: 50,),
            Text("Delhpi")
          ],
        ),
        actions: [
          Icon(Icons.person),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.logout),
          SizedBox(
            width: 10,
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
                child: Text("Search By Fields",style: TextStyle(fontSize: 30),)),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blue
              ),
                alignment: Alignment.center,
                child: Icon(Icons.drag_handle_sharp,size: 40,)),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(

                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Key Position Monitoring",style: TextStyle(fontSize: 30),)),
                  SizedBox(
                    width: 600,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text("Key Position Projection",style: TextStyle(fontSize: 30),),
                    decoration: BoxDecoration(
                      color: Colors.green
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/pdf.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/xls.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/csv.png"),
                ),
                SizedBox(
                  width: 270,
                ),
                Text("Data Size",style: TextStyle(fontSize: 30),),
                SizedBox(
                  width: 15,
                ),
                Text("20",style: TextStyle(fontSize: 30),),
                SizedBox(
                  width: 320,
                ),
                Container(
                  height: 60.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(


                      style: TextStyle(
                          fontSize: 22.0,
                          height: 1,
                          color: Colors.black),
                      decoration: InputDecoration(
                        hintText: "Search Bar",
                        hintStyle: TextStyle(fontSize: 22.0),
                        border: InputBorder.none,

                        //border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Icon(Icons.search)

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Table(

              defaultColumnWidth: FixedColumnWidth(160.0),
              border: TableBorder.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 2
              ),
                children: [
            TableRow(

                children: [
            Column(children:[Text('View', style: TextStyle(fontSize: 20.0))]),
          Column(children:[Text('Name', style: TextStyle(fontSize: 20.0))]),
          Column(children:[Text('Type', style: TextStyle(fontSize: 20.0))]),
              Column(children:[Text('Project', style: TextStyle(fontSize: 20.0))]),
              Column(children:[Text('Department', style: TextStyle(fontSize: 20.0))]),
              Column(children:[Text('Sanctioned', style: TextStyle(fontSize: 20.0))]),
              Column(children:[Text('Positioned', style: TextStyle(fontSize: 20.0))]),
              Column(children:[Text('Vaccant', style: TextStyle(fontSize: 20.0))]),

          ]),
    ]),

          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child:
             Image.asset("assets/graph.png"),
      ),
    );
  }
}
