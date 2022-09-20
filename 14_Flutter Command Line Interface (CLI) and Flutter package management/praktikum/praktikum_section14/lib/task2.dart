
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Barcode Flutter"),  
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
         BarcodeWidget(
            barcode: Barcode.code128(),
            width: 300,
            data: "Alterra Academy",
            style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),
            errorBuilder: (context, error) => Center(child: Text(error)),
          ),
          BarcodeWidget(
            barcode: Barcode.code128(),
            width: 300,
            data: "Flutter Asik",
            style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),
            errorBuilder: (context, error) => Center(child: Text(error)),
          ),
          BarcodeWidget(
            barcode: Barcode.code128(),
            width: 300,
            data: "Muhammad Fivo Arnande",
            style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),
            errorBuilder: (context, error) => Center(child: Text(error)),
          ),
          ]
      ),
    ),
    );
    
  }
}

          