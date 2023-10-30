import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nssystem/screens/homepage.dart';
import 'package:nssystem/utils/global.colors.dart';
import 'package:nssystem/widgets/button.dart';
import 'package:nssystem/widgets/text.form.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                Image(
                  image: AssetImage('assets/images/calendurse1.png'),
                  width: 150,
                ),
                SizedBox(
                  height: 10,
                ),
                //hELLO AGAIN
                Text(
                  'Registro',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //eMAIL TEXT
                TextFormWidget(
                  text: 'Nombre',
                  obscure: false,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormWidget(
                  text: 'Apellido',
                  obscure: false,
                ),
                SizedBox(
                  height: 10,
                ),
                //PASSWORD
                TextFormWidget(
                  text: 'Email',
                  obscure: false,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormWidget(
                  text: 'Password',
                  obscure: true,
                ),
                SizedBox(
                  height: 30,
                ),
                //SIGN IN BUTTOJ
                ButtonWidget(
                  text: 'Regístrate',
                  route: MaterialPageRoute(builder: (_) => HomepageScreen()),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '¿Ya tienes una cuenta?',
                      style: TextStyle(
                        color: GlobalColors.textColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      child: Text('Iniciar Sesión'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
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
