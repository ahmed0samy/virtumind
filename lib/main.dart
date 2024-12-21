import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtumind/models/settings_provider.dart';
import 'package:virtumind/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SettingsProvider>(
          create: (context) => SettingsProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        // home: TrySomething(),
      ),
    );
  }
}
