import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Favorite(),
    );
  }
}

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool isPressed = true;
  bool isDarkMode = true;
  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color.fromARGB(255, 255, 255, 255);
    Offset distance = isPressed ? const Offset(10, 10) : const Offset(28, 28);
    double blur = isPressed ? 5.0 : 30.0;
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: GestureDetector(
            onTap: () => setState(() => isPressed = !isPressed),
            child: AnimatedContainer(
              duration: const Duration(microseconds: 900000),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: backgroundColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: blur,
                    offset: -distance,
                    color: const Color.fromARGB(255, 180, 180, 180),
                    inset: isPressed,
                  ),
                  BoxShadow(
                    blurRadius: blur,
                    offset: distance,
                    color: const Color.fromARGB(255, 201, 201, 201),
                    inset: isPressed,
                  )
                ],
              ),
              child: const SizedBox(
                height: 200,
                width: 200,
              ),
            ),
          ),
        ));
  }
}
