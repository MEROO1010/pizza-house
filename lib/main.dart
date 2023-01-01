import 'package:flutter/material.dart';
import 'package:pizza_house/pages/home.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(splashScreen());
}

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: onbordaingscreens(
          //title: '',
          ),
      duration: 8000,
      imageSize: 200,
      imageSrc: "assets/images/pizza_house_logo.png",
      colors: [
        // Colors.purple,
        //  Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.yellow[400],
    );

    return MaterialApp(
      title: 'Splash screen Demo',
      home: example1,
    );
  }
}
