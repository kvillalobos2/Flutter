import 'package:flutter/material.dart';
import 'package:nssystem/screens/login.screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nssystem/screens/signup.screen.dart';
import 'package:nssystem/utils/global.colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.secondaryColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('assets/images/calendurse1.png'),
                width: 250,
              ),
              SizedBox(
                height: 50,
              ),
              SpinKitFadingCircle(
                color: Colors.blue,
                size: 50.0,
              ),
            ]),
      ),
    );
  }
}
