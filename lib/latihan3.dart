import 'package:flutter/material.dart';

class HalamanSatu extends StatelessWidget {
  const HalamanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF290044),
      appBar: AppBar(
        title: const Text('Halaman 1'),
        backgroundColor: const Color(0xFF290044),
        foregroundColor: const Color(0xFFEEE3B0),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF500071),
            foregroundColor: const Color(0xFFEEE3B0),
          ),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/halaman2',
              arguments: 'Siap komandan laporan diterima.',
            );
          },
          child: const Text('Ke Halaman 2'),
        ),
      ),
    );
  }
}

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key});

  @override
  Widget build(BuildContext context) {
    final pesan = ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      backgroundColor: const Color(0xFF290044),
      appBar: AppBar(
        title: const Text('Halaman 2'),
        backgroundColor: const Color(0xFF290044),
        foregroundColor: const Color(0xFFEEE3B0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Argumen diterima: ${pesan ?? "-"}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, color: Color(0xFFEEE3B0)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF500071),
                foregroundColor: const Color(0xFFEEE3B0),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/halaman3',
                  arguments: 'laksanakan komandan laporan diterima',
                );
              },
              child: const Text('Ke Halaman 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class HalamanTiga extends StatelessWidget {
  const HalamanTiga({super.key});

  @override
  Widget build(BuildContext context) {
    final pesan = ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      backgroundColor: const Color(0xFF290044),
      appBar: AppBar(
        title: const Text('Halaman 3'),
        backgroundColor: const Color(0xFF290044),
        foregroundColor: const Color(0xFFEEE3B0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Argumen diterima: ${pesan ?? "-"}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, color: Color(0xFFEEE3B0)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF500071),
                foregroundColor: const Color(0xFFEEE3B0),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}