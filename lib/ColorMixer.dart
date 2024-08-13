import 'package:flutter/material.dart';
import 'ColorCircle.dart';
import 'ColorValueChanger.dart';

class ColorMixer extends StatefulWidget {
  @override
  _ColorMixerState createState() => _ColorMixerState();
}

class _ColorMixerState extends State<ColorMixer> {
  int _red = 0;
  int _green = 0;
  int _blue = 0;

  void _setColr(String property, int value) {
    setState(() {
      if (property == 'Red') {
        _red = value;
      } else if (property == 'Green') {
        _green = value;
      } else if (property == 'Blue') {
        _blue = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          ColorCircle(
            color: Color.fromRGBO(_red, _green, _blue, 1),
            radius: 100,
          ),
          SizedBox(height: 20),
          ColorValueChanger(
            property: 'Red',
            value: _red,
            onChanged: _setColr,
          ),
          ColorValueChanger(
            property: 'Green',
            value: _green,
            onChanged: _setColr,
          ),
          ColorValueChanger(
            property: 'Blue',
            value: _blue,
            onChanged: _setColr,
          ),
        ],
      ),
    );
  }
}
