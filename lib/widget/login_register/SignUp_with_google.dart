import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_security/widget/login_register/HeaderBarCustomWidget.dart';

class SignUpWithGoogle extends StatefulWidget {
  const SignUpWithGoogle({super.key});

  @override
  State<SignUpWithGoogle> createState() => _SignUpWithGoogleState();
}

class _SignUpWithGoogleState extends State<SignUpWithGoogle> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeadBarWidget(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white,
                    Colors.blue.shade500,
                    Colors.blue.shade700,
                    Colors.blue.shade800
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 50),
              Text(
                'Get Protected Now!',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            labelText: 'Enter Your Gmail',
                            border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            return value != null && value.isNotEmpty && value.endsWith('@gmail.com')
                                ? null
                                : "Invalid Gmail!";
                          },
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(CupertinoIcons.person),
                              labelText: 'Enter Your Name',
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            return value != null && value.isNotEmpty
                                ? null
                                : "Invalid Name!";
                          },
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(CupertinoIcons.lock),
                              labelText: 'Password',
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            return value != null && value.isNotEmpty
                                ? null
                                : "Invalid Password!";
                          },
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(CupertinoIcons.lock),
                              labelText: 'Confirm Password',
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            return value != null && value.isNotEmpty
                                ? null
                                : "Password doesn't match!";
                          },
                        ),
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pushNamed(context, '/vertificationcode');
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Create an Account',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      'Already have an account?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                          'Sign in',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                  )
                ],
              ),
              const SizedBox(height: 63),
            ],
          ),
        ),
      ),
    );
  }
}
