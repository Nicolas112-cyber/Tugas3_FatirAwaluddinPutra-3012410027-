import 'package:flutter/material.dart';

class Produk {
  final String nama;
  final int harga;

  const Produk(this.nama, this.harga);
}

class HalamanDaftarProduk extends StatelessWidget {
  const HalamanDaftarProduk({super.key});

  final List<Produk> daftarProduk = const [
    Produk('Nasi uduk', 15000),
    Produk('Nasi Bayam coklat', 23000),
    Produk('Nasi tempong', 25000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF290044),
      appBar: AppBar(
        title: const Text('Daftar Menu'),
        backgroundColor: const Color(0xFF290044),
        foregroundColor: const Color(0xFFEEE3B0),
      ),
      body: ListView.builder(
        itemCount: daftarProduk.length,
        itemBuilder: (context, index) {
          final p = daftarProduk[index];
          return ListTile(
            leading: const Icon(Icons.fastfood, color: Color(0xFF500071)),
            title: Text(
              p.nama,
              style: const TextStyle(color: Color(0xFFEEE3B0)),
            ),
            subtitle: Text(
              'Rp ${p.harga}',
              style: const TextStyle(color: Color(0xFFEEE3B0)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailProduk(produk: p),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailProduk extends StatelessWidget {
  final Produk produk;

  const DetailProduk({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF290044),
      appBar: AppBar(
        title: Text(produk.nama),
        backgroundColor: const Color(0xFF290044),
        foregroundColor: const Color(0xFFEEE3B0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.restaurant_menu, size: 80, color: Color(0xFF500071)),
            const SizedBox(height: 20),
            Text(
              'Nama: ${produk.nama}',
              style: const TextStyle(fontSize: 22, color: Color(0xFFEEE3B0)),
            ),
            const SizedBox(height: 10),
            Text(
              'Harga: Rp ${produk.harga}',
              style: const TextStyle(fontSize: 18, color: Color(0xFFEEE3B0)),
            ),
            const SizedBox(height: 25),
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