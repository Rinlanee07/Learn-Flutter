import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color.fromARGB(255, 254, 255, 255),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xFFE3F2FD), // สีฟ้าอ่อน
    appBar: AppBar(
  title: const Text(
    "View location",
    style: TextStyle(color: Colors.white),
  ),
  backgroundColor: const Color.fromARGB(255, 57, 60, 211), 
),
      body: SingleChildScrollView(
  child: Column(
    children: [
          const SizedBox(height: 16), // เพิ่มระยะห่างจาก AppBar
          ClipRRect(
            borderRadius: BorderRadius.circular(18), 
            child: Image.network(
              'https://images.unsplash.com/photo-1506744038136-46273834b3fb', 
              height: 180,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Click 1',
              style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.bold, 
              ),
            ),
          ),
          const SizedBox(height: 12),
          Column(
            children: const [
              Text(
                "Beautiful places!",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Wellcome to the world of View location.",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16), // เพิ่มระยะห่างจาก AppBar
          ClipRRect(
            borderRadius: BorderRadius.circular(18), 
            child: Image.network(
              'https://cf.bstatic.com/xdata/images/hotel/max1024x768/497544265.jpg?k=6cfc3d8c6cca725563909319e536319168d6ee7ef6e0dd0128635c5010b9199f&o=&hp=1', // ภาพต้นไม้กับท้องฟ้ายามเย็น
              height: 180,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Click 1',
              style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.bold, 
              ),
            ),
          ),
          SizedBox(height: 50), 
          Center(
            child: Container(
              width: 370, 
              height: 60,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                "Come visit again!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),

        ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,
  selectedItemColor: const Color.fromARGB(255, 57, 60, 211),       
  unselectedItemColor: Colors.grey,       
  onTap: (index) {
    setState(() {
      _selectedIndex = index;
    });
  },
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.info),
      label: 'About',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Setting',
          ),
        ],
      ),
    );
  }
}