import 'package:flutter/material.dart';

class NavigationSatu extends StatelessWidget {
  final String data;
  const NavigationSatu({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kirim Data'),
      ),
      body: Center(
        child: Text('Hei kawan. Nama saya $data'),
      ),
    );
  }
}
