import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utilities/variables.dart';

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
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Original Price",
                            style: TextStyle(fontSize: 20),
                          ))),
                  Expanded(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            " $gstOriginalPrice Rs",
                            style: TextStyle(fontSize: 20),
                          ))),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "GSt",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Expanded(child: SizedBox()),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            threetxt = Colors.white;
                            three = Colors.deepOrange;


                          });
                        },
                        child: Container(
                          height: 40,
                          width: 70,
                          alignment: Alignment.center,
                          child: Text(
                            "3%",
                            style: TextStyle(fontSize: 15, color: threetxt),
                          ),
                          decoration: BoxDecoration(
                            color: three,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 70,
                        alignment: Alignment.center,
                        child: Text(
                          "5%",
                          style: TextStyle(fontSize: 15, color: fivetxt),
                        ),
                        decoration: BoxDecoration(
                          color: five,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 70,
                        alignment: Alignment.center,
                        child: Text(
                          "12%",
                          style: TextStyle(fontSize: 15, color: twelvetxt),
                        ),
                        decoration: BoxDecoration(
                          color: twelve,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 70,
                        alignment: Alignment.center,
                        child: Text(
                          "18%",
                          style: TextStyle(fontSize: 15, color: eighteentxt),
                        ),
                        decoration: BoxDecoration(
                          color: eighteen,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 70,
                        alignment: Alignment.center,
                        child: Text(
                          "28%",
                          style: TextStyle(fontSize: 15, color: twentyeighttxt),
                        ),
                        decoration: BoxDecoration(
                          color: twentyeight,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Final Price",
                            style: TextStyle(fontSize: 20),
                          ))),
                  Expanded(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            " $gstOriginalPrice Rs",
                            style: TextStyle(fontSize: 20),
                          ))),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CGST/SGST",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "25",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      if(gstOriginalPrice == "00")
                                      {
                                        setState(() {
                                          gstOriginalPrice = "7";

                                        });
                                      }
                                      else
                                      {
                                        setState(() {
                                          gstOriginalPrice = gstOriginalPrice + "7";

                                        });
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "7",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap:(){
                                      if(gstOriginalPrice == "00")
                                      {
                                        setState(() {
                                          gstOriginalPrice = "8";
                                        });
                                      }
                                      else
                                      {
                                        setState(() {
                                          gstOriginalPrice = gstOriginalPrice + "8";
                                        });
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "8",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      if(gstOriginalPrice == "00")
                                      {
                                        setState(() {
                                          gstOriginalPrice = "9";

                                        });
                                      }
                                      else
                                      {
                                        setState(() {
                                          gstOriginalPrice = gstOriginalPrice + "9";

                                        });
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "9",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      if(gstOriginalPrice == "00")
                                      {
                                        setState(() {
                                          gstOriginalPrice = "4";

                                        });
                                      }
                                      else
                                      {
                                        setState(() {
                                          gstOriginalPrice = gstOriginalPrice + "4";

                                        });
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "4",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      if(gstOriginalPrice == "00")
                                      {
                                        setState(() {
                                          gstOriginalPrice = "5";

                                        });
                                      }
                                      else
                                      {
                                        setState(() {
                                          gstOriginalPrice = gstOriginalPrice + "5";

                                        });
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "5",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      if(gstOriginalPrice == "00")
                                      {
                                        setState(() {
                                          gstOriginalPrice = "6";

                                        });
                                      }
                                      else
                                      {
                                        setState(() {
                                          gstOriginalPrice = gstOriginalPrice + "6";

                                        });
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "6",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      if(gstOriginalPrice == "00")
                                      {
                                        setState(() {
                                          gstOriginalPrice = "1";

                                        });
                                      }
                                      else
                                      {
                                        setState(() {
                                          gstOriginalPrice = gstOriginalPrice + "1";

                                        });
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "1",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      if(gstOriginalPrice == "00")
                                      {
                                        setState(() {
                                          gstOriginalPrice = "2";

                                        });
                                      }
                                      else
                                      {
                                        setState(() {
                                          gstOriginalPrice = gstOriginalPrice + "2";

                                        });
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "2",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      if(gstOriginalPrice == "00")
                                      {
                                        setState(() {
                                          gstOriginalPrice = "3";

                                        });
                                      }
                                      else
                                      {
                                        setState(() {
                                          gstOriginalPrice = gstOriginalPrice + "3";

                                        });
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "3",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      if(gstOriginalPrice == "00")
                                      {
                                        setState(() {
                                          gstOriginalPrice = "00";

                                        });
                                      }
                                      else
                                      {
                                        setState(() {
                                          gstOriginalPrice = gstOriginalPrice + "00";

                                        });
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "00",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      if(gstOriginalPrice == "00")
                                      {
                                        setState(() {
                                          gstOriginalPrice = "0";

                                        });
                                      }
                                      else
                                      {
                                        setState(() {
                                          gstOriginalPrice = gstOriginalPrice + "0";

                                        });
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "0",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      if(gstOriginalPrice == "00")
                                      {
                                        setState(() {
                                          gstOriginalPrice = ".";

                                        });
                                      }
                                      else
                                      {
                                        setState(() {
                                          gstOriginalPrice = gstOriginalPrice + ".";

                                        });
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        ".",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: (){
                                    setState(() {
                                      gstOriginalPrice = "00";
                                    });
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "AC",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange,
                                        borderRadius: BorderRadius.circular(50)),
                                  ),
                                )),
                            SizedBox(height: 10,),
                            Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: (){
                                    setState(() {
                                      gstOriginalPrice = gstOriginalPrice.substring(0, gstOriginalPrice.length - 1);
                                    });
                                  },
                                  child: Container(
                                      width: double.infinity,
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.dangerous,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                )),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
