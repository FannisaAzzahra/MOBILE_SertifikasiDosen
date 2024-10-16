import 'package:flutter/material.dart';
import 'package:ujicoba/daftar_dosen.dart';
import 'profile_dosen.dart';
import 'profile_pimjur.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Dosen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFD0DFFF)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      routes: {
        '/daftardosen': (context)=>MyHomePage(),
        '/profile' : (context)=>DosenProfilePage(),
        '/profile_pinjur' : (context)=>PinjurProfilePage(),
      },
    );
  }
}
