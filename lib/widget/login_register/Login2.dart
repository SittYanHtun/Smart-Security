import 'package:flutter/material.dart';
import 'package:smart_security/widget/login_register/HeaderBarCustomWidget.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
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
                Colors.blue.shade600,
                Colors.blue.shade500,
                Colors.orange.shade300,
                Colors.orange.shade400,
                Colors.orange.shade700
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                        child: const Text(
                          'SIGN IN',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/singup');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                        child: const Text(
                            'SIGN UP',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
