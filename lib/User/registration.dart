import 'package:flutter/material.dart';
import 'package:parking/theme/bottom_bar.dart';
import 'package:parking/user/login.dart';
import '../theme/top_bar.dart';

class RegistrationPage extends StatefulWidget{

  @override
  _RegistrationPageState createState() => _RegistrationPageState();

}

class _RegistrationPageState extends State<RegistrationPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        backgroundColor: Colors.purple.shade50,
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(40),
        //   child: AppBar(
        //     backgroundColor: Colors.green[200],
        //     elevation: 0,
        //     centerTitle: true,
        //     title: Text("Create Account", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
        //   ),
        // ),
        body:  Column(
          //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  // margin: EdgeInsets.fromLTRB(0,50,0,10),
                  height: 200,
                  width: 200,
                  color: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      fit: BoxFit.fill,
                      image: ExactAssetImage("assets/images/parking.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      )),
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text('Register',style: TextStyle(
                          color: Colors.purple.shade700,fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        cursorColor: Colors.black,
                        //controller: _user_email,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            borderSide: BorderSide(color: Colors.red.shade200, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            borderSide: BorderSide(color: Colors.red.shade200),
                          ),
                          //labelText: 'Email',
                          hintText: 'User Name',
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                          prefixIcon: Container(
                              margin: const EdgeInsets.only(left: 20, right: 15),
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                              )
                          ),
                        ),
                        autofocus: false,
//                                onChanged: (text) {
//                                  setState(() {
//                                    email = text;
//                                    //you can access nameController in its scope to get
//                                    // the value of text entered as shown below
//                                    //fullName = nameController.text;
//                                  });
//                                },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        //controller: _user_password,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            borderSide: BorderSide(color: Colors.red.shade200, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            borderSide: BorderSide(color: Colors.red.shade200),
                          ),
                          //labelText: 'Password',
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Colors.grey[500]
                          ),
                          prefixIcon: Container(
                              margin: const EdgeInsets.only(left: 20, right: 15),
                              child: Icon(
                                Icons.vpn_key,
                                color: Colors.black,
                              )
                          ),
                        ),
                        autofocus: false,
                        obscureText: true,
                        onChanged: (text) {
                          setState(() {
                            //password = text;
                            //you can access nameController in its scope to get
                            // the value of text entered as shown below
                            //fullName = nameController.text;
                          });
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 9, right: 9, top: 3),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Text("Password should be combination of numbers & letters.",
                          style: TextStyle(color: Colors.red[900], fontSize: 11, letterSpacing: 0.3),),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        cursorColor: Colors.black,
                        //controller: _user_email,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            borderSide: BorderSide(color: Colors.red.shade200, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            borderSide: BorderSide(color: Colors.red.shade200),
                          ),
                          //labelText: 'Email',
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                          prefixIcon: Container(
                              margin: const EdgeInsets.only(left: 20, right: 15),
                              child: Icon(
                                Icons.email,
                                color: Colors.black,
                              )
                          ),
                        ),
                        autofocus: false,
//                                onChanged: (text) {
//                                  setState(() {
//                                    email = text;
//                                    //you can access nameController in its scope to get
//                                    // the value of text entered as shown below
//                                    //fullName = nameController.text;
//                                  });
//                                },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        cursorColor: Colors.black,
                        //controller: _user_email,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            borderSide: BorderSide(color: Colors.red.shade200, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            borderSide: BorderSide(color: Colors.red.shade200),
                          ),
                          //labelText: 'Email',
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                          prefixIcon: Container(
                              margin: const EdgeInsets.only(left: 20, right: 15),
                              child: Icon(
                                Icons.phone,
                                color: Colors.black,
                              )
                          ),
                        ),
                        autofocus: false,
//                                onChanged: (text) {
//                                  setState(() {
//                                    email = text;
//                                    //you can access nameController in its scope to get
//                                    // the value of text entered as shown below
//                                    //fullName = nameController.text;
//                                  });
//                                },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        //margin: EdgeInsets.only(top: 50),
                        width: double.maxFinite,
                        height: 60,
                        child: RaisedButton(
                          padding: const EdgeInsets.all(8.0),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          textColor: Colors.white,
                          color: Colors.deepOrange[400],
                          onPressed: (){},
                          child: new Text("Register",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 20
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          child: Text(
                            "Back to Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purpleAccent,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop( context, MaterialPageRoute( builder: (context) => new LoginPage()));
                          },
                        ),
                      ),
                      SizedBox(
                          height: 10
                      ),
                    ],
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green.shade800;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 1.00);
    path.quadraticBezierTo(size.width * 0.65, size.height * 1.00,
        size.width * 0.70, size.height * 0.50);
    path.quadraticBezierTo(size.width * 0.78, size.height * 0.0,
        size.width * 1.00, size.height * 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
