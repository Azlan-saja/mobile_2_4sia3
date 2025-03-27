import 'package:flutter/material.dart';
import 'package:master/screen/navigation/navigation_dua.dart';
import 'package:master/screen/navigation/navigation_satu.dart';
import 'package:master/screen/navigation/navigation_tiga.dart';

class Navigation extends StatelessWidget {
  final terimaData = TextEditingController();
  final kirimNilai1 = TextEditingController();

  Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationSatu(
                      data: 'Azlansaja',
                    ),
                  ),
                );
              },
              child: const Text('Kirim Data'),
            ),
            ElevatedButton(
              onPressed: () async {
                final hasil = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationDua(),
                  ),
                );
                (hasil != null)
                    ? terimaData.text = hasil.toString()
                    : terimaData.clear();
              },
              child: const Text('Terima Data'),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(),
              child: TextFormField(
                readOnly: true,
                controller: terimaData,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Terima Data',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.check,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  helperText: "Datanya apa ya?",
                ),
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: kirimNilai1,
                maxLength: 2,
                decoration: const InputDecoration(
                  labelText: 'Kirim Data ',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.check,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  helperText: "Silahkan input nilai data yang dikirim!",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final hasil = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        NavigationTiga(nilai1: int.parse(kirimNilai1.text)),
                  ),
                );
                if (hasil != null) {
                  if (!context.mounted) return;
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(hasil),
                      );
                    },
                  );
                }
              },
              child: const Text('Kirim & Terima Data'),
            ),
          ],
        ),
      ),
    );
  }
}
