import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nssystem/screens/homepage.dart';
import 'package:nssystem/screens/signup.screen.dart';
import 'package:nssystem/utils/global.colors.dart';
import 'package:nssystem/widgets/button.dart';
import 'package:nssystem/widgets/text.form.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage('assets/images/calendurse1.png'),
                  width: 150,
                ),
                const SizedBox(
                  height: 50,
                ),
                //hELLO AGAIN
                Text(
                  'Iniciar sesión',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //eMAIL TEXT
                const TextFormWidget(
                  text: 'Email',
                  obscure: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                //PASSWORD
                TextFormWidget(
                  text: 'Password',
                  obscure: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                //SIGN IN BUTTOJ
                ButtonWidget(
                    text: 'Iniciar Sesión',
                    route: MaterialPageRoute(builder: (_) => HomepageScreen())),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '¿No tienes cuenta?',
                      style: TextStyle(
                        color: GlobalColors.textColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Regístrate',
                        style: TextStyle(
                            color: GlobalColors.mainColor,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()),
                        );
                      },
                    ),
                  ],
                ),
                //REGISTER NOW
              ],
            ),
          ),
        ),
      ),
    );
  }
}
