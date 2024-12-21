import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtumind/models/counter_provider.dart';
import 'package:virtumind/models/height_provider.dart';
import 'package:virtumind/models/lang_provider.dart';

class Header extends StatelessWidget {
   const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final heightProvider = Provider.of<HeightProvider>(context, listen: false);
    return Column(
      key: heightProvider.key,
      children: [
        Text(Provider.of<LangProvider>(context).isEng ? 'Hello' : 'منور'),
        ElevatedButton(
            onPressed: () {
              context.read<LangProvider>().changeLang();
            },
            child: Text(
                'change lang to ${context.watch<LangProvider>().isEng ? 'AR' : "EN"}')),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
          child: const Product(productName: 'First Product'),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
          child: const Product(productName: 'Second Product'),
        ),
        Text('${context.watch<CounterProvider>().counter}'),
        const Product(productName: 'Toy'),
        const Product(productName: 'Banana'),
      ],
    );
  }
}

class Product extends StatelessWidget {
  final String productName;
  const Product({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CounterProvider(),
        child: Consumer<CounterProvider>(
          builder: (context, counter, _) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [Text(productName)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FilledButton(
                      onPressed: () {
                        context.read<CounterProvider>().increase();
                      },
                      child: const Text('+')),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child:
                          Text('${counter.counter}')),
                  FilledButton(
                      onPressed: () {
                        context.read<CounterProvider>().decrease();
                      },
                      child: const Text('-')),
                ],
              )
            ],
          ),
        ));
  }
}
