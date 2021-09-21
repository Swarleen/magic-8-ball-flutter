import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        //to make the base(background) layout of the aplication.
        home: Scaffold(
          //Color of the scaffold
          backgroundColor: Colors.blue[100],
          appBar: AppBar(
            title: Center(child: Text('ASK ME ANYTHING')),
            //Background color of the appbar(heading)
            backgroundColor: Colors.blue[900],
          ),
          body: MagicBallPage(),
        ),
      ),
    );

//Using Statefull widget to get a responsive action from the app.
class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ballNumber = 1;
  void randomball() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      //Wrapping image in center
      child: TextButton(
          //to get a call back from the opressed func when the user taps the image.
          onPressed: () {
            randomball();
            print('Magic Ball is pressed');
          },
          //Image path.
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}
