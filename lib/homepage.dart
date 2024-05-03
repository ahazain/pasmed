import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Image.assets(
            //   '', // Ganti dengan URL gambar logo Anda
            //   width: 40,
            //   height: 40,
            //   fit: BoxFit.cover,
            // ),
            // SizedBox(width: 10),
            Text(
              'PasMed',
              style: TextStyle(
                fontSize: 20,
                fontFamily:
                    'KronaOne', // Ganti dengan jenis font yang Anda inginkan
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF31B4FD),
        toolbarHeight: 100, // Mengatur tinggi AppBar
      ),
    );
  }
}
