import 'package:flutter/material.dart';
import 'second_page.dart';

void main() => runApp(MaterialApp(home: FirstPage()));

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Multiple values to send
    final String username = "flutter_user";
    final int age = 25;
    final bool isMember = true;

    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Second Page'),
          onPressed: () {
            // Send multiple values via constructor
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(
                  username: username,
                  age: age,
                  isMember: isMember,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
