import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem(
      {Key? key,
      required this.name,
      required this.message,
      required this.image})
      : super(key: key);

  final String name;
  final String message;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(message, style: const TextStyle(fontSize: 16, color: Colors.black26),),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: 58,
          height: 58,
          child: Image(image: NetworkImage(image)),
        ),
      ),
    );
  }
}
