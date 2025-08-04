import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Navigator Example',
home: FirstPage(),
);
}
}
class FirstPage extends StatefulWidget {
@override
_FirstPageState createState() => _FirstPageState();
}
class _FirstPageState extends State<FirstPage> {
String? returnedData;
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('First Page')),
body: Center(
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
children: [
ElevatedButton(
child: Text('Go to Second Page'),
onPressed: () async {
// Send data and wait for a result
final result = await Navigator.push(
context,
MaterialPageRoute(
builder: (context) => SecondPage(message: 'Hello from First Page'),
),
);
// Display returned result
setState(() {
returnedData = result;
});
},
),
SizedBox(height: 20),
Text(
returnedData == null
? 'No data returned yet'
: 'Returned value: $returnedData',
style: TextStyle(fontSize: 16),
),
],
),
),
);
}
}
class SecondPage extends StatelessWidget {
final String message;
SecondPage({required this.message});
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('Second Page')),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
'Received message: $message',
style: TextStyle(fontSize: 18),
),
SizedBox(height: 20),
ElevatedButton(
child: Text('Return data to First Page'),
onPressed: () {
Navigator.pop(context, 'Data from Second Page');
},
),
],
),
),
);
}
}