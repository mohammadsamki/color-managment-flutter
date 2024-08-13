import 'package:flutter/material.dart';
import 'ColorMixer.dart';

void main() => runApp(ColorMixerApp());

class ColorMixerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Mixer',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color Mixer'),
        ),
        body: ColorMixer(),
      ),
    );
  }
}
