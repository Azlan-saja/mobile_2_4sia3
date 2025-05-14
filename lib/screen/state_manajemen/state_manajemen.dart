import 'package:flutter/material.dart';

class StateManajemen extends StatefulWidget {
  const StateManajemen({super.key});

  @override
  State<StateManajemen> createState() => _StateManajemenState();
}

class _StateManajemenState extends State<StateManajemen> {
  int valueCounter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layar State Manajemen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'State Local: SetState()',
              style: TextStyle(fontSize: 22),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        valueCounter--;
                      });
                    },
                    child: const Text('-1', style: TextStyle(fontSize: 22))),
                Text('$valueCounter', style: const TextStyle(fontSize: 37)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        valueCounter++;
                      });
                    },
                    child: const Text('+1', style: TextStyle(fontSize: 22))),
              ],
            ),
            const SizedBox(height: 40),
            const Divider(),
            const SizedBox(height: 40),
            const Text(
              'State Global: Package Provider',
              style: TextStyle(fontSize: 22),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: const Text('-1', style: TextStyle(fontSize: 22))),
                const Text('X', style: TextStyle(fontSize: 37)),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text('+1', style: TextStyle(fontSize: 22))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
