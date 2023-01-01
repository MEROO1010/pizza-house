import 'package:flutter/material.dart';
import 'package:introduction_slider/introduction_slider.dart';

import 'Mainpage.dart';

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
    return Stack(
      children: [
        IntroductionSlider(
          items: [
            IntroductionSliderItem(
                backgroundImageDecoration: BackgroundImageDecoration(
                    image: AssetImage('assets/images/onborading1.png'))),
            IntroductionSliderItem(
                backgroundImageDecoration: BackgroundImageDecoration(
                    image: AssetImage('assets/images/onborading2.png'))),
            IntroductionSliderItem(
                backgroundImageDecoration: BackgroundImageDecoration(
                    image: AssetImage('assets/images/onborading3.png'))),
            IntroductionSliderItem(
                backgroundImageDecoration: BackgroundImageDecoration(
                    image: AssetImage('assets/images/onborading4.png'))),
          ],
          done: Done(
            child: Icon(Icons.done),
            home: Mainpage(),
          ),
          next: Next(child: Icon(Icons.arrow_forward)),
          back: Back(child: Icon(Icons.arrow_back)),
          dotIndicator: DotIndicator(),
        )
      ],
    );
  }
}
