import 'package:flutter/material.dart';

import 'homepage.dart';
// import 'package:homedix/screens/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF018C97),
      backgroundColor: const Color.fromARGB(255, 198, 238, 238),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logowithbackground.png',
              height: MediaQuery.of(context).size.height*0.2,
              width: 300.0,
            ),
            const SizedBox(height: 50.0),
            const CircularProgressIndicator(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
