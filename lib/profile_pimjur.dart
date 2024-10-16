
import 'package:flutter/material.dart';
import 'daftar_dosen.dart';

class PinjurProfilePage extends StatelessWidget {
  const PinjurProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PROFILE',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFD0DFFF),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/daftardosen');
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
              // Aksi untuk profile
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, size: 50),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Dr. Ahmad Rizal',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Text(
                      'Pimpinan Jurusan Teknologi Informasi',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const SectionTitle(title: 'Tentang'),
              const Text(
                'Dr. Ahmad Rizal menjabat sebagai Pimpinan Jurusan Teknologi Informasi di Politeknik Negeri Malang. Dengan pengalaman lebih dari 15 tahun di dunia akademis, beliau berkomitmen untuk memajukan kurikulum dan inovasi dalam pendidikan teknologi informasi. Fokus penelitian beliau mencakup kecerdasan buatan dan pengembangan sistem informasi yang adaptif.',
                textAlign: TextAlign.justify, // Meratakan teks
              ),
              const SizedBox(height: 16),
              const SectionTitle(title: 'Pendidikan'),
              const Text(
                'S1: Teknik Informatika, Universitas XYZ \nS2: Magister Sistem Informasi, Universitas PQR \nS3: Doktor Teknologi Informasi, Universitas STU.',
                textAlign: TextAlign.justify, // Meratakan teks
              ),
              const SizedBox(height: 16),
              const SectionTitle(title: 'Bidang Keahlian'),
              const Text(
                'Kecerdasan Buatan, Pengembangan Sistem Informasi, Teknologi Big Data, dan Internet of Things (IoT).',
                textAlign: TextAlign.justify, // Meratakan teks
              ),
              const SizedBox(height: 16),
              const SectionTitle(title: 'HKI dan Produk Unggulan'),
              const Text(
                'Beliau telah mendaftarkan beberapa HKI yang berkaitan dengan sistem informasi dan algoritma pembelajaran mesin. Produk unggulan yang diciptakan termasuk aplikasi analisis data dan platform pembelajaran berbasis AI.',
                textAlign: TextAlign.justify, // Meratakan teks
              ),
              const SizedBox(height: 24),
              
              // Bagian Sertifikasi dengan warna latar belakang
              const SectionTitle(title: 'Sertifikasi'),
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    CertificationCard(title: 'Sertifikasi Pemrograman Python', certificateNumber: 'PYTHON789', date: 'Februari 2024'),
                    CertificationCard(title: 'Sertifikasi Pengembangan Software', certificateNumber: 'SWDEV654', date: 'April 2023'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              
              // Bagian Pelatihan dengan warna latar belakang
              const SectionTitle(title: 'Pelatihan'),
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    CertificationCard(title: 'Pelatihan Machine Learning', certificateNumber: 'ML2023', date: 'Juli 2023'),
                    CertificationCard(title: 'Workshop Pemrograman Flutter', certificateNumber: 'FLUTTER2024', date: 'September 2023'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const SectionTitle(title: 'Rekomendasi Dosen Lain'),
              const SizedBox(height: 16),
              // Bagian rekomendasi dosen
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedDosenCard(
                    name: 'Dr. Alex Johnsonh',
                    specialty: 'Jaringan Komputer',
                  ),
                  ElevatedDosenCard(
                    name: 'Dr. Linda White',
                    specialty: 'Keamanan Siber',
                  ),
                  ElevatedDosenCard(
                    name: 'Dr. Sarah Lee',
                    specialty: 'Data Science',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}

class CertificationCard extends StatelessWidget {
  final String title;
  final String certificateNumber;
  final String date;

  const CertificationCard({
    required this.title,
    required this.certificateNumber,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nomor Sertifikat: $certificateNumber'),
            Text('Tanggal: $date'),
          ],
        ),
        trailing: SizedBox(
          width: 100, // Atur lebar sesuai kebutuhan
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8), // Ubah padding untuk ukuran tombol
              backgroundColor: const Color(0xFF3D63DD), // Warna tombol
            ),
            onPressed: () {
              // Aksi untuk bukti sertifikat
            },
            child: const Text(
              'Bukti Sertifikat',
              style: TextStyle(
                fontSize: 10, // Ukuran font tombol lebih kecil
                color: Colors.white, // Warna teks putih
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class ElevatedDosenCard extends StatelessWidget {
  final String name;
  final String specialty;

  const ElevatedDosenCard({required this.name, required this.specialty});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6, // Elevasi untuk membuat efek timbul
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Membuat sudut lebih tumpul
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 100, // Lebar kotak rekomendasi dosen
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFFD0DFFF),
              child: Icon(Icons.person, size: 30),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12, // Ukuran font lebih kecil
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              specialty,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10), // Ukuran font lebih kecil
            ),
          ],
        ),
      ),
    );
  }
}
