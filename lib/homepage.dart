import 'package:flutter/material.dart';
import 'package:pasmed/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  late List<Widget> _widgetOptions;

  bool _isFormVisible = false;

  void _toggleFormVisibility() {
    setState(() {
      _isFormVisible = !_isFormVisible;
    });
  }

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      HomeScreen(toggleFormVisibility: _toggleFormVisibility),
      VisitScreen(),
      ProfileScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (_selectedIndex == 2)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Profil',
                  style: TextStyle(fontSize: 24, fontFamily: 'KronaOne'),
                ),
                SizedBox(width: 10), // Jarak antara teks dan ikon
                IconButton(
                  onPressed: () {
                    // Aksi ketika ikon pengaturan ditekan
                  },
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
          if (_selectedIndex == 0)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'PasMed',
                  style: TextStyle(fontSize: 24, fontFamily: 'KronaOne'),
                ),
                SizedBox(width: 10), // Jarak antara teks dan ikon
              ],
            ),
          if (_selectedIndex == 1)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Data Kunjungan',
                  style: TextStyle(fontSize: 24, fontFamily: 'KronaOne'),
                ),
                SizedBox(width: 10), // Jarak antara teks dan ikon
              ],
            ),
        ],
        backgroundColor: const Color(0xFF31B4FD),
        toolbarHeight: 80,
      ),
      body: Stack(
        children: [
          _widgetOptions[_selectedIndex],
          AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: _isFormVisible ? 1.0 : 0.0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama Pasien',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Kunjungan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
              onPressed: _toggleFormVisibility,
              backgroundColor: Colors.blue,
              child: Icon(Icons.add),
            )
          : null,
    );
  }
}

class HomeScreen extends StatelessWidget {
  final VoidCallback toggleFormVisibility;

  const HomeScreen({required this.toggleFormVisibility});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Poskesmas Jogoloyo',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          '12.60 | 3 Maret 2024',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi ketika tombol Tambah Pasien ditekan
                toggleFormVisibility();
              },
              child: Text(
                'Tambah Pasien',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi ketika tombol Hasil Periksa ditekan
              },
              child: Text(
                'Hasil Periksa',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class VisitScreen extends StatelessWidget {
  // Dummy data for patient visits
  final List<PatientVisit> patientVisits = [
    PatientVisit(nik: '1234567890', visitDate: '2024-05-06'),
    PatientVisit(nik: '2345678901', visitDate: '2024-05-05'),
    PatientVisit(nik: '3456789012', visitDate: '2024-05-04'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: patientVisits.length,
        itemBuilder: (context, index) {
          final visit = patientVisits[index];
          return ListTile(
            title: Text('NIK: ${visit.nik}'),
            subtitle: Text('Visit Date: ${visit.visitDate}'),
          );
        },
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(''),
            ),
            SizedBox(height: 20),
            Text(
              'Nama Pengguna',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );
              },
              child: Text('keluar'),
            ),
          ],
        ),
      ),
    );
  }
}

class PatientVisit {
  final String nik;
  final String visitDate;

  PatientVisit({required this.nik, required this.visitDate});
}
