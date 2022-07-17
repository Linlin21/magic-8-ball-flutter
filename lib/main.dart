import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
        title: 'QuestionBall',
      ),
    );

class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Ball(),
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}

class Ball extends StatefulWidget {


  @override
  _State createState() => _State();
}

class _State extends State {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ballNum = Random().nextInt(5) + 1;
            });
          },
          child: Image(
            image: AssetImage('images/ball$ballNum.png'),
          ),
        ),
      ),
    );
  }
}
