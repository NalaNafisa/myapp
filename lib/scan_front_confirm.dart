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
                fit: BoxFit.cover, // This makes the image cover the entire background
              ),
            ),
          ),
         
          // Positioned text with specific width, height, and position
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 187,
                height: 24,
                alignment: Alignment.center,
                child: const Text(
                  'Front Face',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          // Rectangle di bagian bawah dengan kamera button dan flash icon
          Positioned(
            left: -13,
            bottom: -47,
            child: Container(
              width: 417,
              height: 108,
              color: const Color.fromARGB(255, 96, 97, 99), // Warna rectangle utama
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Rectangle kiri dengan teks Re-Take
                  Positioned(
                    left: 48,
                    bottom: 20, // Hitung posisi bottom dari y = 772 relatif ke Stack
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
                    bottom: 20, // Hitung posisi bottom dari y = 772 relatif ke Stack
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
            ),
          ),
          // Rectangle dengan gambar yang diinginkan
          Positioned(
            left: 90,
            top: 130,
            child: Container(
              width: 210,
              height: 275,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), // Corner radius 16
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://i.pinimg.com/564x/91/22/2d/91222d23eb4aef4aeb93d7cc67e10bd3.jpg', // URL gambar
                  ),
                  fit: BoxFit.cover, // Mengisi rectangle dengan gambar
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
