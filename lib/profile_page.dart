import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final String userName = 'Rival Hermawan';
  final String role = 'Mahasiswa Global Institute';

  final List<String> experiences = const [
    'Helper Gudang - Shopee Hub Pasarkemis',
    'Telemarketing - The Conversion',
    'Admin HRD - PT. Sucaco Tbk Tangerang', 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profil Pengguna'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [ const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    userName,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    role,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                            textAlign: TextAlign.center,
                  ),
                  Text(
                    experiences.join('\n'),
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          
            const SizedBox(width: 16),

            ]
          ),
        ),
      );
  }
}