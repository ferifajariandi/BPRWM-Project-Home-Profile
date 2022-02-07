import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';
import 'package:untitled/models/onboarding_models.dart';
import 'package:untitled/screen/registrasi/register_screen.dart';
import 'package:untitled/signup/signup_screen.dart';
import 'package:untitled/widgets/description_text.dart';
import 'package:untitled/widgets/title_text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen(SignupScreen signupScreen, {Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

PageController _pageController = PageController();
int selectedPage = 0;


nextPage(){
  _pageController.nextPage(
      duration: Duration(milliseconds: 200),
      curve: Curves.ease,
  );
}

jumpPage(){
  _pageController.jumpToPage(3);
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView.builder(
                controller: _pageController,
                onPageChanged: (value){
                  setState(() {
                    selectedPage = value;
                  });
                },
                itemCount: onboarding.length,
                itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SizedBox(
                      width: double.infinity,
                      height: size.height*0.4,
                      child: Image.asset(
                        onboarding[index].imageAsset,
                        width: size.width*0.9,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 30,
                      ),
                      child: TitleTextWidget(size: size, index: index, name: onboarding[index].title,
                      ),
                    ),
                    DescriptionTextWidget(size: size, index: index, description: onboarding[index].description),
                  ],
                  ),
                  );
              },
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width*0.05,
                  vertical: size.height*0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        jumpPage();
                      },
                      child: Text("Skip",
                        style: TextStyle(
                        color: kTextColor,
                        fontSize: size.width*0.04,
                ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                          onboarding.length,
                            (index) => AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedPage == index ? kIconColor : kTextColor.withOpacity(.5),
                        ),
                       ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                       if (selectedPage == onboarding.length - 1) {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen(),));
                       } else {
                         nextPage();
                       }
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: kIconColor,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



