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
            // Stack(
            //   children: [
            //     Card(child: Image.asset("assets/toolbar_back_2.png",width: MediaQuery.of(context).size.width)),
            //     Positioned(
            //       top: 20,
            //       child: Container(
            //         height: 50,
            //         alignment: Alignment.center,
            //         child: Image.asset("assets/logo_white.png",width: MediaQuery.of(context).size.width,),),
            //     ),
            //     Positioned(
            //       top: 30,
            //       right: 100,
            //       child: Container(
            //           height: 40,
            //           child: Image.asset("assets/profile_one.png")) ,
            //     ),
            //     Positioned(
            //       top: 30,
            //       right: 40,
            //       child: Container(
            //           height: 40,
            //           child: Image.asset("assets/change.png")) ,
            //     )
            //
            //   ],
            // ),
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
                      style: TextStyle(fontSize: 25),
                    )),
                SizedBox(
                  height: 20,
                ),
                 InkWell(
                   onTap:(){
                     Card(
                       child: Container(
                         height: 500.0,
                         color: Colors.green,
                       ),
                     );
                   },
                   child: Container(
                       color:Colors.green,
                       child: Image.asset("assets/ic_menu.png",height:40.0,color: Colors.white,)),
                 ),
                 SizedBox(
                   height: 20,
                 ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10.0),
                  child: Card(
                    child:Container(
                      width: MediaQuery.of(context).size.width,
                      height:35.0,
                     decoration: BoxDecoration(
                       color: Colors.indigo,
                       borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0),topRight:Radius.circular(12.0) ),
                     ),
                      child:Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:19.0),
                            child: Text("Key Position Monitoring",style: TextStyle(color: Colors.white,fontSize: 16.0),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:370.0,right:7.0),
                            child: Container(

                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(6.0) ),

                                child: Padding(
                                  padding: const EdgeInsets.only(left:3.0,top: 3.0,bottom: 3.0,right: 3.0),
                                  child: Text("Key Position Projection",style: TextStyle(color: Colors.white,fontSize:16.0),),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
               Padding(
                 padding: const EdgeInsets.only(left:10.0,right: 10.0),
                 child: Card(
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left:15.0,top:10.0,bottom: 10.0),
                         child: Image.asset("assets/pdf.png",height:50.0,width: 50.0,),
                       ),

                       Padding(
                         padding: const EdgeInsets.only(left:10.0,top:10.0,bottom: 10.0),
                         child: Image.asset("assets/excel.png",height:50.0,width: 50.0,),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left:10.0,top:10.0,bottom: 10.0),
                         child: Image.asset("assets/csv.png",height:50.0,width: 50.0,),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text("Recode On Page",style: TextStyle(fontSize:25.0),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left:18.0),
                         child:Card(
                           child: Container(
                             height: 50.0,
                               width:80.0,
                             decoration: BoxDecoration(

                                 borderRadius: BorderRadius.circular(7.0)),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left:25.0),
                         child:Card(
                           child: Container(
                             height: 50.0,
                             width:170.0,
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(7.0),
                                border: Border.all(
                                   color: Colors.black,// set border color
                                   width: 1.0),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.only(left:8.0,bottom: 10.0,top: 12.0),
                               child: Text("SearchBar",style: TextStyle(fontSize: 24.0,color: Colors.grey),),
                             ),
                           ),
                         ),
                       ),
                      Icon(Icons.search,size:38.0,),
                     ],
                   )
                 ),
               ),
              //   FutureBuilder<KeyMonitoringData>(
              //     future: fetchKeyMonitoring(),
              //     builder: (context, snapshot) {
              //       KeyMonitoringData? jsonresponse = snapshot.data;
              //       if (snapshot.hasData) {
              //         return SingleChildScrollView(
              //           scrollDirection: Axis.horizontal,
              //           child: Column(
              //             children: [
              //               DataTable(
              //                   columnSpacing:
              //                       MediaQuery.of(context).size.width / 10,
              //                   headingRowColor:   MaterialStateColor.resolveWith((states) => Colors.blue),
              //                   dividerThickness: 2.0,
              //                   decoration: BoxDecoration(
              //
              //                     border: Border.all(color: Colors.black)
              //                   ),
              //                   columns: [
              //                     DataColumn(label: Text("View")),
              //                     DataColumn(label: Text("Name")),
              //                     DataColumn(label: Text("Type")),
              //                     DataColumn(label: Text("Project")),
              //                     DataColumn(label: Text("Department")),
              //                     DataColumn(label: Text("Sanctioned")),
              //                     DataColumn(label: Text("Positioned")),
              //                     DataColumn(label: Text("Vacant")),
              //                   ],
              //                   rows: jsonresponse!.data!
              //                       .map(
              //                         (index) => DataRow(cells: [
              //                           DataCell(Container(
              //
              //                             child: Text("View"),
              //
              //                           )),
              //                           DataCell(Container(
              //                             child: Text(index.title.toString()),
              //                           )),
              //                           DataCell(Container(
              //                             child:
              //                                 Text(index.positionType.toString()),
              //                           )),
              //                           DataCell(Container(
              //                             child: Text(index.project.toString()),
              //                           )),
              //                           DataCell(Container(
              //                             child:
              //                                 Text(index.departmentName.toString()),
              //                           )),
              //                           DataCell(Container(
              //                             child: Text(
              //                                 index.totalSanctioned.toString()),
              //                           )),
              //                           DataCell(Container(
              //                             child: Text(
              //                                 index.totalPositioned.toString()),
              //                           )),
              //                           DataCell(Container(
              //                             child: Text(jsonresponse.totalVacantOneM.toString()),
              //                           )),
              //                         ]),
              //                       )
              //                       .toList())
              //             ],
              //           ),
              //         );
              //       } else {
              //         return Center(child: CircularProgressIndicator());
              //       }
              //     },
              //   )
              // ],
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
