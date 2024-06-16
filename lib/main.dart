import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Absensi Kelas Mobile Programming Lanjut'),
        ),
        body: const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TeksUtama(
                teks1: 'Amin Supono',
                teks2: 'NIM: STI202102384',
              ),
              TeksUtama(
                teks1: 'Rahman Ramadani',
                teks2: 'NIM: STI202102385',
              ),
              TeksUtama(
                teks1: 'Desta Mutiara Kardiansyah',
                teks2: 'NIM: STI202102389',
                backgroundColor: Colors.green, // Mengatur latar belakang hijau
              ),
              TeksUtama(
                teks1: 'Yusuf Jauhar Alif Faqih',
                teks2: 'NIM: STI202102390',
              ),
              TeksUtama(
                teks1: 'Randi Pangestu',
                teks2: 'NIM: STI202102392',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final Color? backgroundColor; // Tambahkan variabel untuk warna latar belakang

  const TeksUtama({
    Key? key,
    required this.teks1,
    required this.teks2,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container( // Gunakan Container untuk mengatur latar belakang
            color: backgroundColor, // Tetapkan warna latar belakang
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  teks1,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
                Text(
                  teks2,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
