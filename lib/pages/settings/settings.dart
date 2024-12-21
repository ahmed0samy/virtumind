import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtumind/models/settings_provider.dart';
import 'package:virtumind/models/theme_provider.dart';
import 'package:virtumind/vairables.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        
        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        )
      ],
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(30),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.amber[900],
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: const Text(
                            'App Settings',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Bungee',
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: ListView(
                            children: const [Mode(), APIInput()],
                          ),
                        )
                      ],
                    )
                  ],
                ))),
      ),
    );
  }
}

class Mode extends StatelessWidget {
  const Mode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: context.watch<ThemeProvider>().darkMode ? dark : light,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Dark Mode',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Switch(
            value: context.watch<ThemeProvider>().darkMode,
            onChanged: (value) {
              context.read<ThemeProvider>().changeMode(value);
            },
            activeColor: Colors.white,
          )
        ],
      ),
    );
  }
}

class APIInput extends StatelessWidget {
  const APIInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: light,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 1,
            child: Text(
              'API Link',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextField(
              controller: TextEditingController(text: context.watch<SettingsProvider>().APIUrl),
              style: const TextStyle(color: primecolor),
              decoration: const InputDecoration(
                  hintText: 'Enter API Link',
                  hintStyle: TextStyle(color: primecolor)),
              onChanged: (value) {
                context.read<SettingsProvider>().changeURL(value);
              },
            ),
          )
        ],
      ),
    );
  }
}
