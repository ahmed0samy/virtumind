import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: const Home(),
    );
  }
}

const primecolor = Color.fromARGB(255, 79, 53, 34);

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 38, 21, 5),
      body: Stack(
        children: [
          Positioned(
              // top: 0,
              child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: const BoxDecoration(
              color: primecolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).padding.top,
                  width: MediaQuery.of(context).size.width,
                ),
                const Row(children: [
                   Padding(padding: EdgeInsets.all(16.0), child: Text(
                    'data',
                    style: TextStyle(color: Colors.white),

                  ))
                ])
              ],
            ),
          ))
          // compelete for body here
        ],
      ),
    );
  }
}
