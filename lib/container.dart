import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class buttonnext extends StatefulWidget {
  const buttonnext({Key? key}) : super(key: key);

  @override
  State<buttonnext> createState() => _buttonnextState();
}

class _buttonnextState extends State<buttonnext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sfsd"),
      ),
      body: Center(
        child: AnimatedButton(
          width: 200,
          backgroundColor: Colors.blue,
          borderColor: Colors.black12,
          text: 'SUBMIT',
          selectedTextColor: Colors.black,
          transitionType: TransitionType.CENTER_ROUNDER,
          textStyle: TextStyle(
            fontSize: 35,
            letterSpacing: 5,
            color: const Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
          onPress: () {},
        ),
      ),
    );
  }
}
