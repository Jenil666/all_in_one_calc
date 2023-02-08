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
          body: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey.shade300,
                child: Row(
                  children: [
                    Expanded(flex: 1,child: Container(alignment: Alignment.center,child: Text("Original Price",style: TextStyle(fontSize: 20),))),
                    Expanded(flex: 1,child: Container(alignment: Alignment.center,child: Text(" Rs",style: TextStyle(fontSize: 20),))),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
