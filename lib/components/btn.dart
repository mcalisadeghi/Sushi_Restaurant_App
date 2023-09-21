import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  final String text;
  const MyBtn({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(
          212,
          135,
          81,
          77,
        ),
      ),
      child: Text(
        text,
      ),
    );
  }
}
