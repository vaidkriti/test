import 'package:flutter/material.dart';

import 'NetworkResponse/key_monitoring_data.dart';
import 'networkcall/KeyMonitoringData.dart';

class keyMonitoringPage extends StatefulWidget {
  const keyMonitoringPage({Key? key}) : super(key: key);

  @override
  _keyMonitoringPageState createState() => _keyMonitoringPageState();
}

class _keyMonitoringPageState extends State<keyMonitoringPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Search By Fields",
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.blue),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.drag_handle_sharp,
                      size: 40,
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
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
                          child: Text(
                            "Key Position Monitoring",
                            style: TextStyle(fontSize: 30),
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/4,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Key Position Projection",
                          style: TextStyle(fontSize: 30),
                        ),
                        decoration: BoxDecoration(color: Colors.green),
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
                      width: 20,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/xls.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/csv.png"),
                    ),
                    SizedBox(
                      width: 270,
                    ),
                    Text(
                      "Data Size",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "20",
                      style: TextStyle(fontSize: 30),
                    ),
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
                              fontSize: 22.0, height: 1, color: Colors.black),
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
                // FutureBuilder<KeyMonitoringData>(
                //   future: fetchKeyMonitoring(),
                //   builder: (context, snapshot) {
                //     KeyMonitoringData? jsonresponse = snapshot.data;
                //     if (snapshot.hasData) {
                //       return SingleChildScrollView(
                //         scrollDirection: Axis.horizontal,
                //         child: Column(
                //           children: [
                //             DataTable(
                //
                //                 columnSpacing:
                //                     MediaQuery.of(context).size.width / 10,
                //                 headingRowColor:   MaterialStateColor.resolveWith((states) => Colors.blue),
                //                 dividerThickness: 2.0,
                //                 decoration: BoxDecoration(
                //
                //                   border: Border.all(color: Colors.black)
                //                 ),
                //                 columns: [
                //                   DataColumn(label: Text("View")),
                //                   DataColumn(label: Text("Name")),
                //                   DataColumn(label: Text("Type")),
                //                   DataColumn(label: Text("Project")),
                //                   DataColumn(label: Text("Department")),
                //                   DataColumn(label: Text("Sanctioned")),
                //                   DataColumn(label: Text("Positioned")),
                //                   DataColumn(label: Text("Vacant")),
                //                 ],
                //                 rows: jsonresponse!.data!
                //                     .map(
                //                       (index) => DataRow(cells: [
                //                         DataCell(Container(
                //
                //                           child: Text("View"),
                //
                //                         )),
                //                         DataCell(Container(
                //                           child: Text(index.title.toString()),
                //                         )),
                //                         DataCell(Container(
                //                           child:
                //                               Text(index.positionType.toString()),
                //                         )),
                //                         DataCell(Container(
                //                           child: Text(index.project.toString()),
                //                         )),
                //                         DataCell(Container(
                //                           child:
                //                               Text(index.departmentName.toString()),
                //                         )),
                //                         DataCell(Container(
                //                           child: Text(
                //                               index.totalSanctioned.toString()),
                //                         )),
                //                         DataCell(Container(
                //                           child: Text(
                //                               index.totalPositioned.toString()),
                //                         )),
                //                         DataCell(Container(
                //                           child: Text(jsonresponse.totalVacantOneM.toString()),
                //                         )),
                //                       ]),
                //                     )
                //                     .toList())
                //           ],
                //         ),
                //       );
                //     } else {
                //       return Center(child: CircularProgressIndicator());
                //     }
                //   },
                // )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset("assets/graph.png"),
      ),
    );
  }
}
