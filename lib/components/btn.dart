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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          40,
        ),
        color: const Color.fromARGB(
          212,
          135,
          81,
          77,
        ),
      ),
      padding: const EdgeInsets.all(
        20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
          ),
          const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
