import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtumind/models/height_provider.dart';

// class TrySomething extends StatelessWidget {
//   const TrySomething({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final heightProvider = Provider.of<HeightProvider>(context, listen: false);

//     return Expanded(
//       child: Container(
//         key: heightProvider.key,
//         color: Colors.blue,
//         child: const Text(
//           'This is the widget we measure}',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }

class Gap extends StatelessWidget {
  const Gap({super.key});
  @override
  Widget build(BuildContext context) {
    if (context.read<HeightProvider>().calculatedHeight == null)
     { return const CircularProgressIndicator();}
    return Container(
      color: Colors.green,
      height: context.read<HeightProvider>().calculatedHeight,
      child: const Text('this is dependent'),
    );
  }
}
