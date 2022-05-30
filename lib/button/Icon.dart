import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home,
                  size: 24.0,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home,
                  size: 24.0,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home,
                  size: 24.0,
                )),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
