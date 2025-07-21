import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyForm()));

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key); // ✅ ใส่ named 'key' parameter

  @override
  MyFormState createState() => MyFormState(); // ✅ ใช้ public State class
}

// ✅ เปลี่ยนจาก _MyFormState เป็น MyFormState (ทำให้ public)
class MyFormState extends State<MyForm> {
  final TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose(); // ✅ ปล่อย resource เมื่อไม่ใช้งาน
    super.dispose();
  } //บางครั้งไม่จำเป็นต้องใช้ super.dispose() แต่แนะนำให้ใช้เพื่อความปลอดภัย

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Your name :',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    content: Text('Type : ${nameController.text}'), // ✅ ใช้ TextEditingController เพื่อดึงค่าจาก TextField โชว์ข้อความจากคอนโทรลเลอร์
                  ),
                );
              },
              child: const Text('Click Button'),
            ),
          ],
        ),
      ),
    );
  }
}
