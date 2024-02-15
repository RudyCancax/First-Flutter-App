import 'package:flutter/material.dart';

var counter = 0;

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  increase() {
    counter++;
    setState(() {});
  }

  decrease() {
    counter--;
    setState(() {});
  }

  reset() {
    counter = 0;
    setState(() {});
  }

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
        floatingActionButton: FloatinButtonsActions(
            plusOne: increase, minusOne: decrease, resetCounter: reset));
  }
}

class FloatinButtonsActions extends StatelessWidget {
  final Function plusOne;
  final Function minusOne;
  final Function resetCounter;

  const FloatinButtonsActions({
    super.key,
    required this.plusOne,
    required this.minusOne,
    required this.resetCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          elevation: 10,
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => minusOne(),
        ),
        // Reset counter
        FloatingActionButton(
          onPressed: () => resetCounter(),
          elevation: 10,
          child: const Icon(Icons.exposure_zero),
        ),
        // Plus 1
        FloatingActionButton(
          onPressed: () => plusOne(),
          elevation: 10,
          child: const Icon(Icons.plus_one),
        ),
      ],
    );
  }
}
