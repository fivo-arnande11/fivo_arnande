import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/contact_bloc.dart';
import 'screens/contact_screen.dart';

void main() {
  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ContactBloc())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Management BLoc',
      home: ContactScreen(),
    );
  }
}
