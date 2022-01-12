import 'package:flutter/material.dart';

class AboutUS extends StatefulWidget{
  const AboutUS({Key? key}) : super(key: key);

  @override
  _AboutUSState createState() => _AboutUSState();
}

class _AboutUSState extends State<AboutUS>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text("About Us"),
          backgroundColor: Colors.purpleAccent,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 30,),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.transparent,
              child: Image(
                fit: BoxFit.fill,
                image: ExactAssetImage("assets/images/parking.png"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text("Parking App", textAlign: TextAlign.center, style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,letterSpacing: 0.3),),
                ),
                SizedBox(height: 10,),
                Text(
                  "The Wulfrun Centre and its car parking facilities are signposted off the Wolverhampton Ring Road. Parking is provided via a NCP multi-storey car park above the Wulfrun Centre providing 570 spaces linked directly into the scheme. There are specially designated parking bays for guests with special needs located throughout the car park. Latest parking tariff is available here to download. For more information visit NCP.",
                  textAlign: TextAlign.left, style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,letterSpacing: 0.3, color: Colors.grey[700],height: 1.3),),
                // SizedBox(height: 30,),
                // Text("Version: 1.0", textAlign: TextAlign.left, style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,letterSpacing: 0.3),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
