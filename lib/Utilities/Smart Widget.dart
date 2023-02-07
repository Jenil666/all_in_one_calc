import 'package:all_in_one_calc/Utilities/variables.dart';
import 'package:flutter/material.dart';


Widget Con(String name, String Path, BuildContext conte)
{
  return Container(
    margin: EdgeInsets.all(10),
    height: 100,
     width: 100,
    alignment: Alignment.center,
    child: Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0,
      children: [
        Container(
          height: 141,
          child: Container(
             height: double.infinity,
             width: double.infinity,
             child: ClipRRect(
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(18)),
                 child: Image.asset(Path,height: 50,width: 50,fit: BoxFit.fill,))),
        ),
        Divider(
          height: 0,
          color: Colors.black,
          thickness: 2,
        ),
        Center(child: Text("$name",style: Theme.of(conte).textTheme.headline1,)),
        SizedBox(height: 8,),
      ],
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black,width: 1),
      borderRadius: BorderRadius.circular(20),
    ),
  );
}


