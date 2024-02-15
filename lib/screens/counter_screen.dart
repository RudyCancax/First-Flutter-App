import 'package:flutter/material.dart';

var counter = 0;

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Counter Screen")),
          backgroundColor: Colors.blueGrey[600],
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 30),
          elevation: 10.0,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Clicks Counter:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            Text(
              "$counter",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                counter--;
                if (counter < -10) {
                  counter = -10;
                }
                setState(() {});
              },
              elevation: 10,
              child: const Icon(Icons.phone_missed_outlined),
            ),
            const SizedBox(width: 20),
            // Reset counter
            FloatingActionButton(
              onPressed: () {
                counter = 0;
                setState(() {});
              },
              elevation: 10,
              child: const Icon(Icons.restore),
            ),
            const SizedBox(width: 20),
            // Plus 1
            FloatingActionButton(
              onPressed: () {
                counter++;
                setState(() {});
              },
              elevation: 10,
              child: const Icon(Icons.plus_one),
            ),
          ],
        ));
  }
}
