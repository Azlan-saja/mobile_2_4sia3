import 'package:flutter/material.dart';

class NavigationTiga extends StatelessWidget {
  final int nilai1;

  NavigationTiga({super.key, required this.nilai1});

  final nilai2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation 3'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                initialValue: nilai1.toString(),
                readOnly: true,
                maxLength: 2,
                decoration: const InputDecoration(
                  labelText: 'Nilai 1',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.check,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  helperText: "Data dari Layar Navigation",
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: nilai2,
                keyboardType: TextInputType.number,
                maxLength: 2,
                decoration: const InputDecoration(
                  labelText: 'Nilai 2',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.check,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  helperText: "Silakan input nilai 2 sekarang!",
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  final tambah = nilai1 + int.parse(nilai2.text);
                  Navigator.pop(context, "$nilai1 + ${nilai2.text} = $tambah");
                },
                child: const Text('Hitung & Tutup'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
