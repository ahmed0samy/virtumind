import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Color(0xff533b26),
            borderRadius: BorderRadius.all(Radius.circular(100))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Color(0xff916147),
                  size: 25,
                ),
                onPressed: () {}),
            IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Color(0xff916147),
                  size: 25,
                ),
                onPressed: () {}),
            IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Color(0x00916147),
                  size: 25,
                ),
                onPressed: () {}),
            IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Color(0xff916147),
                  size: 25,
                ),
                onPressed: () {}),
            IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Color(0xff916147),
                  size: 25,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
