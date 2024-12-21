import 'package:flutter/material.dart';

class Learning extends StatelessWidget {
  final String text;
  const Learning({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.amber),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [SelectableText(text)],
                    ),
                  ],
                ),
              ),
            ],
          )),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.green,
              child: ListView(
                children: const [
                  Text('hello')
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
// spacer() fills the available space