import 'package:flutter/material.dart';
import 'package:flutter_coeez/constants/color.dart';
import 'quiz_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightgreen,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: darkblue,
        title: Text(
          'کوییز کینگ',
          style: TextStyle(color: kerem, fontSize: 25),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Image(
                  image: AssetImage('images/qu.png'),
                ),
              ),
            ),
            SizedBox(height: 55),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(350, 50),
                backgroundColor: darkblue,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => QuizPage(),
                  ),
                );
              },
              child: Text(
                'شروع بازی',
                style: TextStyle(
                  color: kerem,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
