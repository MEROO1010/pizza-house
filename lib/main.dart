import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

void main() {
  runApp(const onbordaingscreens());
}

class onbordaingscreens extends StatefulWidget {
  const onbordaingscreens({super.key});

  @override
  State<onbordaingscreens> createState() => _onbordaingscreensState();
}

class _onbordaingscreensState extends State<onbordaingscreens> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: OnBoardingSlider(
        headerBackgroundColor: Colors.white,
        skipTextButton: Text('Skip'),
        background: [
          Image.asset('assets/images/onborading1.png'),
          Image.asset('assets/images/onborading2.png'),
          Image.asset('assets/images/onborading3.png'),
          Image.asset('assets/images/onborading4.png'),
        ],
        totalPage: 4,
        speed: .8,
        pageBodies: [],
      ),
    );
  }
}
