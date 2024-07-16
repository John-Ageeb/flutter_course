import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,

        title: Text("Person",
            style: TextStyle(
                color: Colors.white, fontSize: 30) // to add text in Bar
            ),

        elevation: 10,
        leading: Icon(Icons.arrow_back),

        actions: [
          CircleAvatar(backgroundImage: AssetImage("assets/person.jpg")),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        centerTitle: true, // to center titel in App Bar
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 60, horizontal: 10)),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/person1.jpg'),
                ),
                Container(
                    child: Stack(
                  children: [
                    Text("This Is My First Message",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    Container(
                        decoration: new BoxDecoration(
                          border: Border.all(width: 10),
                        ),
                        color: Colors.white,
                        child: SizedBox(
                          height: 500.0,
                          width: 300,
                        ))
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    ),
  ));
}
