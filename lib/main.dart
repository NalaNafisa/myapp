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
                  'https://i.pinimg.com/564x/98/6d/ff/986dffead4e5f547c3f5698b589f5397.jpg',
                ),
                fit: BoxFit
                    .cover, // This makes the image cover the entire background
              ),
            ),
          ),
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height),
            painter: FaceOutlinePainter(),
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
                  'Take the front side face',
                  style: TextStyle(
                    color: Colors.white,
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
              color: const Color(0xFF0047B3), // Warna rectangle
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      width: 47,
                      height: 51,
                      color: Colors.white, // Warna kamera button
                      child: IconButton(
                        icon: const Icon(Icons.camera_alt, color: Colors.black),
                        onPressed: () {
                          // Tambahkan aksi saat tombol ditekan
                        },
                      ),
                    ),
                  ),
                  // Ikon flash
                  Positioned(
                    left: 20,
                    top: 30,
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      width: 37,
                      height: 50,
                      child: const Icon(
                        Icons.flash_on, // Menggunakan ikon flash
                        color: Color.fromARGB(255, 255, 255, 255), // Warna flash
                        size: 20, // Ukuran ikon
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FaceOutlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black.withOpacity(0.3) // Warna hitam dengan opasitas 30%
      ..style = PaintingStyle.fill;

    // Garis siku
    double width = 57.35;
    double height = 57.31;
    //double rotation = 180 * (3.14159 / 180); // Rotasi 180 derajat dalam radian
    // Garis siku kiri atas
    canvas.save();
    canvas.translate(115.35, 231);
    // canvas.rotate(rotation);
    canvas.drawRect(
        Rect.fromLTWH(-width / 2, -height / 2, width, height), paint);
    canvas.restore();

    // Garis siku kanan atas
    canvas.drawRect(Rect.fromLTWH(275.65, 231, width, height), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
