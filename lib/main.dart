import 'dart:math';

import 'package:flutter/material.dart';

// void main() => runApp(
//       MaterialApp(
//         home: BallPage,
//       ),
//     );

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic 8 Ball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.blue,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);


  @override
  State<Ball> createState() => _BallState();
}

// class _BallState extends State<Ball> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: FlatButton(
//         onPressed: () {
//           print('I got clicked');
//         },
//         child: Image.asset('images/ball1.png'),
//       ),
//     );
//   }
// }

class _BallState extends State<Ball> {
  int balNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          choseImage();
        },
        child: Image(
          image: (AssetImage('images/ball$balNumber.png')),
        ),
      ),
    );
  }

  void choseImage() {
    setState(() {
      balNumber = (Random().nextInt(5))+1;
    });
  }
}

