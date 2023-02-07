import 'package:flutter/material.dart';

class Simplecalc extends StatefulWidget {
  const Simplecalc({Key? key}) : super(key: key);

  @override
  State<Simplecalc> createState() => _SimplecalcState();
}

class _SimplecalcState extends State<Simplecalc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("SimpleCalculator"),
      ),
    ));
  }
}
