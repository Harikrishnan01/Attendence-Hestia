import 'package:flutter/material.dart';

class screenAttendence extends StatefulWidget {
  screenAttendence({super.key});

  @override
  State<screenAttendence> createState() => _screenAttendenceState();
}

class _screenAttendenceState extends State<screenAttendence> {
  @override
  int value = 0;

  bool? _isChecked = false;

  var arrNames = [
    'Hari',
    'Diana',
    'Sonu',
    'Azjad',
    'Melvin',
    'Prince',
    'Farhan',
    'Dona',
    'Sofiya',
    'Hari',
    'Diana',
    'Sonu',
    'Azjad',
    'Melvin',
    'Prince',
    'Farhan',
    'Dona',
    'Sofiya',
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 57, 56, 56),
      body: ListView.separated(
          itemBuilder: (ctx, index) {
            return Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '$index',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            arrNames[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 2),
                          child: Text(
                            '@abcdef',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Checkbox(
                            value: _isChecked,
                            onChanged: (newBool) {
                              setState(() {
                                _isChecked = newBool;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
          separatorBuilder: (ctx, index) {
            return Divider(
              thickness: 0.5,
              color: Colors.white,
            );
          },
          itemCount: arrNames.length),
    );
  }
}
