import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: KeyButton(),
      ),
    );
  }
}
