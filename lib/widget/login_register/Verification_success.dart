import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_security/widget/login_register/HeaderBarCustomWidget.dart';

class VertificationSuccessful extends StatefulWidget {
  const VertificationSuccessful({super.key});

  @override
  State<VertificationSuccessful> createState() => _VertificationSuccessfulState();
}

class _VertificationSuccessfulState extends State<VertificationSuccessful> {

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
                  children: [
                    const SizedBox(height: 70),
                    Text(
                      'Verification Successful!',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
                const Icon(Icons.celebration_sharp, size: 150, color: Colors.orange,),
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Almost finishing set up !!', style: Theme.of(context).textTheme.bodyText1,),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 130,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/creatingprofile');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Next Step', style: TextStyle(color: Colors.black),),
                            Icon(CupertinoIcons.right_chevron, color: Colors.black)
                          ],
                        ),
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
