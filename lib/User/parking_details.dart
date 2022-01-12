import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:parking/User/payment.dart';

class ParkingDetails extends StatefulWidget {
  String headingName;

  ParkingDetails({Key? key, this.headingName = 'Mani Square'})
      : super(key: key);

  @override
  _ParkingDetailsState createState() => _ParkingDetailsState();
}

class _ParkingDetailsState extends State<ParkingDetails> {
  List<bool> isBookedListA = [
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> isBookedListB = [
    true,
    false,
    true,
    false,
    true,
    true,
    false,
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    true,
  ];
  List<bool> isBookedListC = [
    false,
    true,
    false,
    false,
    true,
    true,
    false,
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    true,
    false,
  ];
  List<bool> isBookedListD = [
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    false,
    false,
    false,
    false,
    true,
    false,
    true,
    false,
    false,
    true,
  ];

  List<String> floorNames = [
    '1st floor',
    '2nd floor',
    '3rd floor',
    '4th floor',
    '5th floor',
  ];
  List<bool> selectedFloors = [false, true, false, false, false];

  Widget parkingLot({
    String parkingPlace = '',
    bool isBooked = false,
  }) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        color: isBooked ? Colors.red.shade200 : Colors.green.shade200,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.electric_car_outlined,
                color: isBooked
                    ? Colors.pinkAccent.shade700
                    : Colors.green.shade700,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                parkingPlace,
                style: TextStyle(
                  color: isBooked
                      ? Colors.pinkAccent.shade700
                      : Colors.green.shade700,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget floorNumber({
    String floorNum = '',
    bool isSeleted = false,
  }) {
    return Container(
      height: 45,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.transparent,
      ),
      child: Card(
        elevation: 3,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            floorNum,
            style: TextStyle(
              color:
                  isSeleted ? Colors.purpleAccent : Colors.black,
              fontSize: 16,
              fontWeight: isSeleted ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          leading: InkWell(
            child: Icon(
              Icons.chevron_left,
              color: Colors.purple.shade700,
              size: 35,
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.purple.shade100,
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: Text(widget.headingName,
              style: TextStyle(
                color: Colors.purpleAccent.shade700,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: GestureDetector(
                      child: floorNumber(
                        floorNum: floorNames[index],
                        isSeleted: selectedFloors[index],
                      ),
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < selectedFloors.length; i++) {
                            selectedFloors[i] = false;
                          }
                          selectedFloors[index] = true;
                        });
                      },
                    ),
                  );
                },
                itemCount: floorNames.length,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: VerticalDivider(
                                color: Colors.purple[400],
                                width: 1,
                              ),
                            ),
                            Text(
                              'A',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 16,
                              ),
                            ),
                            Expanded(
                              child: VerticalDivider(
                                color: Colors.purple[400],
                                width: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: GridView.builder(
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.all(0),
                            itemCount: isBookedListA.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 3,
                              crossAxisCount: 1,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                if (isBookedListA[index]) {
                                  Fluttertoast.showToast(
                                      msg: 'This Slot is already booked');
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PaymentPage(),
                                        maintainState: false),
                                  );
                                }
                              },
                              child: parkingLot(
                                parkingPlace: 'Maddox',
                                isBooked: isBookedListA[index],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Text('Exit',style: TextStyle(
                              color: Colors.purple.shade400,fontSize: 16,
                            ),),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: VerticalDivider(
                                color: Colors.purple[400],
                                width: 1,
                              ),
                            ),
                            Text(
                              'B',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 16,
                              ),
                            ),
                            Expanded(
                              child: VerticalDivider(
                                color: Colors.purple[400],
                                width: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: GridView.builder(
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.all(0),
                            itemCount: isBookedListB.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 3,
                              crossAxisCount: 1,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                if (isBookedListB[index]) {
                                  Fluttertoast.showToast(
                                      msg: 'This Slot is already booked');
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PaymentPage(),
                                        maintainState: false),
                                  );
                                }
                              },
                              child: parkingLot(
                                parkingPlace: 'Maddox',
                                isBooked: isBookedListB[index],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Text('Exit',style: TextStyle(
                              color: Colors.purple.shade400,fontSize: 16,
                            ),),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: VerticalDivider(
                                color: Colors.purple[400],
                                width: 1,
                              ),
                            ),
                            Text(
                              'C',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 16,
                              ),
                            ),
                            Expanded(
                              child: VerticalDivider(
                                color: Colors.purple[400],
                                width: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Text('Exit',style: TextStyle(
                              color: Colors.purple.shade400,fontSize: 16,
                            ),),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: GridView.builder(
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.all(0),
                            itemCount: isBookedListB.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 3,
                              crossAxisCount: 1,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                if (isBookedListB[index]) {
                                  Fluttertoast.showToast(
                                      msg: 'This Slot is already booked');
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PaymentPage(),
                                        maintainState: false),
                                  );
                                }
                              },
                              child: parkingLot(
                                parkingPlace: 'Maddox',
                                isBooked: isBookedListB[index],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: VerticalDivider(
                                color: Colors.purple[400],
                                width: 1,
                              ),
                            ),
                            Text(
                              'D',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 16,
                              ),
                            ),
                            Expanded(
                              child: VerticalDivider(
                                color: Colors.purple[400],
                                width: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: GridView.builder(
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.all(0),
                            itemCount: isBookedListC.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 3,
                              crossAxisCount: 1,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                if (isBookedListC[index]) {
                                  Fluttertoast.showToast(
                                      msg: 'This Slot is already booked');
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PaymentPage(),
                                        maintainState: false),
                                  );
                                }
                              },
                              child: parkingLot(
                                parkingPlace: 'Maddox',
                                isBooked: isBookedListC[index],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Text('Exit',style: TextStyle(
                              color: Colors.purple.shade400,fontSize: 16,
                            ),),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: VerticalDivider(
                                color: Colors.purple[400],
                                width: 1,
                              ),
                            ),
                            Text(
                              'E',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 16,
                              ),
                            ),
                            Expanded(
                              child: VerticalDivider(
                                color: Colors.purple[400],
                                width: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Text('Exit',style: TextStyle(
                              color: Colors.purple.shade400,fontSize: 16,
                            ),),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                            Icon(Icons.arrow_upward_sharp,color: Colors.purple,),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: GridView.builder(
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.all(0),
                            itemCount: isBookedListD.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 3,
                              crossAxisCount: 1,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                if (isBookedListD[index]) {
                                  Fluttertoast.showToast(
                                      msg: 'This Slot is already booked');
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PaymentPage(),
                                        maintainState: false),
                                  );
                                }
                              },
                              child: parkingLot(
                                parkingPlace: 'Maddox',
                                isBooked: isBookedListD[index],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
              ),
            ),
            // Container(
            //   height: 220,
            //   child: GridView.builder(
            //     physics: BouncingScrollPhysics(),
            //     padding: EdgeInsets.all(0),
            //     itemCount: isBookedListA.length,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       childAspectRatio: 3,
            //       crossAxisCount: 1,
            //       crossAxisSpacing: 10,
            //       mainAxisSpacing: 10,
            //     ),
            //     itemBuilder: (context, index) => GestureDetector(
            //       onTap: () {
            //         if (isBookedListA[index]) {
            //           Fluttertoast.showToast(
            //               msg: 'This Slot is already booked');
            //         } else {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => PaymentPage(),
            //                 maintainState: false),
            //           );
            //         }
            //       },
            //       child: parkingLot(
            //         parkingPlace: 'Maddox',
            //         isBooked: isBookedListA[index],
            //       ),
            //     ),
            //   ),
            // ),

            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Expanded(
            //       child: Divider(
            //         color: Colors.grey[400],
            //         height: 1,
            //       ),
            //     ),
            //     Text(
            //       'B',
            //       style: TextStyle(
            //         color: Colors.redAccent,
            //         fontSize: 16,
            //       ),
            //     ),
            //     Expanded(
            //       child: Divider(
            //         color: Colors.grey[400],
            //         height: 1,
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // Container(
            //   height: 200,
            //   child: GridView.builder(
            //     physics: BouncingScrollPhysics(),
            //     padding: EdgeInsets.all(0),
            //     itemCount: isBookedListB.length,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       childAspectRatio: 3,
            //       crossAxisCount: 1,
            //       crossAxisSpacing: 10,
            //       mainAxisSpacing: 10,
            //     ),
            //     itemBuilder: (context, index) => GestureDetector(
            //       onTap: () {
            //         if (isBookedListB[index]) {
            //           Fluttertoast.showToast(
            //               msg: 'This Slot is already booked');
            //         } else {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => PaymentPage(),
            //                 maintainState: false),
            //           );
            //         }
            //       },
            //       child: parkingLot(
            //         parkingPlace: 'Maddox',
            //         isBooked: isBookedListB[index],
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Expanded(
            //       child: Divider(
            //         color: Colors.grey[400],
            //         height: 1,
            //       ),
            //     ),
            //     Text(
            //       'C',
            //       style: TextStyle(
            //         color: Colors.redAccent,
            //         fontSize: 16,
            //       ),
            //     ),
            //     Expanded(
            //       child: Divider(
            //         color: Colors.grey[400],
            //         height: 1,
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            //
            // SizedBox(
            //   height: 20,
            // ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Expanded(
            //       child: Divider(
            //         color: Colors.grey[400],
            //         height: 1,
            //       ),
            //     ),
            //     Text(
            //       'D',
            //       style: TextStyle(
            //         color: Colors.redAccent,
            //         fontSize: 16,
            //       ),
            //     ),
            //     Expanded(
            //       child: Divider(
            //         color: Colors.grey[400],
            //         height: 1,
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // Container(
            //   width: 200,
            //   child: GridView.builder(
            //     physics: BouncingScrollPhysics(),
            //     padding: EdgeInsets.all(0),
            //     itemCount: isBookedListD.length,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       childAspectRatio: 3,
            //       crossAxisCount: 1,
            //       crossAxisSpacing: 10,
            //       mainAxisSpacing: 10,
            //     ),
            //     itemBuilder: (context, index) => GestureDetector(
            //       onTap: () {
            //         if (isBookedListD[index]) {
            //           Fluttertoast.showToast(
            //               msg: 'This Slot is already booked');
            //         } else {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => PaymentPage(),
            //                 maintainState: false),
            //           );
            //         }
            //       },
            //       child: parkingLot(
            //         parkingPlace: 'Maddox',
            //         isBooked: isBookedListD[index],
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ),
    );
  }
}
