import 'package:all_in_one_calc/Utilities/Smart%20Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Utilities/variables.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        title: Text("Calculators"),
      ),
      body: GridView.builder(
        itemCount: homepageImages.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if(index == 0)
                {
                  Navigator.pushNamed(context, 'Simple');
                }
              else if(index == 1)
                {
                  Navigator.pushNamed(context, 'Bmi');
                }
              else if(index == 2)
              {
                Navigator.pushNamed(context, 'Emi');
              }
              else if(index == 3)
              {
                Navigator.pushNamed(context, 'Gst');
              }
            },
            child: Con(
                homepageImagesName[index], homepageImages[index], context),
          );
        },
      ),
    ));
  }
}
