import 'package:flutter/material.dart';

class SaveMoovy extends StatefulWidget {
   SaveMoovy({Key? key}) : super(key: key);

  @override
  State<SaveMoovy> createState() => _SaveMoovyState();
}

class _SaveMoovyState extends State<SaveMoovy> {
  List<String> str = [
    "Show route number: (1/2/3/4/5) ",
    "Personalize route",
    "Frequency of report \n (15 d/1 m/2 m/3 m)",
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 28),
            child: Text('Manage Routes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black)),
          ),),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: str.map((strone){
                return Row(
                    children:[
                      Text("\u2022", style: TextStyle(fontSize: 30),), //bullet text
                      SizedBox(width: 10,), //space between bullet and text
                      Expanded(
                        child:Text(strone, style: TextStyle(fontSize: 20),), //text
                      )
                    ]
                );
              }).toList(),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //SizedBox(width: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
            ),
            child: Text(
              'BACK',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
            ),
            child: Text(
              'legal',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}