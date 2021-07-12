import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() =>  _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 400,
              child: Stack(
                children:<Widget> [
                  Positioned(
                    top: -40,
                      height: 400,
                      width: width,
                      child:Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage('images/pastel.jpg'),
                            fit:BoxFit.fill,
                          )
                        ),
                      )
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Login",
                    style: TextStyle(
                      color: Color(0XFFD2BCC9),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(196, 135, 198, 0.3),
                          blurRadius: 20,
                          offset: Offset(0,10),
                        )
                      ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(
                              color: Colors.grey.shade300,
                            ),
                          ),
                          ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "UserName",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                )
                              ),
                            )
                        ),
                        Container(
                          height: 50,
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  )
                              ),
                            )
                        ),
                      ]
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: TextButton(
                      child: Text("Forgot Password?",
                        style: TextStyle(
                          color: Color(0XFFF6C8CA),
                          fontSize: 16,
                        ),
                      ),
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0XFFD2BCC9),
                    ),
                    child: Center(
                      child: TextButton(
                        child: Text("Login",
                          style: TextStyle(
                            color: Colors.white, fontSize: 20,),
                        ),
                        onPressed: (){},
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: TextButton(
                      child: Text("Create Account",
                        style: TextStyle(
                          color: Color(0xFFF6C8CA),
                          fontSize: 16,
                        ),
                      ),
                      onPressed: (){},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
  child: Stack(
  children: <Widget>[
  Container(
  height: double.infinity,
  width: double.infinity,
  decoration: BoxDecoration(
  gradient: LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
  Color(0xFF73AEF5),
  Color(0xFF61A4F1),
  Color(0xFF478DE0),
  Color(0xFF398AE5),
  ],
  stops: [0.1, 0.4, 0.7, 0.9],
  ),
  ),
  ),
  Container(
  height: double.infinity,
  child: SingleChildScrollView(
  physics: AlwaysScrollableScrollPhysics(),
  padding: EdgeInsets.symmetric(
  horizontal: 40.0,
  vertical: 120.0,
  ),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  Text(
  'Sign In',
  style: TextStyle(
  color: Colors.white,
  fontFamily: 'OpenSans',
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
  ),
  ),
  ]
  ),
  ),
  ),
  ]
  ),
  ),
  ),
  );
  }

