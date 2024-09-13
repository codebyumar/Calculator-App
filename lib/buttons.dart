import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.title,
      this.color = Colors.white,
      required this.onPress});

  final String title;
  final Color? color;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: 80,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: Center(
                child: Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
          ),
        ),
      ),
    );
  }
}
