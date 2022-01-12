import 'package:flutter/material.dart';
import 'package:parking/User/registration.dart';
import 'package:parking/theme/bottom_bar.dart';
import '../theme/top_bar.dart';
import 'dashboard.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        backgroundColor: Colors.purple.shade50,
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(40),
        //   child: AppBar(
        //     backgroundColor: Colors.purple.shade200,
        //     elevation: 0,
        //   ),
        // ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                // margin: EdgeInsets.fromLTRB(0,50,0,10),
                height: 250,
                width: 250,
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
              height: 20,
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      )),
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.purple.shade600,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          //controller: _user_email,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                              borderSide: BorderSide(
                                  color: Colors.orange.shade200, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                              borderSide:
                                  BorderSide(color: Colors.orange.shade200),
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                            ),
                            prefixIcon: Container(
                                margin:
                                    const EdgeInsets.only(left: 20, right: 15),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.black,
                                )),
                          ),
                          autofocus: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          //controller: _user_password,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                              borderSide: BorderSide(
                                  color: Colors.orange.shade200, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                              borderSide:
                                  BorderSide(color: Colors.orange.shade200),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                            ),
                            prefixIcon: Container(
                                margin:
                                    const EdgeInsets.only(left: 20, right: 15),
                                child: Icon(
                                  Icons.vpn_key,
                                  color: Colors.black,
                                )),
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
                          height: 20,
                        ),
                        Container(
                            //padding: EdgeInsets.only(top: 5,right: 35),
                            alignment: Alignment.centerRight,
                            width: double.maxFinite,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            new ForgetPasswordPage()));
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  'Forget Password?',
                                  textAlign: TextAlign.center,
                                  style:
                                      TextStyle(color: Colors.purple.shade600),
                                ),
                              ),
                            )),
                        SizedBox(height: 20),
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
                            color: Colors.deepOrange.shade400,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          new DashboardPage()));
                            },
                            child: new Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Do not have an account?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.purple.shade600,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  'Register',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.purple.shade600,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new RegistrationPage()));
                          },
                        ),
                        SizedBox(height: 5),
                      ])),
            ),
          ],
        ),
        resizeToAvoidBottomInset: true,
      ),
    );
  }
}
