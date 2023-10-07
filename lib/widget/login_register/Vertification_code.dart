import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_security/widget/login_register/HeaderBarCustomWidget.dart';

class VertificationCode extends StatefulWidget {
  const VertificationCode({super.key});

  @override
  State<VertificationCode> createState() => _VertificationCodeState();
}

class _VertificationCodeState extends State<VertificationCode> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeadBarWidget(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 156,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Please verify your email',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'An email has been sent to your inbox with a verification link',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Verification Code', style: Theme.of(context).textTheme.bodyText1,),
                      const SizedBox(height: 20),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Enter the code here',
                            border: OutlineInputBorder()
                        ),
                        validator: (value) {
                          return value != null && value.isNotEmpty
                              ? null
                              : "Invalid Code";
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: const BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        child: const Text('Resend', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, '/vertificationsuccessful');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            side: const BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        child: const Text('Verify', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 63),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
