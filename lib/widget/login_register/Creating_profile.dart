import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_security/widget/login_register/HeaderBarCustomWidget.dart';

class CreatingProfile extends StatefulWidget {
  const CreatingProfile({super.key});

  @override
  State<CreatingProfile> createState() => _CreatingProfileState();
}

class _CreatingProfileState extends State<CreatingProfile> {

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
            children: [
              const SizedBox(height: 50),
              Text(
                'Setting up your Profile',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Upload Profile Picture', style: Theme.of(context).textTheme.bodyText1,),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                width: 150,
                                height: 100,
                                color: Colors.black12,
                                child: const Icon(CupertinoIcons.plus, color: Colors.white,),
                              ),
                              const SizedBox(width: 15),
                              const Text('Optional', style: TextStyle(fontSize: 12, color: Colors.black54),)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Gender', style: Theme.of(context).textTheme.bodyText1,),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 40,
                                color: Colors.black12,
                                child: Center(child: Text('Male', style: Theme.of(context).textTheme.bodyText1,)),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                width: 80,
                                height: 40,
                                color: Colors.black12,
                                child: Center(child: Text('Female', style: Theme.of(context).textTheme.bodyText1,)),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                width: 80,
                                height: 40,
                                color: Colors.black12,
                                child: Center(child: Text('Other', style: Theme.of(context).textTheme.bodyText1,)),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Phone Number', style: Theme.of(context).textTheme.bodyText1),
                          const SizedBox(height: 10),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                                hintText: 'Enter your phone number',
                                border: OutlineInputBorder()
                            ),
                            validator: (value) {
                              return value != null && value.isNotEmpty
                                  ? null
                                  : "Enter Phone Number Here!";
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Family Member\'s Phone Number', style: Theme.of(context).textTheme.bodyText1,),
                          const SizedBox(height: 10),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: 'Enter family member\'s phone number',
                                border: OutlineInputBorder()
                            ),
                            validator: (value) {
                              return value != null && value.isNotEmpty
                                  ? null
                                  : "Enter Phone Number Here!";
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Address', style: Theme.of(context).textTheme.bodyText1),
                          const SizedBox(height: 10),
                          TextFormField(
                            keyboardType: TextInputType.streetAddress,
                            decoration: const InputDecoration(
                                hintText: 'Enter your address',
                                border: OutlineInputBorder()
                            ),
                            validator: (value) {
                              return value != null && value.isNotEmpty
                                  ? null
                                  : "Enter Address Here!";
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Job Place', style: Theme.of(context).textTheme.bodyText1),
                              const SizedBox(width: 10),
                              const Text('Optional', style: TextStyle(fontSize: 12, color: Colors.black54),)
                            ],
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            keyboardType: TextInputType.streetAddress,
                            decoration: const InputDecoration(
                                hintText: 'Enter your job place',
                                border: OutlineInputBorder()
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, '/creatingprofile2');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                side: const BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(CupertinoIcons.right_chevron, color: Colors.black,)
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 63),
            ],
          ),
        ),
      ),
    );
  }
}
