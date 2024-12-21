import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:virtumind/models/height_provider.dart';
import 'package:virtumind/vairables.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final heightProvider = Provider.of<HeightProvider>(context, listen: false);

    return Container(
      key: heightProvider.key,
      width: MediaQuery.of(context).size.width,
      // height: 300,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 79, 53, 34),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            // top margin
            height: MediaQuery.of(context).padding.top,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                icon: const Icon(
                                  Icons.calendar_month,
                                  color: Color(0xffbe9f8f),
                                ),
                                onPressed: () {}),
                            Text(
                              DateFormat('EEE, dd MMM yyyy')
                                  .format(DateTime.now()),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: 'Outfit'),
                            ),
                          ],
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: const Color(0xffbe9f8f)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100))),
                              child: IconButton(
                                  icon: const Icon(
                                    Icons.notifications,
                                    color: Color(0xffffffff),
                                    size: 25,
                                  ),
                                  onPressed: () {}),
                            ))
                      ]),
                  Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/Imgs/person.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              const Text(
                                'Hi, Ahmed',
                                style: TextStyle(
                                    fontSize: 27,
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto'),
                              ),
                              Text(
                                '${context.watch<HeightProvider>().calculatedHeight}',
                                style:
                                    const TextStyle(color: Color(0xFFFFFFFF)),
                              )
                            ],
                          ))
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search Here',
                        filled: true,
                        fillColor: backgroundColor,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
