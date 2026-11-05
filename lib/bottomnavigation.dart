import 'package:flutter/material.dart';

class Utamabar extends StatefulWidget {
  const Utamabar({super.key});

  @override
  State<Utamabar> createState() => _UtamabarState();
}

class _UtamabarState extends State<Utamabar> {
  int _index = 0;

  final List<Widget> _halaman = [
    const Center(
      child: Text(
        'Halaman Beranda',
        style: TextStyle(fontSize: 20, color: Color(0xFFEEE3B0)),
      ),
    ),

    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          TextField(
            style: TextStyle(color: Color(0xFFEEE3B0)),
            decoration: InputDecoration(
              hintText: 'Cari sesuatu...',
              hintStyle: TextStyle(color: Color(0xFFEEE3B0)),
              prefixIcon: Icon(Icons.search, color: Color(0xFF500071)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF500071)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFEEE3B0)),
              ),
            ),
          ),
        ],
      ),
    ),

    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.person,
            size: 90,
            color: Color(0xFF500071),
          ),
          SizedBox(height: 15),
          Text(
            'Iwed Sudah Kenyang',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEEE3B0),
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF290044),
      appBar: AppBar(
        title: const Text('Bottom Navigation'),
        backgroundColor: const Color(0xFF290044),
        foregroundColor: const Color(0xFFEEE3B0),
      ),
      body: _halaman[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        backgroundColor: const Color(0xFF290044),
        selectedItemColor: const Color(0xFFEEE3B0),
        unselectedItemColor: const Color(0xFF500071),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}