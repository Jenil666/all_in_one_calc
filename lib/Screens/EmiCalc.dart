import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utilities/variables.dart';

class Emicalc extends StatefulWidget {
  const Emicalc({Key? key}) : super(key: key);

  @override
  State<Emicalc> createState() => _EmicalcState();
}

class _EmicalcState extends State<Emicalc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("EmiCalculator"),
      ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  height: 10,
                  width: double.infinity,
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      "₹${ans.toInt()}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Expanded(
                  child: Container(
                    height: 615,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Text("Principle Amount",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff0f2027),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("$amount",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff0f2027),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Slider(
                              max: 2000000,
                              divisions: 18,
                              activeColor: Color(0xff0f2027),
                              inactiveColor: Color(0xff0f2027),
                              value: amount, onChanged: (value){
                            setState(() {
                              amount=value;
                            });
                          }),//Amount
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Text("Rate of intreast",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff0f2027),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("$abc",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff0f2027),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Slider(
                              max: (20),
                              divisions: 18,
                              activeColor: Color(0xff0f2027),
                              inactiveColor: Color(0xff0f2027),
                              value: abc, onChanged: (value){
                            setState(() {
                              abc=value;
                            });//rate of intreast
                          }),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Text("Loan Tenure",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff0f2027),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("$time",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff0f2027),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Slider(
                              max: (30),
                              divisions: 25,
                              activeColor: Color(0xff0f2027),
                              inactiveColor: Color(0xff0f2027),
                              value: time, onChanged: (value){
                            setState(() {
                              time=value;
                            });
                          }),// time period
                        ),
                        SizedBox(height: 30,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              tint=(time*amount*abc)/100;
                              tam=amount+tint;
                              ans=(tam)/(time*12).toInt();
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 120,
                            child: Center(
                              child: Text("Calculate",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Color(0xff0f2027),
                            ),

                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffEFEFEF),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )),
                  ),
                ),
              ),
            ],
          ),
    ));
  }
}


