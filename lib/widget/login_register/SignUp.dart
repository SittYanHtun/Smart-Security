import 'package:flutter/material.dart';
import 'package:smart_security/widget/login_register/HeaderBarCustomWidget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeadBarWidget(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 156,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.orange.shade500,
                    Colors.orange.shade300,
                    Colors.blue.shade500,
                    Colors.blue.shade700,
                    Colors.blue.shade800
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 100),
              Text(
                'Your Security, Our Priority !',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signupwithgoogle');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                        child: const Row(
                          children: [
                            Image(image: AssetImage('assets/image/google_icon_130924.png'), width: 30, height: 30,),
                            SizedBox(width: 10),
                            Text(
                              'SIGN UP WITH GOOGLE',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                        child: const Row(
                          children: [
                            Image(image: AssetImage('assets/image/Facebook_icon.jpg'), width: 30, height: 30,),
                            SizedBox(width: 10),
                            Text(
                              'SIGN UP WITH FACEBOOK',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                        child: const Row(
                          children: [
                            Image(image: AssetImage('assets/image/message-icon.png'), width: 30, height: 30,),
                            SizedBox(width: 10),
                            Text(
                              'SIGN UP WITH PHONE NUMBER',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        )
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
