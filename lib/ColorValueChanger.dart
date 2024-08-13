import 'package:flutter/material.dart';

class ColorValueChanger extends StatefulWidget {
  final String property;
  final int value;
  final Function(String, int) onChanged;

  ColorValueChanger({
    required this.property,
    required this.value,
    required this.onChanged,
  });
  @override
  _ColorValueChangerState createState() => _ColorValueChangerState();
}

class _ColorValueChangerState extends State<ColorValueChanger> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.property),
        Slider(min: 0,max: 255,value: widget.value.toDouble(),label: widget.property,
        onChanged: (value) => {
          widget.onChanged(widget.property, value.round()),
        },
        )
      ],
    );
  }
}
