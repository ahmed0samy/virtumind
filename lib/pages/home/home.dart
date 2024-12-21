import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtumind/models/height_provider.dart';
import 'package:virtumind/pages/home/chat_button.dart';
import 'package:virtumind/pages/home/gap.dart';
import 'package:virtumind/pages/home/header.dart';
import 'package:virtumind/pages/home/scroller.dart';
import 'package:virtumind/pages/home/settings_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});
    static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
      
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<HeightProvider>(
            create: (_) => HeightProvider()..calculateHeight(),
          )
        ],
        child: const Scaffold(
          body: SafeArea(
              child: Stack(
            children: [
              Column(
                children: [
                  Gap(),
                  Scroller(),
                ],
              ),
              Header(),
              ChatButton(),
              SettingsButton()
            ],
          )),
        ));
  }
}
