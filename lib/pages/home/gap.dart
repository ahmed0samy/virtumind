import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtumind/models/height_provider.dart';

class Gap extends StatelessWidget {
  const Gap({super.key});
  @override
  Widget build(BuildContext context) {
    if (context.watch<HeightProvider>().calculatedHeight == null) {
      return const CircularProgressIndicator();
    }
    print(context.watch<HeightProvider>().calculatedHeight);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: context.watch<HeightProvider>().calculatedHeight!,
          color: Colors.red,
          child: const Text('sample'),
        )
      ],
    );
  }
}
