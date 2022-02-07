import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/Homepage/homepage.dart';
import 'package:untitled/data/colors.dart';
import 'package:untitled/signup/forgot_password.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

bool isMale = true;
bool isSignupScreen = true;
bool isRememberMe = false;

class _SignupScreenState extends State<SignupScreen> {
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
                    RichText(
                      text: TextSpan(
                          text: isSignupScreen ? "Selamat datang di" : "Selamat datang kembali di",
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 2,
                            color: Colors.yellow[700],
                          ),
                          children: [
                            TextSpan(
                              text:  isSignupScreen ? " BPR Weleri Makmur" : " BPRWM",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow[700],
                              ),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      isSignupScreen ? "Silahkan daftar akun untuk melanjutkan" : "Silahkan masuk untuk melanjutkan",
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),


          //Syntaks untuk menambahkan shadow pada tombol submit
          buildBottomHalfContainer(true),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
              curve: Curves.bounceInOut,
              top: isSignupScreen ? 180 : 200,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.bounceInOut,
                height: isSignupScreen ? 390 : 270,
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
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
                                  "LOGIN",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: !isSignupScreen
                                        ? Palette.activeColor
                                        : Palette.textColor1,
                                  ),
                                ),
                                if (!isSignupScreen)
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: Colors.orange,
                                  )
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
                                  "SIGNUP",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: isSignupScreen
                                        ? Palette.activeColor
                                        : Palette.textColor1,
                                  ),
                                ),
                                if (isSignupScreen)
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: Colors.orange,
                                  )
                              ],
                            ),
                          )
                        ],
                      ),
                      if(isSignupScreen) buildSignupSection(),
                      if(!isSignupScreen) buildSigninSection(),
                    ],
                  ),
                ),
              ),
          ),
          //Syntaks untuk menambahkan tombol submit pada kirim
          buildBottomHalfContainer(false),
          Positioned(
            top: MediaQuery.of(context).size.height-80,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Text(isSignupScreen ? "Or Signup with" : "Or Signin with"),
                Container(
                  margin: EdgeInsets.only(top: 5, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildTextButton(Icons.facebook_outlined, "Facebook", Palette.facebookColor),
                      buildTextButton(Icons.g_mobiledata_rounded,"Google", Palette.googleColor),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildSigninSection() {
    return Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        buildTextField(Icons.mail_outline, "Contoh : bprweleri.com", false, true),
                        buildTextField(Icons.lock_outline, "Contoh : *******", true, false),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(value: isRememberMe,
                                    activeColor: Palette.textColor2,
                                    onChanged: (value) {
                                  setState(() {
                                    isRememberMe = !isRememberMe;
                                  });
                                    },
                                ),
                                Text("Remember me",
                                style: TextStyle(
                                  color: Palette.textColor1,
                                  fontSize: 12,
                                ),
                                ),
                              ],
                            ),
                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPassword(),));
                                }, child: Text(
                              "lupa kata sandi",
                              style: TextStyle(
                                color: Palette.textColor1,
                              ),
                            ))
                          ],
                        ),
                      ],
                    ),
                  );
  }

  Container buildSignupSection() {
    return Container(
                      //margin antara space username, password dan email ke container
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          buildTextField(Icons.account_circle_outlined,
                              "Username", false, false),
                          buildTextField(
                              Icons.email_outlined, "Email", false, true),
                          buildTextField(
                              Icons.lock_outline, "Password", true, false),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 5),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      isMale = true;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        margin: EdgeInsets.only(right: 8),
                                        decoration: BoxDecoration(
                                          color: isMale ? Palette.textColor2: Colors.transparent,
                                            border: Border.all(
                                                width: 1,
                                                color: isMale ? Colors.transparent: Palette.textColor1),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Icon(
                                          Icons.account_circle_outlined,
                                          color: Palette.iconColor,
                                        ),
                                      ),
                                      Text(
                                        "Male",
                                        style: TextStyle(
                                          color: Palette.textColor1,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 30,),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      isMale = false;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        margin: EdgeInsets.only(right: 8),
                                        decoration: BoxDecoration(
                                          color: isMale ? Colors.transparent: Palette.textColor2,
                                            border: Border.all(
                                                width: 1,
                                                color: isMale? Palette.textColor1 : Colors.transparent),
                                            borderRadius:
                                            BorderRadius.circular(15)),
                                        child: Icon(
                                          Icons.account_circle_outlined,
                                          color: Palette.iconColor,
                                        ),
                                      ),
                                      Text(
                                        "Female",
                                        style: TextStyle(
                                          color: Palette.textColor1,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                      Container(
                        //Lebar tulisan syarat dan ketentuan
                        width: 300,
                        margin: EdgeInsets.only(top: 12),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: "Dengan menekan kirim anda setuju dengan",
                              style: TextStyle(color: Palette.textColor2),
                              children: [
                                TextSpan(
                                  //recognizer: ,
                                  text: " syarat dan ketentuan kami ",
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ]),
                        ),
                      ),
                        ],
                      ),
                  );
  }

  TextButton buildTextButton(IconData icon, String title, Color backgroundColor) {
    return TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      primary: Colors.white,
                      backgroundColor: backgroundColor
                    ),
                      child: Row(
                        children: [
                          Icon(
                            icon,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: Text(
                              title,
                            ),
                          )
                        ],

                      ),
                  );
  }


  // codingan untuk tombol bulat button kirim
  late Widget AnimatePositioned; buildBottomHalfContainer( bool showShadow) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
          curve: Curves.bounceInOut,
          top: isSignupScreen ? 510 : 400,
          right: 0,
          left: 0,
          child: Center(
            child: Container(
                height: 90,
                width: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      if(showShadow)
                    BoxShadow(
                        color: Colors.black.withOpacity(.3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0,1)
                    ),
              ],
                ),
                child: !showShadow ? Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.3),
                        spreadRadius: 1,
                        blurRadius: 100,
                        offset: Offset(0,1)
                      )
                    ]
                  ),
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    shape: StadiumBorder(),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CarouselWithIndicatorDemo()));
                    },
                    child: Icon(
                      Icons.send_to_mobile, color: Colors.white,
                    )
                  ),
                ) : Center(),
              ),
            ),
          );
  }
}


  //TextField untuk container kotak signup dan signin
  Widget buildTextField(
    IconData icon, String hintText, bool isPassword, bool isEmail) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: TextField(
      obscureText: isPassword,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Palette.iconColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.textColor1),
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.textColor1),
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),
        contentPadding: EdgeInsets.all(10),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
      ),
    ),
  );
}
