import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorsProvider{

  final Random _random = Random();

  Color nextColor() {
    return Color.fromARGB(100, _random.nextInt(250), _random.nextInt(250), _random.nextInt(250));
  }

}