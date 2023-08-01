import 'package:flutter/material.dart';

import 'TaskListPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Hide the debug banner
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    double containerHeight = screenHight * 0.5;

    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: containerHeight,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome To",
                  style: TextStyle(fontSize: 12.0),
                ),
                Text(
                  "Plan IT",
                  style: TextStyle(fontSize: 31.0, fontWeight: FontWeight.w900),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: containerHeight,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Your Personal task Management\n and planning solution",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TaskListPage()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 45),
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Let's Get Started",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
