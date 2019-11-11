import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{

  final String text;
  final Function onClick;

  TextWidget(this.text, this.onClick);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Center(
          child: Text(
              text
          )
      ),
      onTap: onClick,
    );
  }

}