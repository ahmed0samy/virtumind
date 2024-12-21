import 'package:flutter/material.dart';
import 'package:virtumind/pages/home/mindful_tracker_card.dart';

class Scroller extends StatelessWidget {
  const Scroller({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(children: const <Widget>[
        MindfulTrackerCard(),
        MindfulTrackerCard(),
        MindfulTrackerCard(),
        MindfulTrackerCard(),
        MindfulTrackerCard(),
        MindfulTrackerCard(),
        MindfulTrackerCard(),
        MindfulTrackerCard(),
        MindfulTrackerCard(),
      ],),
    );
  }
}
