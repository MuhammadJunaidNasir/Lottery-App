import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random num = Random();
  int lucky_num = 3;
  int my_num = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.brown,
            title: const Text('⭐ Lottery App'),
          ),
          body: SafeArea(
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'You lucky number is: $lucky_num',
                        style: const TextStyle(
                          color: Colors.brown,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      my_num==lucky_num?        Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.done_outline_rounded),
                            Text(
                              'Congratulation! \n You have won 😍',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                      )      : Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.warning),
                            Text(
                              'Ohhh No! \n Better luck next time ☹️',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )


                    ],
                  ))),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              my_num = num.nextInt(6);
              setState(() {

              });
            },
            backgroundColor: Colors.brown,
            child: const Icon(Icons.refresh),
          ),
        ));
  }
}
