// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:virtumind/chat.dart';
// import 'package:virtumind/learning/learning.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // home: MyHomePage(),
//       home: Learning(
//         text: 'hello',
//       ),
//     );
//   }
// }

// const primecolor = Color(0xffffffff);
// const backgroundColor = Color(0xfff7f4f2);

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final int _page = 0;
//   final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//   void _onStateChange(int p) {
//     Navigator.push(context, MaterialPageRoute(builder: (context) {
//       return const ChatScreen();
//     }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//       // bottomNavigationBar: CurvedNavigationBar(
//       //   onTap: (index) {
//       //     setState(() {
//       //       _page = index;
//       //       _onStateChange(index);
//       //     });
//       //   },
//       //   height: 60,
//       //   backgroundColor: backgroundColor,
//       //   buttonBackgroundColor: Color(0xFF9bb167),
//       //   color: primecolor,
//       //   items: const <Widget>[
//       //     Icon(
//       //       Icons.home,
//       //       size: 32,
//       //       color: Color(0xFFFFFFFF),
//       //     ),
//       //     Icon(Icons.chat, size: 32, color: Color(0xFFFFFFFF)),
//       //     Icon(Icons.add, size: 32, color: Color(0xFFFFFFFF)),
//       //     Icon(Icons.bar_chart, size: 32, color: Color(0xFFFFFFFF)),
//       //     Icon(Icons.person, size: 32, color: Color(0xFFFFFFFF)),
//       //   ],
//       // ),
//       body: Stack(
//         children: [
//           const Scroller(),
//           const Header(),
//           // Container(
//           //   color: Colors.blueAccent,
//           //   child: Center(
//           //     child: Column(
//           //       children: <Widget>[
//           //         Text(_page.toString(), textScaleFactor: 10.0),
//           //         ElevatedButton(
//           //           child: Text('Go To Page of index 1'),
//           //           onPressed: () {
//           //             //Page change using state does the same as clicking index 1 navigation button
//           //             final CurvedNavigationBarState? navBarState =
//           //                 _bottomNavigationKey.currentState;
//           //             navBarState?.setPage(1);
//           //           },
//           //         )
//           //       ],
//           //     ),
//           //   ),)
//           // Footer(),
//           Positioned(
//             bottom: 40,
//             right: 20,
//             width: 60,
//             height: 60,
//             child: Container(
//               width: 60,
//               height: 60,
//               decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(100)),
//                   color: Color(0xFF9bb167)),
//               child: IconButton(
//                 icon: const Icon(
//                   Icons.chat_rounded,
//                   color: Color(0xFFFFFFFF),
//                   size: 30,
//                 ),
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) {
//                     return const ChatScreen();
//                   }));
//                 },
//               ),
//             ),
//           ),

//           // compelete for body here
//         ],
//       ),
//     );
//   }
// }



// class Footer extends StatelessWidget {
//   const Footer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       bottom: 0,
//       right: 0,
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 10),
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//             color: Color(0xff533b26),
//             borderRadius: BorderRadius.all(Radius.circular(100))),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             IconButton(
//                 icon: const Icon(
//                   Icons.notifications,
//                   color: Color(0xff916147),
//                   size: 25,
//                 ),
//                 onPressed: () {}),
//             IconButton(
//                 icon: const Icon(
//                   Icons.notifications,
//                   color: Color(0xff916147),
//                   size: 25,
//                 ),
//                 onPressed: () {}),
//             IconButton(
//                 icon: const Icon(
//                   Icons.notifications,
//                   color: Color(0x00916147),
//                   size: 25,
//                 ),
//                 onPressed: () {}),
//             IconButton(
//                 icon: const Icon(
//                   Icons.notifications,
//                   color: Color(0xff916147),
//                   size: 25,
//                 ),
//                 onPressed: () {}),
//             IconButton(
//                 icon: const Icon(
//                   Icons.notifications,
//                   color: Color(0xff916147),
//                   size: 25,
//                 ),
//                 onPressed: () {}),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MindfulTrackerCard extends StatelessWidget {
//   const MindfulTrackerCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(15),
//       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       decoration: const BoxDecoration(
//         color: primecolor,
//         borderRadius: BorderRadius.all(Radius.circular(20)),
//       ),
//       child: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(5),
//             decoration: const BoxDecoration(
//                 color: Color(0xFF3d4a26),
//                 borderRadius: BorderRadius.all(Radius.circular(20))),
//             child: IconButton(
//                 icon: const Icon(
//                   Icons.calendar_month,
//                   color: Color(0xFF9bb167),
//                   size: 32,
//                 ),
//                 onPressed: () {}),
//           ),
//           Expanded(
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: const Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         'Mindful Hours',
//                         style: TextStyle(
//                             color: Color(0xff533b26),
//                             fontWeight: FontWeight.w900),
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         '2.5h/8h',
//                         style: TextStyle(color: Color(0xff533b26)),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Column(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(10),
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                   color: Color(0xffed7e1c),
//                 ),
//                 child: const Text(
//                   'Show More',
//                   style: TextStyle(
//                       color: Colors.white, fontWeight: FontWeight.w900),
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
