import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Background Image',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFC8C8C8)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  '', // Tambahkan URL gambar di sini
                ),
                fit: BoxFit.cover, // Mengisi seluruh background
              ),
            ),
          ),

          // Rectangle utama di bagian tengah
          Positioned(
            left: 90,
            top: 130,
            child: Container(
              width: 210,
              height: 275,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9), // Warna rectangle luar D9D9D9
                borderRadius: BorderRadius.circular(16), // Corner radius 16
              ),
            ),
          ),

         /// Rectangle baru di luar rectangle utama
          Positioned(
            left: 40, // Mengubah posisi left agar rectangle berada di luar
            top: 165, // Top disesuaikan untuk posisi yang diinginkan
            child: Container(
              width: 300,
              height: 210,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF), // Warna rectangle dalam FFFFFF
                borderRadius: BorderRadius.circular(27), // Corner radius 27
              ),
              child: Stack(
                children: [
                  // Teks di atas kartu
                  const Positioned(
                    left: 0,
                    top: 10, // Menempatkan teks di bagian atas rectangle
                    right: 0,
                    child: Column(
                      children: [
                        Text(
                          'Discard scan?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins', // Ganti dengan font Poppins
                            fontWeight: FontWeight.w500, // Medium
                            fontSize: 12,
                            color: Colors.black, // Warna teks hitam
                          ),
                        ),
                        SizedBox(height: 4), // Jarak antara teks
                        Text(
                          'If you go back now, you’ll lose all the photos you’ve taken',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins', // Ganti dengan font Poppins
                            fontWeight: FontWeight.w400, // Regular
                            fontSize: 10,
                            color: Colors.black, // Warna teks hitam
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Kartu atas
                  Positioned(
                    left: 91, // Menempatkan kartu di tengah
                    top: 120,  // Mengubah posisi untuk menempatkan di dalam rectangle
                    child: Container(
                      width: 119,
                      height: 26,
                      decoration: BoxDecoration(
                        color: const Color(0xFF0047B3), // Warna kartu atas
                        borderRadius: BorderRadius.circular(8), // Corner radius 8
                      ),
                      child: const Center(
                        child: Text(
                          'Discard',
                          style: TextStyle(
                            color: Colors.white, // Warna teks putih
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Kartu bawah
                  Positioned(
                    left: 91, // Menempatkan kartu di tengah
                    top: 160,  // Menempatkan di bawah kartu atas
                    child: Container(
                      width: 119,
                      height: 26,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9), // Warna kartu bawah
                        borderRadius: BorderRadius.circular(8), // Corner radius 8
                      ),
                      child: const Center(
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.black, // Warna teks hitam
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Rectangle kiri dengan teks Re-Take
          Positioned(
            left: 48,
            bottom: 20, // Posisi relative ke Stack
            child: Container(
              width: 134,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFFE1DFDF), // Warna rectangle kiri
                borderRadius: BorderRadius.circular(10), // Corner radius 10
              ),
              child: const Center(
                child: Text(
                  'Re-Take',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Warna teks hitam
                  ),
                ),
              ),
            ),
          ),

          // Rectangle kanan dengan teks Confirm
          Positioned(
            left: 209,
            bottom: 20, // Posisi relative ke Stack
            child: Container(
              width: 134,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFF0047B3), // Warna rectangle kanan
                borderRadius: BorderRadius.circular(10), // Corner radius 10
              ),
              child: const Center(
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Warna teks putih
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
