import 'package:flutter/material.dart';
import 'menu.dart';
import 'location.dart'; // Importing location.dart file which contains LocationPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Set the initial route to home
      routes: {
        '/': (context) => HomePage(), // Home route
        '/menu': (context) => MenuPage(), // Menu route
        '/branches': (context) => LocationPage(), // Branches route
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/menu');
              },
              child: Text('View Menu'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/branches');
              },
              child: Text('Branches'),
            ),
          ],
        ),
      ),
    );
  }
}
