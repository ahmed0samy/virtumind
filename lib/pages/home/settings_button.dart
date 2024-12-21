import 'package:flutter/material.dart';
import 'package:virtumind/pages/settings/settings.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 100,
        right: 20,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              )),
          child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Settings();
                }));
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              )),
        ));
  }
}
