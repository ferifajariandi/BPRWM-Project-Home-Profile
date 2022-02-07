import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/data/colors.dart';
import 'package:untitled/signup/signup_screen.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: size.height*0.4,
            child: Image.asset(
              'assets/images/login.png',
              width: size.width*0.9,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 20,
            ),
              child: Text(
                'Selamat Datang',
                style: TextStyle(
                  color: kTitleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width*0.055,
                ),
              ),
            ),
        Text(
          'Silahkan lakukan login atau signup untuk menggunakan aplikasi BPRWM',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kTextColor,
            fontSize: size.width*0.035,
          ),
        ),
         Padding(
           padding: const EdgeInsets.only(
             top: 30,
           ),
           child: Buttonwidget(
             size: size,
             bakcgroundColor: kPrimaryColor,
             onTab: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen(),));
             },
             title: "Selanjutnya",
             titleColor: Colors.white,
           ),
         ),

        ],
      ),
      ),
    );
  }
}

class Buttonwidget extends StatelessWidget {
  const Buttonwidget({
    Key? key,
    required this.size,
    required this.bakcgroundColor,
    required this.title,
    required this.titleColor,
    required this.onTab,
  }) : super(key: key);



  final Size size;
  final Color bakcgroundColor;
  final String title;
  final Color titleColor;
  final onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
          horizontal: size.width*0.15,
          vertical: size.height*0.01,
        ),
        height: size.height*0.07,
        width: double.infinity,
        decoration: BoxDecoration(
            color: bakcgroundColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child:
        Text(
          title,
          style: TextStyle(
          color: titleColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        ),
      ),
    );

  }
}

