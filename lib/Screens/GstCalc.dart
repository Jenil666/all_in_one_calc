import 'package:flutter/material.dart';

class Gstcalc extends StatefulWidget {
  const Gstcalc({Key? key}) : super(key: key);

  @override
  State<Gstcalc> createState() => _GstcalcState();
}

class _GstcalcState extends State<Gstcalc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("GstCalculator"),
      ),
    ));
  }
}
