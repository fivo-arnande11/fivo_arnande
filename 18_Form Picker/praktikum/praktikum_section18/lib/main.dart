import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

DateTime _dateTime = DateTime.now();
final currentDate = DateTime.now();
Color currentColor = Colors.yellowAccent;
TextEditingController _DateController = TextEditingController();
TextEditingController _CaptionController = TextEditingController();
File? filePath;

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Post"),
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          buildFilePicker(),
          SizedBox(
            height: 10,
          ),
          buildDatePicker(context),
          SizedBox(
            height: 10,
          ),
          buildColorPicker(context),
          buildCaptionPicker(context),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 212, 103, 1)),
              onPressed: () {
                if (filePath != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PreviewPost(filePath: filePath!),
                      ));
                }
              },
              child: const Text("Submit")),
        ],
      ),
    );
  }

// Widget buildFilePicker() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       ElevatedButton(
//               onPressed: _pickFile,
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
//                 foregroundColor: MaterialStateProperty.all(Colors.white),
//               ),
//               child: const Text('Pilih File'),
//             ),
//     ],
//   );
// }

  Widget buildFilePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Cover",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          child: Center(
            child: Text(
              "Pilih File",
            ),
          ),
          onPressed: () {
            _pickFile();
          },
        )
      ],
    );
  }

  // void _pickFile() async {
  //   final result = await FilePicker.platform.pickFiles();
  //   if (result == null) return;
  //   final file = result.files.first;
  //   _openFile(file);

  //   setState(() {
  //     filePath = File(result.files.first.path.toString());
  //   });
  // }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    setState(() {
      final file = result.files.first;
      _openFile(file);
      filePath = File(file.path.toString());
    });
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }

  // void _openFile(PlatformFile file) async {
  //   OpenFile.open(file.path.toString());
  // }

  Widget buildDatePicker(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(
        children: [
          const Text(
            "Publish At",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
          controller: _DateController,
          decoration: InputDecoration(
              hintText: "dd/mm/yyy", border: OutlineInputBorder()),
          onTap: () async {
            final selectDate = await showDatePicker(
              context: context,
              initialDate: currentDate,
              firstDate: DateTime(1900),
              lastDate: DateTime(currentDate.year + 5),
            );
            setState(() {
              if (selectDate != null) {
                _dateTime = selectDate;
                _DateController.text =
                    DateFormat('dd-MM-yyyy').format(_dateTime);
              }
            });
          }),
    ]);
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Color Theme",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: currentColor,
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(currentColor)),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      title: Text(
                        'Pick Your Color',
                      ),
                      content: SingleChildScrollView(
                        child: ColorPicker(
                            pickerColor: currentColor,
                            onColorChanged: (color) {
                              setState(() {
                                currentColor = color;
                              });
                            }),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Save'),
                        )
                      ]);
                },
              );
            },
            child: Text("pick a color"),
          ),
        )
      ],
    );
  }

  Widget buildCaptionPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Caption', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: TextField(
            controller: _CaptionController,
            maxLines: 10,
            decoration: InputDecoration.collapsed(
              hintText: "",
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}

class PreviewPost extends StatelessWidget {
  const PreviewPost({super.key, required this.filePath});

  final File? filePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Preview Post"),
        centerTitle: true,
      ),
      body: ListView(padding: const EdgeInsets.all(10), children: [
        Container(child: Image.file(filePath!)),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Published "),
              Text("${_dateTime.toLocal()}".split(' ')[0]),
              const SizedBox(
                width: 120,
              ),
              const Text("Color : "),
              Container(
                height: 17,
                width: 17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: currentColor,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          _CaptionController.text,
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
