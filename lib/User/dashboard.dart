import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parking/User/parking_details.dart';
import 'package:parking/theme/common.dart';
import '../navigationdrawer.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<dynamic> places = [
    {"name": "Wulfrun Shopping Centre", "address": "Cleveland St"},
    {"name": "Queen Square", "address": "Wolverhampton"},
    {"name": "The Peel Centre", "address": " Stafford St"},
    {"name": "Bentley Bridge Leisure Park", "address": "Wednesfield"},
    {"name": "Oficina de arquiler", "address": "32 Temple St"},
    {"name": "Mitre Retail Park", "address": "Eagle St"},
    {"name": "Wednesfield", "address": "Wolverhampton WV11 1XR"},
    {"name": "Bilston Road Retail Park", "address": "Jenner St"},
    {"name": "Euro Mega Mall Ltd", "address": "Unit 111, Imex Trading Estate"},
    {"name": "V12", "address": "157 Cannock Rd"},
    {"name": "Clevland street Phoenix parking P&D", "address": "Cleveland St"},
    {"name": "Redevelopment Opportunity", "address": "Wolverhampton"},
    {"name": "Kajol’s Boutique", "address": "Unit 3, Park View Centre"},
  ];

  List<String> assetsPath = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpeg',
    'assets/images/7.jpg',
    'assets/images/8.jpeg',
    'assets/images/9.jpg',
    'assets/images/10.jfif',
    'assets/images/11.jpg',
    'assets/images/12.jpg',
    'assets/images/13.jfif',
  ];

  Widget VehicleTypes({
    String name = '',
    IconData? icon,
    Color? colorBack,
    Color? iconColor,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorBack,
          ),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 5,
            child: Center(
              child: Icon(
                icon,
                color: iconColor,
                size: 30,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var _screen_width = MediaQuery.of(context).size.width;
    TextEditingController locationController = TextEditingController();

    return Scaffold(
      //key: NavigationData().dashboardScaffoldKey,
      drawer: NavDrawer(),
      backgroundColor: Colors.pink.shade50/*Color(0xFFf5f5f5)*/,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text("Parking"),
          backgroundColor: Colors.purple.shade200,
          elevation: 0,
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            height: 50,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2,
                    spreadRadius: 1)
              ],
            ),
            child: TextField(
              style: TextStyle(fontSize: 13, color: Colors.grey),
              cursorColor: Colors.black,
              controller: locationController,
              decoration: InputDecoration(
                icon: Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 18,
                  height: 18,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.deepOrange,
                  ),
                ),
                hintText: "Search location",
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 0.0, top: 6.0, right: 30),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VehicleTypes(
                  name: 'Car',
                  icon: Icons.car_rental,
                  colorBack: Colors.green.shade200,
                  iconColor: Colors.green.shade700,
                ),
                VehicleTypes(
                  name: 'Bike',
                  icon: Icons.electric_bike_rounded,
                  colorBack: Colors.red.shade200,
                  iconColor: Colors.red.shade700,
                ),
                VehicleTypes(
                  name: 'Bus',
                  icon: Icons.bus_alert_sharp,
                  colorBack: Colors.pinkAccent.shade200,
                  iconColor: Colors.pinkAccent.shade700,
                ),
                VehicleTypes(
                  name: 'Van',
                  icon: Icons.bus_alert_rounded,
                  colorBack: Colors.blue.shade200,
                  iconColor: Colors.blue.shade700,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: List.generate(places.length, (index) {
              return Padding(
                padding:  EdgeInsets.only(bottom: 5),
                child: GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      height: 140,
                      margin:
                          EdgeInsets.only(left: 16, right: 16, top: 8,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // boxShadow: [
                        //   const BoxShadow(
                        //       color: Colors.black,
                        //       spreadRadius: -2.0,
                        //       blurRadius: 12.0),
                        // ],
                        color: Colors.white,
                        // gradient: LinearGradient(
                        //     begin: Alignment.topCenter,
                        //     end: Alignment.bottomCenter,
                        //     colors: [
                        //       Colors.grey.shade300,
                        //       Color(0xFFf5f5f5),
                        //       Colors.white
                        //     ]),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top:8.0,left:12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // Icon(
                                  //   Icons.local_parking,
                                  //   size: 35,
                                  //   color: Colors.purple,
                                  // ),
                                  // SizedBox(
                                  //   height: 12,
                                  // ),
                                  Text(
                                    places[index]['name'],
                                    style: TextStyle(
                                        height: 1.35,
                                        letterSpacing: 0.3,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    places[index]['address'],
                                    style: TextStyle(
                                        height: 1.35,
                                        letterSpacing: 0.3,
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Rate: £4 /hr',style: TextStyle(
                                    color: Colors.orange.shade600,fontSize: 12,
                                  ),)
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height:140,
                              child: ClipRRect(
                                child: Image.asset(
                                  assetsPath[index],
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ParkingDetails(
                                    headingName: places[index]['name'],
                                  )));
                    }),
              );
            }),
          ),
            SizedBox(
              height: 12,
            )
        ],
      ),
    );
  }
}
