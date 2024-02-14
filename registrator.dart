import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageA(),
    );
  }
}

class AppColors {
  static const red = Color(0xEDB50B29);
  static const green = Color(0xC813450D);
  static const blue = Color(0xFF4042EE);
}

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
        backgroundColor: AppColors.blue,
      ),
      body: Center(
        child: TextButton(
          child: const Text('start'),
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(fontSize: 20),
            backgroundColor: Colors.pink,
            foregroundColor: Colors.white,
            elevation: 5.0,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageB()),
            );
          },
        ),
      ),
    );
  }
}

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('authorization'),
        backgroundColor: AppColors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Login',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: const Text('Go back'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.white,
                    elevation: 5.0,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 25),
                TextButton(
                  child: const Text('go to registration»'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.greenAccent,
                    foregroundColor: Colors.white,
                    elevation: 5.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageC()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PageC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('registration'),
        backgroundColor: AppColors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'First name',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Last name',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Patronymic',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(

decoration: InputDecoration(
                hintText: 'Phone number',
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              child: const Text('go back'),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 20),
                backgroundColor: Colors.lightBlue,
                foregroundColor: Colors.white,
                elevation: 5.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
