import 'package:flutter/material.dart';
import 'package:mooovie_app/Screens/notemoovy6.dart';


class NoteMoovy5 extends StatefulWidget {
  const NoteMoovy5({Key? key}) : super(key: key);

  @override
  State<NoteMoovy5> createState() => _NoteMoovy5State();
}

class _NoteMoovy5State extends State<NoteMoovy5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 28),
          child: Text('NOTEMOOVY',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black)),
        ),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          SizedBox(height: 20),
          Text('share your routes with other people',style: TextStyle(fontSize: 22),),
          SizedBox(height: 5),
          Text('and receive their routes',style: TextStyle(fontSize: 22),),
          SizedBox(height: 10),
          Text('X days to next report',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          SizedBox(height: 10),
          Container(
            height: 50, width: 250, // Set the width as needed
        decoration: BoxDecoration(
          color: Colors.grey, // Background color// Optional: Rounded corners
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            textAlign: TextAlign.center, // Center align the text
            decoration: InputDecoration(
              border: InputBorder.none, // Remove the border
              hintText: 'Search Route', // Default text
            ),
          ),
        ),
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
                  child: Text('map with routes',style: TextStyle(fontSize: 18),)),
              Positioned(
                  top: 12,
                  left: MediaQuery.of(context).size.width/1.5,
                  child: Text('manage',style: TextStyle(fontSize: 20),)),
            ],
          ),
          Row(
            children: [
              Text('       User 1          Contact',style: TextStyle(fontSize: 22),),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text('       User 2          Contact',style: TextStyle(fontSize: 22),),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text('       User 3          Contact',style: TextStyle(fontSize: 22),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => NoteMoovy6()),);
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
