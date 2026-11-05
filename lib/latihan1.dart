import 'package:flutter/material.dart';

class HalamanBeranda extends StatelessWidget {
  const HalamanBeranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF290044),
      appBar: AppBar(
        title: const Text('Beranda'),
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HalamanTentang()),
            );
          },
          child: const Text('Ke Halaman Tentang'),
        ),
      ),
    );
  }
}

class HalamanTentang extends StatelessWidget {
  const HalamanTentang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF290044),
      appBar: AppBar(
        title: const Text('Tentang'),
        backgroundColor: const Color(0xFF290044),
        foregroundColor: const Color(0xFFEEE3B0),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF500071),
            foregroundColor: const Color(0xFFEEE3B0),
          ),
          onPressed: () => Navigator.pop(context),
          child: const Text('Kembali'),
        ),
      ),
    );
  }
}