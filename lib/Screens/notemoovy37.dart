import 'package:flutter/material.dart';

import 'notemoovy4.dart';

class NoteMoovy37 extends StatefulWidget {
  const NoteMoovy37({Key? key}) : super(key: key);

  @override
  State<NoteMoovy37> createState() => _NoteMoovy37State();
}

class _NoteMoovy37State extends State<NoteMoovy37> {
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
                child: Text('start',style: TextStyle(fontSize: 22)),
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
                child: Text('arrival',style: TextStyle(fontSize: 22)),
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
                child: Text('go',style: TextStyle(fontSize: 22)),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.grey,border: Border.all(color: Colors.black,width: 2)),
                height: MediaQuery.of(context).size.height/1.9,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(color: Colors.green,border: Border.all(color: Colors.black,width: 2)),
                  height: MediaQuery.of(context).size.height/2.4,
                ),
              ),
              Positioned(
                  top: 40,
                  left: MediaQuery.of(context).size.width/2.5,
                  child: Text('User Found',style: TextStyle(fontSize: 20),)),
              Positioned(
                  top: MediaQuery.of(context).size.height/10,
                  left: 60,
                  child: Text('User 1 route compatibility 70%',style: TextStyle(fontSize: 20),)),
              Positioned(
                  top: MediaQuery.of(context).size.height/6,
                  left: 60,
                  child: Text('User 2 route compatibility 65%',style: TextStyle(fontSize: 20),)),
              Positioned(
                  top: MediaQuery.of(context).size.height/4,
                  left: 60,
                  child: Text('User 3 route compatibility 50%',style: TextStyle(fontSize: 20),)),

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => NoteMoovy4()),);
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
