import 'package:flutter/material.dart';

// The main is the starting point for all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, // evt uit productie halen
      home: Scaffold(
        backgroundColor: Colors.teal[800],
        appBar: AppBar(
          title: Text(
            'I am Poor',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.teal[900],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.teal[100],
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: Offset(0, 5),
                        spreadRadius: 5,
                        blurRadius: 15,
                      ),
                    ],
                    image: DecorationImage(
                        image: AssetImage('images/facepalm-man.png'),
                        fit: BoxFit.contain),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text('There is nothing to get here...',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      'Illustration by Icons 8 from Ouch!',
                    ))
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
