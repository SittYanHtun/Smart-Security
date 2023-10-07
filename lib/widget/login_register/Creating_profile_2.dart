import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_security/widget/login_register/HeaderBarCustomWidget.dart';

class CreatingProfile2 extends StatefulWidget {
  const CreatingProfile2({super.key});

  @override
  State<CreatingProfile2> createState() => _CreatingProfile2State();
}

class _CreatingProfile2State extends State<CreatingProfile2> {

  DateTime _bod = new DateTime.now();

  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now()
    ).then((value) {
      setState(() {
        _bod = value!;
      });
    });
  }

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
                'Health Related Information',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Date of Birth', style: Theme.of(context).textTheme.bodyText1),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black38,
                                      width: 1.0
                                    ),
                                  ),
                                  child: Center(child: Text('${_bod.day}/${_bod.month}/${_bod.year}', style: Theme.of(context).textTheme.bodyText1,)),
                                ),
                              ),
                              const SizedBox(width: 20),
                              ElevatedButton(
                                  onPressed: _showDatePicker,
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue.shade800,
                                      side: const BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      )
                                  ),
                                  child: const Text('Choose Date')
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Blood Type', style: Theme.of(context).textTheme.bodyText1,),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 40,
                                color: Colors.black12,
                                child: Center(child: Text('A+', style: Theme.of(context).textTheme.bodyText1,)),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                width: 80,
                                height: 40,
                                color: Colors.black12,
                                child: Center(child: Text('A-', style: Theme.of(context).textTheme.bodyText1,)),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                width: 80,
                                height: 40,
                                color: Colors.black12,
                                child: Center(child: Text('Other', style: Theme.of(context).textTheme.bodyText1,)),
                              ),
                            ],
                          ),

                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Any Diseases?', style: Theme.of(context).textTheme.bodyText1),
                          const SizedBox(height: 10),
                          TextFormField(
                            keyboardType: TextInputType.multiline,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()
                            ),
                          ),
                          const Text('List any existing diseases', style: TextStyle(color: Colors.black54),)
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Allergies', style: Theme.of(context).textTheme.bodyText1),
                          const SizedBox(height: 10),
                          TextFormField(
                            keyboardType: TextInputType.multiline,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()
                            ),
                          ),
                          const Text('List any known allergies', style: TextStyle(color: Colors.black54),)
                        ],
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, '');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                side: const BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                )
                            ),
                            child: const Text(
                              'Confirm',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
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
