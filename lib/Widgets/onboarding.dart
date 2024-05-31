import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/Widgets/register.dart';

class OnboardingScreen extends StatelessWidget {
  final kMainColor = Color.fromRGBO(195, 70, 0, 100);
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      totalPage: 3,
      headerBackgroundColor: Color.fromRGBO(255, 247, 255, 100),
      finishButtonText: "Register",
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kMainColor,
      ),
      onFinish: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const RegisterPage()));
      },
      skipTextButton: Text('Skip',
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontSize: 14,
              color: kMainColor,
              fontWeight: FontWeight.bold,
            ),
          )),
      trailing: Text(
        'Login',
        style: TextStyle(
          fontSize: 14,
          color: kMainColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailingFunction: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const RegisterPage()));
      },
      controllerColor: kMainColor,
      background: [
        Image.asset(
          'assets/images/monkeyLogo.png',
          height: 460,
        ),
        Image.asset(
          'assets/images/ill1.jpg',
          height: 350,
        ),
        Image.asset(
          'assets/images/envelope.gif',
          height: 460,
        )
      ],
      speed: 1.1,
      pageBodies: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 460,
              ),
              Text(
                'MonkeDope',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 30,
                    color: kMainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'The era of the new shopping..',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Style your way. Style your choice. There isn't a limit to your fashion. Join the MonkeDope Gang and become invincible. ",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 460,
              ),
              Text(
                'Select your own options',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 25,
                    color: kMainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "While others offer choices, we offer choices that really seem to have come from your mind. Presenting to your Monke AI. A powerful assistant to help customize the clothes to your liking.",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 350,
              ),
              Text(
                "Ready to join the gang ? ",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 25,
                    color: kMainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Register yourself and get the letter of joining right up in your mail.... ",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 320,
              ),
              Text(
                "I can't even express how happy I am.. Whooooooooooo",
                textAlign: TextAlign.right,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 8,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
