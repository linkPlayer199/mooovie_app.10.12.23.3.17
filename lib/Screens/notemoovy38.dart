import 'package:flutter/material.dart';

import 'notemoovy37.dart';

class NoteMoovy38 extends StatefulWidget {
  const NoteMoovy38({Key? key}) : super(key: key);

  @override
  State<NoteMoovy38> createState() => _NoteMoovy38State();
}

class _NoteMoovy38State extends State<NoteMoovy38> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 28),
          child: Text('SEARCH ROUTE AND FIND COMPANIONS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
        ),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Text('me',style: TextStyle(fontSize: 22)),
              ),
            ],
          ),
          Container(
            height: 40, width: MediaQuery.of(context).size.width/1.3, // Set the width as needed
            decoration: BoxDecoration(
              color: Colors.grey, // Background color// Optional: Rounded corners
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                textAlign: TextAlign.center, // Center align the text
                decoration: InputDecoration(
                  border: InputBorder.none, // Remove the border
                  hintText: '', // Default text
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Text('user 1',style: TextStyle(fontSize: 22)),
              ),
            ],
          ),
          Container(
            height: 40, width: MediaQuery.of(context).size.width/1.3, // Set the width as needed
            decoration: BoxDecoration(
              color: Colors.grey, // Background color// Optional: Rounded corners
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                textAlign: TextAlign.center, // Center align the text
                decoration: InputDecoration(
                  border: InputBorder.none, // Remove the border
                  hintText: '', // Default text
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/2),
                child: Text('CHAT',style: TextStyle(fontSize: 22)),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(color: Colors.green,border: Border.all(color: Colors.black,width: 2)),
                  height: MediaQuery.of(context).size.height/2.4,
                ),
              ),
              Positioned(
                  top: 60,
                  left: 60,
                  child: Text('map with both routes',style: TextStyle(fontSize: 18),)),

            ],
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NoteMoovy37()),);
            },
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
