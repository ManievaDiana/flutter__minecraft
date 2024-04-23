import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creeper',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Creeper from Minecraft'),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            margin: EdgeInsets.all(30.0),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CreeperWidget(),
                  SizedBox(height: 80.0),
                  Center(
                    child: Text(
                      'This is a Creeper from Minecraft!',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CreeperWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 150.0,
      color: Colors.green,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 30.0,
            top: 30.0,
            child: Container(
              width: 20.0,
              height: 20.0,
              color: Colors.black,
            ),
          ),
          Positioned(
            left: 100.0,
            top: 30.0,
            child: Container(
              width: 20.0,
              height: 20.0,
              color: Colors.black,
            ),
          ),
          Positioned(
            left: 50.0,
            top: 80.0,
            child: Container(
              width: 50.0,
              height: 30.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
