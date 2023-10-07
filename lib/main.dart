import 'package:flutter/material.dart';
import 'package:smart_security/widget/login_register/Creating_profile.dart';
import 'package:smart_security/widget/login_register/Creating_profile_2.dart';
import 'package:smart_security/widget/login_register/Login2.dart';
import 'package:smart_security/widget/login_register/SignUp.dart';
import 'package:smart_security/widget/login_register/SignUp_with_google.dart';
import 'package:smart_security/widget/login_register/Verification_success.dart';
import 'package:smart_security/widget/login_register/Vertification_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Security',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        textTheme: TextTheme(
          headline1: const TextStyle(
              fontSize: 28,
              color: Colors.deepPurple,
              fontWeight: FontWeight.w100,
              fontFamily: 'Audiowide-Regular'
          ),
          headline2: const TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          headline3: TextStyle(
            fontSize: 25,
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold
          ),
          bodyText1: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
          bodyText2: TextStyle(
            fontSize: 16
          )
        ),
        // useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Login2(),
        '/singup': (context) => const SignUp(),
        '/signupwithgoogle': (context) => SignUpWithGoogle(),
        '/vertificationcode': (context) => VertificationCode(),
        '/vertificationsuccessful': (context) => VertificationSuccessful(),
        '/creatingprofile': (context) => CreatingProfile(),
        '/creatingprofile2': (context) => CreatingProfile2(),
      },
      initialRoute: '/',
    );
  }
}
