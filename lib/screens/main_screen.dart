import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isSignupScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/background.png'),
                      fit: BoxFit.fill),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 90, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (!isSignupScreen)
                                RichText(
                                    text: TextSpan(
                                        text: 'Welcome ',
                                        style: TextStyle(
                                            letterSpacing: 1.0,
                                            fontSize: 25,
                                            color: Colors.white),
                                        children: [
                                      TextSpan(
                                        text: 'back',
                                        style: TextStyle(
                                            letterSpacing: 1.0,
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ])),
                              if (!isSignupScreen)
                                SizedBox(
                                  height: 5.0,
                                ),
                              if (!isSignupScreen)
                                Text(
                                  'Signin to continue',
                                  style: TextStyle(
                                      letterSpacing: 1.0, color: Colors.white),
                                )
                            ]),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          if (isSignupScreen)
                                RichText(
                                    text: TextSpan(
                                    text: 'Welcome ',
                                    style: TextStyle(
                                        letterSpacing: 1.0,
                                        fontSize: 25,
                                        color: Colors.white),
                                    children: [
                                  TextSpan(
                                    text: 'to EOS chat!',
                                    style: TextStyle(
                                        letterSpacing: 1.0,
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ])),
                          if (isSignupScreen)
                            SizedBox(
                              height: 5.0,
                            ),
                          if (isSignupScreen)
                            Text(
                              'Signup to continue',
                              style: TextStyle(
                                  letterSpacing: 1.0, color: Colors.white),
                            )
                        ]),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 180,
              child: AnimatedContainer(
                curve: Curves.easeIn,
                duration: Duration(milliseconds: 500),
                height: isSignupScreen ? 310.0 : 270.0,
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5,
                      )
                    ]),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: isSignupScreen == true
                                    ? Palette.textColor1
                                    : Palette.activeColor,
                              ),
                            ),
                            if (!isSignupScreen)
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                height: 2,
                                width: 55,
                                color: Colors.green,
                              ),
                            Container(margin: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                          ],
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                'SIGNUP',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen == true
                                      ? Palette.activeColor
                                      : Palette.textColor1,
                                ),
                              ),
                              if (isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.green,
                                ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              )
                            ],
                          ))
                    ],
                  ),
                  Container(
                      child: Form(
                    child: Column(children: [
                      if (isSignupScreen)
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'user name',
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Palette.iconColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Palette.textColor1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Palette.textColor1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35)))),
                        ),
                      if (isSignupScreen)
                        Container(
                          height: 8,
                        ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'email',
                            prefixIcon: Icon(
                                IconData(0xe22a, fontFamily: 'MaterialIcons'),
                                color: Palette.iconColor),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.textColor1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.textColor1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)))),
                      ),
                      Container(
                        height: 8,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'password',
                            prefixIcon: Icon(
                                IconData(0xe3ae, fontFamily: 'MaterialIcons'),
                                color: Palette.iconColor),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.textColor1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.textColor1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)))),
                      ),
                    ]),
                  ))
                ]),
              )),
          AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              top: isSignupScreen ? 450 : 410,
              right: 0,
              left: 0,
              child: Center(
                child: Container(
                    padding: EdgeInsets.all(15),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.lightGreen, Colors.green],
                                begin: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(0, 1))
                            ]),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ))),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height - 125,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  if (!isSignupScreen)
                    Text('or Signin with',
                        style: TextStyle(color: Colors.black, fontSize: 10)),
                  if (isSignupScreen)
                    Text('or Signup with',
                        style: TextStyle(color: Colors.black, fontSize: 10)),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text('Google'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(155, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Palette.googleColor,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
