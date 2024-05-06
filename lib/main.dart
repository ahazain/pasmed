import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:pasmed/homepage.dart';
import 'package:pasmed/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 213, 179, 179)),
        useMaterial3: true,
      ),
      home: const LoginPage(title: ''),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 428,
              height: 783,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 234, 234, 234)),
              child: Stack(
                children: [
                  Positioned(
                    //container judul
                    left: 25,
                    top: 170,
                    child: Container(
                      width: 324,
                      height: 150,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 9,
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Stack(children: [
                                Image.asset(
                                    'assets/images/Blue_Green_Simple_Medical_Center_Logo-removebg-preview.png'),
                              ]),
                            ),
                          ),
                          Positioned(
                            left: 90,
                            top: 32,
                            child: Text(
                              'PasMed',
                              style: TextStyle(
                                color: Color(0xFF373F40),
                                fontSize: 45,
                                fontFamily: 'KronaOne',
                                fontWeight: FontWeight.w900,
                                height: 0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 133,
                            top: 120,
                            child: Text(
                              'MASUK',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    //container input email and passw
                    left: 50,
                    top: 350,
                    child: Container(
                        width: 310,
                        height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .center, // Mengubah penataan teks ke tengah
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Email",
                                labelStyle: TextStyle(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    20), // Menambahkan spasi antara TextField
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Kata Sandi",
                                labelStyle: TextStyle(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    2), // Menambahkan spasi antara kolom password dan tombol "Forgot Password"
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  // Action ketika tombol "Forgot Password" ditekan
                                },
                                child: Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Positioned(
                    // container login button
                    left: 55, // Sesuaikan dengan posisi yang diinginkan
                    top: 560, // Sesuaikan dengan posisi yang diinginkan
                    child: SizedBox(
                      width: 300, // Tentukan panjang tombol
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(
                              0xFF32B4FE)), // Warna latar belakang sesuai keinginan
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15.0), // Radius sesuai keinginan
                            ),
                          ),
                        ),
                        child: Text(
                          "Masuk",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                            fontSize: 18, // Ukuran font sesuai keinginan
                            color: Colors.black, // Warna teks menjadi hitam
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 124,
                    top: 618,
                    child: SizedBox(
                      width: 300,
                      height: 15,
                      child: GestureDetector(
                        onTap: () {
                          // Action ketika label "Masuk" ditekan
                          Navigator.pushReplacement(
                            // Replace the current route with the new one
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SignupPage(), // Navigate back to login page
                            ),
                          );
                        },
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Belum punya akun? ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'Daftar',
                                style: TextStyle(
                                  color: Color(0xFF005688),
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration
                                      .underline, // Tambahkan dekorasi garis bawah pada teks "Daftar"
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
