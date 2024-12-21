import 'package:flutter/material.dart';
import 'package:virtumind/vairables.dart';

class MindfulTrackerCard extends StatelessWidget {
  const MindfulTrackerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                color: Color(0xFF3d4a26),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: IconButton(
                icon: const Icon(
                  Icons.calendar_month,
                  color: Color(0xFF9bb167),
                  size: 32,
                ),
                onPressed: () {}),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Mindful Hours',
                        style: TextStyle(
                            color: Color(0xff533b26),
                            fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '2.5h/8h',
                        style: TextStyle(color: Color(0xff533b26)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xffed7e1c),
                ),
                child: const Text(
                  'Show More',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
