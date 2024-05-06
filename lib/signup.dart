import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasmed/main.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 428,
              height: 1000,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 234, 234, 234)),
              child: Stack(
                children: [
                  Positioned(
                    //container judul
                    left: 25,
                    top: 20,
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
                              'DAFTAR',
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
                    top: 200,
                    child: Container(
                        width: 310,
                        height: 900,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .center, // Mengubah penataan teks ke tengah
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Nama Poskesmas",
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
                                    20), // Menambahkan spasi antara TextField
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Provinsi",
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
                                    20), // Menambahkan spasi antara kolom password dan tombol "Forgot Password"
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Kabupaten",
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
                                    20), // Menambahkan spasi antara kolom password dan tombol "Forgot Password"
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Kecamatan",
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
                                    20), // Menambahkan spasi antara kolom password dan tombol "Forgot Password"
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Desa",
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
                                    20), // Menambahkan spasi antara kolom password dan tombol "Forgot Password"
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Email",
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
                                    20), // Menambahkan spasi antara kolom password dan tombol "Forgot Password"
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
                                    20), // Menambahkan spasi antara kolom password dan tombol "Forgot Password"
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Konfirmasi Kata Sandi",
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
                                    20), // Menambahkan spasi antara kolom password dan tombol "Forgot Password"
                          ],
                        )),
                  ),
                  Positioned(
                    // container login button
                    left: 55, // Sesuaikan dengan posisi yang diinginkan
                    top: 870, // Sesuaikan dengan posisi yang diinginkan
                    child: SizedBox(
                      width: 300, // Tentukan panjang tombol
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyApp(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(
                              0xFF32B4FE)), // Ubah warna latar belakang sesuai keinginan
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15.0), // Sesuaikan dengan radius yang diinginkan
                            ),
                          ),
                        ),
                        child: Text(
                          "Daftar",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                            fontSize:
                                18, // Sesuaikan dengan ukuran font yang diinginkan
                            color:
                                Colors.black, // Ubah warna teks menjadi hitam
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 124,
                    top: 950,
                    child: SizedBox(
                      width: 300,
                      height: 15,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyApp(),
                            ),
                          );
                        },
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Sudah punya akun? ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'Masuk',
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
