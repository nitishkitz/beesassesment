// import 'package:aoi/dashboard.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   //State class
//   int _page = 0;
//   late PageController _pageController;
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(initialPage: _page);
//   }
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         buttonBackgroundColor: Colors.green,
//         color: Colors.green,
//         animationDuration: const Duration(milliseconds: 300),
//         items: const <Widget>[
//           Icon(Icons.home, size: 26, color: Colors.white),
//           Icon(Icons.message, size: 26, color: Colors.white),
//           Icon(Icons.add, size: 26, color: Colors.white),
//           Icon(Icons.notifications, size: 26, color: Colors.white),
//           Icon(Icons.person, size: 26, color: Colors.white),
//         ],
//         onTap: (index) {
//           setState(() {
//             _page = index;
//             _pageController.animateToPage(_page,
//                 duration: Duration(milliseconds: 300), curve: Curves.ease);
//           });
//         },
//       ),
//       body: PageView(
//         controller: _pageController,
//         onPageChanged: (index) {
//           setState(() {
//             _page = index;
//           });
//         },
//         children: <Widget>[
//           dashboard(),
//           Center(child: Text('Messages')),
//           Center(child: Text('Add')),
//           Center(child: Text('Notifications')),
//           Center(child: Text('Profile')),
//         ],
//       ),
//     );
//   }
// }
