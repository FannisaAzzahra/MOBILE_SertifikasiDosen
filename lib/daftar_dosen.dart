import 'package:flutter/material.dart';
import 'profile_dosen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar dosen dengan nama dan spesialisasi
    final List<Map<String, String>> dosenList = [
      {'name': 'Dr. John Doe', 'specialty': 'Kecerdasan Buatan'},
      {'name': 'Prof. Jane Smith', 'specialty': 'Sistem Informasi'},
      {'name': 'Dr. Richard Roe', 'specialty': 'Pemrograman Mobile'},
      {'name': 'Dr. Emily White', 'specialty': 'Jaringan Komputer'},
      {'name': 'Prof. Michael Brown', 'specialty': 'Keamanan Siber'},
      {'name': 'Dr. Alice Green', 'specialty': 'Basis Data'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DAFTAR DOSEN',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFD0DFFF), // Warna AppBar sesuai dengan #D0DFFF
        centerTitle: true, // Menengahkan teks AppBar
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Aksi untuk menu
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Aksi untuk notifikasi
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Daftar Dosen JTI Polinema',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Cari dosen',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16), // Membuat sudut TextField tumpul
                ),
                suffixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: List.generate(dosenList.length, (index) {
                  final dosen = dosenList[index];
                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: const Color(0xFFD0DFFF), // Warna lingkaran avatar sesuai dengan #D0DFFF
                          child: const Icon(Icons.person, size: 40),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          dosen['name']!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          dosen['specialty']!,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
