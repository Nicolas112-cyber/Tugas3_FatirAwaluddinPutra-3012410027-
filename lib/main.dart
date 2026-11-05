import 'package:flutter/material.dart';

import 'latihan1.dart';
import 'latihan2.dart';
import 'latihan3.dart';
import 'bottomnavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Navigasi Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF290044),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HalamanMenuUtama(),
        '/halaman1': (context) => const HalamanSatu(),
        '/halaman2': (context) => const HalamanDua(),
        '/halaman3': (context) => const HalamanTiga(),
      },
    );
  }
}

class HalamanMenuUtama extends StatelessWidget {
  const HalamanMenuUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF290044),
      appBar: AppBar(
        title: const Text('Menu Utama'),
        backgroundColor: const Color(0xFF290044),
        foregroundColor: const Color(0xFFEEE3B0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF500071),
                foregroundColor: const Color(0xFFEEE3B0),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HalamanBeranda()),
                );
              },
              child: const Text('Push & Pop'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF500071),
                foregroundColor: const Color(0xFFEEE3B0),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HalamanDaftarProduk()),
                );
              },
              child: const Text('Kirim Data'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF500071),
                foregroundColor: const Color(0xFFEEE3B0),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/halaman1');
              },
              child: const Text('Named Routes'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF500071),
                foregroundColor: const Color(0xFFEEE3B0),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Utamabar()),
                );
              },
              child: const Text('BottomNavigationBar'),
            ),
          ],
        ),
      ),
    );
  }
}