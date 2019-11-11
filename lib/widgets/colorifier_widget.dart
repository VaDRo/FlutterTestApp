import 'package:flutter/material.dart';
import 'package:flutter_test_app/services/random_colors_provider.dart';
import 'package:flutter_test_app/widgets/text_widget.dart';

class ColorifierWidget extends StatefulWidget{

  final String title;

  const ColorifierWidget({Key key, @required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ColorifierWidgetState();
  }

}

class _ColorifierWidgetState extends State<ColorifierWidget> {

  Color _color = Colors.green;
  final RandomColorsProvider _colorsProvider = RandomColorsProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextWidget(widget.title, _changeColor),
          backgroundColor: _color,
      ),
      body:
        Material(
          color: _color,
          child: TextWidget('Hey there', _changeColor)
        )
    );
  }

  void _changeColor(){
    setState(() {
      _color = _colorsProvider.nextColor();
    });
  }
}