import 'package:flutter/material.dart';
import 'package:virtumind/pages/home/chat.dart';

class ChatButton extends StatelessWidget {
  const ChatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 20,
        right: 20,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.green[900],
              borderRadius: const BorderRadius.all(
                Radius.circular(100),
              )),
          child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ChatScreen();
                }));
              },
              icon: const Icon(
                Icons.chat,
                color: Colors.white,
                size: 30,
              )),
        ));
  }
}
