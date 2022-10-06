import 'package:flutter/material.dart';


class ContactisEmpty extends StatelessWidget {
  const ContactisEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.people),
          Text(
            "Your Contact is Empty",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
