import 'package:flutter/material.dart';
import 'package:mooovie_app/Screens/savemoovy.dart';

class NoteMoovy6 extends StatefulWidget {
  const NoteMoovy6({Key? key}) : super(key: key);

  @override
  State<NoteMoovy6> createState() => _NoteMoovy6State();
}

class _NoteMoovy6State extends State<NoteMoovy6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 28),
          child: Text('CONTACT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black)),
        ),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          SizedBox(height: 40),
          Text('share your routes with\n        other people',style: TextStyle(fontSize: 22),),
          SizedBox(height: 10),
          Text('X days to next report',style: TextStyle(fontSize: 22),),
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
                  top: MediaQuery.of(context).size.height / 2.5,
                  left: 120,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 2.5,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(
                        'go',
                        style: TextStyle(fontSize: 28.0, color: Colors.black),
                      ),
                    ),
                  )),
            Positioned(
              top: 60,
                  left: 60,
                  child: Text('map with routes',style: TextStyle(fontSize: 18),)),
            Positioned(
                  top: 100,
                  left: 80,
                  child: Text('USER 1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),)),
            Positioned(
              top: 200,
              left: 49,
              child: Text('Ask this User to unveil itself!',style: TextStyle(fontSize: 22),),),

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => SaveMoovy()),);
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
