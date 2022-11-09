
import 'package:flutter/material.dart';
import 'package:mini_project/pages/HomePage/component/CommingSoon/header_cs.dart';
import 'package:mini_project/pages/HomePage/component/CommingSoon/list_cs.dart';


class CommingSoon extends StatelessWidget {
  const CommingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: AspectRatio(
        aspectRatio: 16 / 12,
        child: Column(children: const [HeaderTrends(), ListTrends()]),
      ),
    );
  }
}
