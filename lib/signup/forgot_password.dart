import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

bool isMale = true;
bool isSignupScreen = true;
bool isRememberMe = false;

class _ForgotPasswordState extends State<ForgotPassword> {
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
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logins.png"),
                  fit: BoxFit.fill)),
              child: Container(
                padding: EdgeInsets.only(top: 90, left: 20),
                color: Color(0xff3b5999).withOpacity(.85),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: TextSpan(
                      text: "Selamat datang di",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 2,
                        color: Colors.yellow[700],
                      ),
                      children: [
                        TextSpan(
                          text: " BPRWM",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Silahkan reset kata sandi anda",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: 190,
            child: Container(
              //size container dalam email
              height: 220,
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Lupa Kata Sandi",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Palette.activeColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    height: 2,
                    width: 100,
                    color: Colors.orange,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 10, left: 15,
                    ),
                    child: Row(
                      children: [
                        Text(
                              "Email address",
                              style:
                              TextStyle(
                                color: Palette.textColor1,
                                fontSize: 16,
                              ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Palette.textColor1,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Palette.textColor1),
                              borderRadius: BorderRadius.all(Radius.circular(35.0))
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Palette.textColor1),
                                borderRadius: BorderRadius.all(Radius.circular(35.0))
                            ),
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Masukan email",
                            hintStyle: TextStyle(
                              color: Palette.textColor1,
                            )
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            RaisedButton(
                              padding: EdgeInsets.symmetric(horizontal: 110),
                              color: Colors.blueAccent,
                              onPressed: (){},
                              shape: StadiumBorder(),
                              child: Text(
                                "Kirim reset link ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],

                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
