import 'package:copycat_app/widgets/context.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Copycat App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: const Scaffold(
        body: TextCon.purple(),
      ),
    );
  }
}


// We can do both
// We can Use multbale constractors for the same class
//  body: TextCon(
//           deepColor: Colors.deepPurple,
//           brightColor: Color.fromARGB(255, 26, 2, 80),
//         )
