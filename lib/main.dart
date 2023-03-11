import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftButton = 1;
  int rightButton = 1;
  void pressed() {
    leftButton = Random().nextInt(6) + 1;
    rightButton = Random().nextInt(6) + 1;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  pressed();
                });
              },
              child: Image(
                image: AssetImage('android/images/dice$leftButton.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  pressed();
                });
                print('Right button is pressed ');
              },
              child: Image.asset('android/images/dice$rightButton.png'),
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var leftButton = Random().nextInt(6) + 1;
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Left button is pressed');
//               },
//               child: Image(
//                 image: AssetImage('android/images/dice$leftButton.png'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Right button is pressed ');
//               },
//               child: Image.asset('android/images/dice1.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
