import 'package:flutter/material.dart';
import 'package:flutter_widget_exercise/lesson/form_widget.dart';
import 'package:flutter_widget_exercise/lesson/scaffold_widget.dart';
import 'package:flutter_widget_exercise/material3/badges.dart';
import 'package:flutter_widget_exercise/material3/common_button.dart';
import 'package:flutter_widget_exercise/material3/floating_action_buttons.dart';
import 'package:flutter_widget_exercise/material3/icons_buttons.dart';
import 'package:flutter_widget_exercise/material3/nav_bar.dart';
import 'package:flutter_widget_exercise/material3/nav_rail.dart';
import 'package:flutter_widget_exercise/material3/segmented_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Home'),
      //   ),
      //   body: const Center(
      //     child: Text(
      //       'Hello World!',
      //     ),
      //   ),
      // ),
      // home: const CommonButton(),
      // home: const FloatingActionButtons(),
      // home: const IconButtons(),
      // home: const SegmentedButtons(),
      // home: const Badges(),
      // home: const NavBar(),
      home: const NavRail(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
