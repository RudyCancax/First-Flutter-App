import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 10;
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Home Screen")),
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
            )
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          elevation: 10,
          child: const Icon(Icons.add),
        ));
  }
}
